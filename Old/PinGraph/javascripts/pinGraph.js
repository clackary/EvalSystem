

var ViewModel = (function(ko) {
	/**
	 * Constructor validator
	 * @param  {this} !(this instanceof    ViewModel) Make sure that a whole instance is utilized
	 * @return {ViewModel}        Functionally represents a Knockoutjs view model
	 */
	if(!(this instanceof ViewModel)) {
		return new ViewModel();
	}
	this.self = this;

	
	var likertMin = 0.00;
	var likertMax = 5.00;
	var leftScale = 0.00;
	var rightScale = 5.00;
	var tableSort = "";
	var pinGUIArray = [];
	self.pinDataArray = ko.observableArray([]);

	/**
	 * How fast the graph responds to user input
	 * @type {Number}
	 */
	const ZOOMSPEED = 0.03;

	/**
	 * Padding surrounding the graph
	 * @type {Number}
	 */
	const SCALE_BORDER_PAD = 0.00;

	/**
	 * How far the user is allowed to zoom in
	 * @type {Number}
	 */
	const MAX_ZOOM_IN = 0.50;

	/**
	 * Response delay for redraw
	 * @type {Number}
	 */
	const TIMEOUT_INTERVAL_MS = 25;

	/**
	 * Absolute scale limit on the left
	 * @type {Number}
	 */
	const LEFT_SCALE_LIMIT = 0.00;

	/**
	 * Absolute scale limit on the right
	 * @type {Number}
	 */
	const RIGHT_SCALE_LIMIT = 4.00;

	/**
	 * Default y-axix for pin image
	 * @type {Number}
	 */
	const _ITOP = -98;

	/**
	 * Default y-axis deviation for pin images
	 * @type {Number}
	 */
	const _TOP_DEVIATION = 8;

	/**
	 * Default zIndex for pin images
	 * @type {Number}
	 */
	const _DEF_ZINDX = 15;

	/**
	 * Kicks everything off right
	 * @return {void}
	 */


	self.startGraph = function() {
        var start = new Date().getTime();

// json stuff, does not work yet
 var text;
httpRequest = new XMLHttpRequest();
if (!httpRequest) {
		 alert('Giving up :( Cannot create an XMLHTTP instance');

	 }

httpRequest.onreadystatechange = function(){
if(httpRequest.ReadyState === XMLHttpRequest.DONE)
{
	if(httpRequest.status === 200)
	{
		
              text =	httpRequest.responseText
	}
	else {
		{
			alert('There was a problem with the request');
		}
	}
}
};
//httpRequest.open('GET', 'http://icarus.cs.weber.edu/~in79151/EvalSystem_SE3/jsonobj.php');
//httpRequest.send(null);
 
        // turn this JSON variable into a node js call
	
        var request= new XMLHttpRequest();
       
        //request.open('GET','http://icarus.cs.weber.edu/~js75361/testset.php',false);
		//request.open('GET','http://icarus.cs.weber.edu/~in79151/EvalSystem_SE3/testset.php',false);
		request.open('GET','http://icarus.cs.weber.edu/~nb06777/CS4450/v1/testset.php',false);
        request.send();
        if(request.status==200){

          text=request.responseText;
            alert(text);
        }else{
            alert("failed");
        }

        var jsonObject = JSON.parse(text);
        var leng = Object.keys(jsonObject).length;
        console.log("json objects " + Object.keys(jsonObject).length);
		for (var i = 0; i < leng; i++) {
			// randomly generated mock data
			var tempScore = jsonObject[i].Score.toFixed(2);
			

			var tempColor = (jsonObject[i].permission == 1) ? "red" : (jsonObject[i].permission == 2) ? "green" : "blue";
			var semester =jsonObject[i].semester;
            var year = jsonObject[i].year;
			var tempMarker =tempColor;
			var teachr = jsonObject[i].teacher;
            var tempCourse = jsonObject[i].course;
			var tempCRN = jsonObject[i].bannerCRN;
			var tempSemesterNumber=jsonObject[i].semesterNumber; 
			var tempTestID=jsonObject[i].TestId;
			//assign info to an object with mock data
			var tempObject = { marker: tempMarker, course: tempCourse, instructor: teachr, score: tempScore, year: year, term: semester,
			crn: tempCRN, semesterNumber: tempSemesterNumber, TestID: tempTestID };
			setSemester(tempObject);

			// TODO: question about decrementing the year
			setYear(tempObject);
			setColorZIndex(tempObject);

			var rawDataObj = JSON.stringify(tempObject);

			pinGUIArray.push(JSON.parse(rawDataObj));
	        pinDataArray.push(JSON.parse(rawDataObj));

		}




	
		sortPinGuiArr();
		sortScore();
		updateScaleData();

        var end = new Date().getTime();
        var time = end - start;
        console.log(time);
	}

	/**
	 * Public utility that sets the text value for the semester described in data for a PinObject
	 * @param {PinObject} pobj Data point that represents a pin in the graph and row in the table
	 */
	self.setSemester = function(pobj) {
		pobj.semester = (pobj.term == 1) ? "Summer" : ((pobj.term == 2) ? "Fall" : "Spring");
	}

	/**
	 * Public utility that sets the appropriate school year for the semester described in data for a PinObject
	 * @param {PinObject} pobj Data point that represents a pin in the graph and row in the table
	 */
	self.setYear = function(pobj) {
		pobj.year = (pobj.term < 3) ? --pobj.year : pobj.year;
	}

	/**
	 * Public utility that sets the appropriate _DEF_ZINDX in data for a PinObject
	 * @param {PinObject} pobj Data point that represents a pin in the graph and row in the table
	 */
	self.setColorZIndex = function (pobj) {
		var color = pobj.marker;
		pobj.zindex = (color === "red") ? 40 : ((color === "green") ? 25 : 15);
	}

	/**
	 * Private utility to get the nearest half of a value
	 * @param  {Number} value some value
	 * @return {Number}       return value of operation
	 */
	function nearestHalf(value) {
		value = Math.round(value * 2) / 2
		return value
	}

// call after sort to copy values of arr into observableArray
	function createDataArray(arr)
	{

			self.pinDataArray.removeAll();


		for(i =0; i <arr.length; i++)
		{
			var rawObj = JSON.stringify(arr[i]);
			//alert(rawObj);
			pinDataArray.push(JSON.parse(rawObj));

		}


	}


	/**
	 * Generates and returns a new DOM elmeent representing a PinObject
	 * @param  {PinObject} pinobject Representation of a tuple in the dataset
	 * @return {void}
	 */
	function getPinDomElement(pinobject) {
		var smay = (pinobject.year && pinobject.semester) ? (pinobject.semester + ' ' + pinobject.year) : '';
		var objleftpos = (((((pinobject.score - likertMin) * 225) / 900) * 100) * (4 / (likertMax - likertMin)));

		var newpin = document.createElement('img');
		newpin.setAttribute("style", "position: absolute; z-index: " + pinobject.zindex + "; left:" + objleftpos + "%; top: " + pinobject.top + "px;");
		newpin.setAttribute("title", pinobject.instructor + " - " + pinobject.course + " - " + smay + ": " + pinobject.score);
		newpin.setAttribute("src", "images/" + pinobject.marker + "PinSmall.png");

        newpin.addEventListener("click", function(event) {
        save(pinobject.crn, pinobject.semesterNumber, pinobject.year, pinobject.TestID);
        event.preventDefault();
        });

		return newpin;
	}





	/**
	 * Draws the low/high/median markers of the data set
	 * @param  {int} options.side      -1 for left, 0 for mid, and 1 for right
	 * @param  {Element} options.container The container to append the new DOM elements to
	 * @return {void}
	 */
	function leftRightCenterBoundary({ side, container }) {
		var top2 = -103;
		var galen = pinGUIArray.length;
		var sideStr, boundchkscore, sideout;
		var pinIndex;  // the index of the low, median, or high in the pinGuiArray
		switch(side.toLowerCase()) {
			case 'l':
				sideStr = "Low";
				boundchkscore = pinGUIArray[0].score;
				sideout = 2.5;
				break;
			case 'r':
				sideStr = "High";
				boundchkscore = pinGUIArray[galen - 1].score;
				sideout = 1.0;
				break;
			default:
				sideStr = "Median";
				sideout = 1.7;
				var indx = parseInt((galen / 2) - .5);
				boundchkscore = (pinGUIArray[parseInt((galen / 2) - .5)].score);
				if(galen % 2 != 0) {
					boundchkscore = ((parseFloat(pinGUIArray[(galen -1) / 2].score) + parseFloat(pinGUIArray[(((galen -1)  / 2) - 1)].score)) / 2);
				}
				break;
		}
		var imgpos = (((((boundchkscore - likertMin) * 225) / 900) * 100) * (4 / (likertMax - likertMin)));

		if (likertMin <= boundchkscore && boundchkscore <= likertMax) {
			var dpin = document.createElement('img');
			dpin.setAttribute('id', sideStr + 'Image');
			dpin.setAttribute('style', "position: absolute; left:" + imgpos + "%; top:" + (top2 + 70) + "px;");
			dpin.setAttribute('title', sideStr + ' Score: ' + parseFloat(boundchkscore).toFixed(2));
			dpin.setAttribute('src', 'images/PointPinSmall.png');
			container.appendChild(dpin);

			var dpinHint = document.createElement('div');
			dpinHint.setAttribute('id', sideStr.toLowerCase() + 'Label');
			dpinHint.setAttribute('style', "position: absolute; left:" + (imgpos - sideout) + "%; top:" + (top2 + 140) + "px; text-align:center;");
			dpinHint.appendChild(document.createTextNode(sideStr));
			container.appendChild(dpinHint);
		}
	}

	/**
	 * Set the current top and zindex properties of the supplied PinObj
	 * @param {PinObject} pin Data representation of a pin
	 */
	function setTopAndZindex({pin, index}) {
		pin.top = _ITOP;
		pin.zindex = setColorZIndex(pin);
		var prior = pinGUIArray[index - 1];
		if(prior) {
			if (prior.score == pin.score) {
				pin.top -= _TOP_DEVIATION;
				pin.zindex -= 1;
			}
		}
	}

	/**
	 * Generate the pin graph
	 * @return {Element}	New DOM element comprising the pin graph
	 */
	function generateGraph() {

		var newRelativeDiv = document.createElement('div');
		newRelativeDiv.setAttribute('id', 'graphData');
		newRelativeDiv.setAttribute('style', 'position: relative;');

		var newImgBBar = document.createElement('img');
		newImgBBar.setAttribute('style', 'padding-left: 7px; height: 55%; width: 100%');
		newImgBBar.setAttribute('id', 'graphimage2');
		newImgBBar.setAttribute('src', 'images/blackbar.png');

		var newCell = document.createElement('td');
		newCell.setAttribute('colspan', 9);
		newCell.setAttribute('width', '900px');


		newCell.appendChild(newImgBBar);
		newCell.appendChild(newRelativeDiv);

		var startIndex = 0;	//START THE NUMBER LINE

		for (var i = leftScale; i <= rightScale; i = i + .5) {
			if (likertMin <= i && i <= likertMax) {
				var newBlackTick = document.createElement('img');
				var leftPos = (((((i - likertMin) * 225) / 900) * 100) * (4 / (likertMax - likertMin)));

				newBlackTick.setAttribute('style', 'position: absolute; z-index: ' + _DEF_ZINDX + '; left:' + leftPos + '%; top: ' + (_ITOP + 40) + 'px;');
				newBlackTick.setAttribute('src', 'images/blacktick.png');
				newRelativeDiv.appendChild(newBlackTick);
			}
		}


		pinGUIArray.forEach(function(pin, index) {
			if (likertMin <= pin.score && pin.score <= likertMax) {
				setTopAndZindex({pin: pin, index: index});
				newRelativeDiv.appendChild(getPinDomElement(pin));
			}
		})


		

		for (var i = leftScale; i <= rightScale; i += .5) {
			if (likertMin <= i && i <= likertMax) {
				var halfPoint = document.createElement('div');
				halfPoint.setAttribute('style', "position: absolute; top:0px; left:" + (((((i - likertMin) * 225) / 900) * 100) * (4 / (likertMax - likertMin))) + "%;");
				var halfPntTxt = nearestHalf(startIndex + i).toFixed(1);
				halfPoint.appendChild(document.createTextNode(halfPntTxt));
				newRelativeDiv.appendChild(halfPoint);
			}
		}
		
		//CALCULATE AND POSITION LEFTMOST DATAPOINT ("LOW")
		leftRightCenterBoundary({side: "l", container: newRelativeDiv});

		//CALCULATE AND POSITION RIGHTMOST DATAPOINT ("HIGH")
		leftRightCenterBoundary({side: "r", container: newRelativeDiv});

		//CALCULATE AND POSITION MIDDLEMOST DATAPOINT ("MEDIAN")
		leftRightCenterBoundary({side: "m", container: newRelativeDiv});
		return newCell;
	}




	/**
	 * Scrolls Graph mainrow to the Left until end of Graph
	 * internal function
	 */
	self.leftClickAction = function() {
		// Have we hit the left end of the graph
		if (likertMin > LEFT_SCALE_LIMIT + SCALE_BORDER_PAD) {
			likertMin -= ZOOMSPEED;
			likertMax -= ZOOMSPEED;
			updateScaleData();
		}
	}

	var action_timeout;
	/**
	 * Button Mouse Down call to move Graph to the left
	 * Called by TestGraphZoom.html page
	 */
	self.leftClick = function() {
		leftClickAction();
		action_timeout = setInterval("leftClickAction()", TIMEOUT_INTERVAL_MS);
	}
	/**
	 * Scrolls Graph mainrow to the Right until end of Graph
	 * internal function
	 */
	self.rightClickAction = function() {
		// Have we hit the right end of the graph
		if (likertMax < RIGHT_SCALE_LIMIT + SCALE_BORDER_PAD) {
			likertMin += ZOOMSPEED;
			likertMax += ZOOMSPEED;
			updateScaleData();
		}
	}
	/**
	 * Button Mouse Down call to move Graph to the right
	 * Called by TestGraphZoom.html page
	 */
	self.rightClick = function() {
		rightClickAction();
		action_timeout = setInterval("rightClickAction()", TIMEOUT_INTERVAL_MS);
	}
	/**
	 * Zooms out mainrow until maximum size
	 * can be internal function
	 */
	self.zoomOutAction = function() {
		// Have we zommed out to the limits of the graph
		if (likertMax - likertMin <= RIGHT_SCALE_LIMIT - LEFT_SCALE_LIMIT) {
			// Once one end hits Scale limit we stop zooming out on that side
			likertMin = likertMin > LEFT_SCALE_LIMIT ? likertMin - ZOOMSPEED : likertMin;
			likertMax = likertMax < RIGHT_SCALE_LIMIT ? likertMax + ZOOMSPEED : likertMax;
			updateScaleData();
		}
	}
	/**
	 * Button Mouse Down call to zoom out Graph
	 * Called by TestGraphZoom.html page
	 */
	self.zoomOut = function() {
		zoomOutAction();
		action_timeout = setInterval("zoomOutAction()", TIMEOUT_INTERVAL_MS);
	}

	/**
	 * Zooms in mainrow until minimum size
	 * can be internal function
	 */
	self.zoomInAction = function() {
		// Difference between bounds will show zoom limit
		if (likertMax - likertMin > MAX_ZOOM_IN) {
			likertMin += ZOOMSPEED;
			likertMax -= ZOOMSPEED;
			updateScaleData();
		}
	}

	/**
	 * Button Mouse Down call to zoom in Graph
	 * Called by TestGraphZoom.html page
	 */
	self.zoomIn = function() {

        var start = new Date().getTime();

		zoomInAction();
		action_timeout = setInterval("zoomInAction()", TIMEOUT_INTERVAL_MS);

        var end = new Date().getTime();
        var time = end - start;
        console.log(time);
	}

	/**
	 * Called on Mouse Up to Clear action_timeout and stop action
	 * called by TestGraphZoom.html page
	 */
	self.endAction = function() {
		if (typeof (action_timeout) != "undefined") clearTimeout(action_timeout);
	}


	/**
	 * Reset the graph to baseline view
	 * @return {void}
	 */
	self.resetGraph = function() {
		likertMin = LEFT_SCALE_LIMIT;
		likertMax = RIGHT_SCALE_LIMIT;
		updateScaleData();
	}

	/**
	 * Does all the drawing of the graph
	 * @return {void}
	 */
	function updateScaleData() {
		var row = document.querySelector("#mainrow");
		[].slice.apply(row.children).every(function (item) {
			item.remove();
		});
		row.appendChild(generateGraph());
	}

	/**
	 * Sort by score on tabular data
	 * @return {void}
	 */

    // add the stable.js into the repositoy
    // change all thing.sort into stable(thing
	
	function sortPinGuiArr()
	{
		
		arr=  stable(pinGUIArray, function (a, b) {
           var retval;
			if (a.score < b.score) {
				retval = -1;
			} else if (a.score > b.score) {
				retval = 1;
			} else {
				retval = 0;
			}
			return retval;
		});
			createPinGuiArray(arr);
	}
	
	function createPinGuiArray(arr)
	{
		//self.pinGUIArray.removeAll();
		for(i =0; i <arr.length; i++)
		{
			/*
			var rawObj = JSON.stringify(arr[i]);
			//alert(rawObj);
			pinGUIArray.push(JSON.parse(rawObj));
			*/
			pinGUIArray[i] = arr[i];
		}
		
	}

	self.sortScore = function() {
      arr=  stable(pinDataArray, function (a, b) {
           var retval;
			if (a.score < b.score) {
				retval = -1;
			} else if (a.score > b.score) {
				retval = 1;
			} else {
				retval = 0;
			}
			return retval;
		});
			createDataArray(arr);
	}

	/**
	 * Sort by instructor on tabular data
	 * @return {void}
	 */
	self.sortInstructor = function() {


arr = stable(pinDataArray, function (a, b) {
			var retval;
			if (a.instructor < b.instructor) {
				retval = -1;
			} else if (a.instructor > b.instructor) {
				retval = 1;
			} else {
				retval = 0;
			}
			return retval;
		});

createDataArray(arr);

	}

	/**
	 * Sort by semester grouped by semester/year/score in order by year on tabular data
	 * @return {void}
	 */
	self.sortSemester = function() {
	arr =	 stable(pinDataArray,function (a, b) {
			var wka = parseInt("" + a.year + a.term);
			var wkb = parseInt("" + b.year + b.term);
			return (("" + wka + a.score) - ("" + wkb + b.score));
		});
		createDataArray(arr);
	}

	/**
	 * Sort by class name and if both are same then by score acsending
	 * @return {void}
	 */
	self.sortClassName = function() {
		arr = stable(pinDataArray ,function (a, b) {

            var retval;
			if (a.course < b.course) {
				retval = -1;
			} else if (a.course > b.course) {
				retval = 1;
			} else {
				retval = 0;
			}
			return retval;
		});
			createDataArray(arr);
	}


	/**
	 * Sort by color key on tabular data
	 * @return {void}
	 */
	self.sortKey = function() {
	arr = stable(pinDataArray, function (a, b) {
			var wka = a.zindex;
			var wkb = b.zindex;
			return (wkb - wka);
		});
			createDataArray(arr);
	}




     function save(crn, semester, year, TestID ){
		 alert(crn + " "+semester + " "+year + " "+TestID);
       // window.open("https://chitester1dev.weber.edu:6838/misc/weber/csevals/class_breakdown.html?CRN=21513&Semester=2&Year=2015&TestID=69210&displayDistribution=false");
		window.open("https://chitester1dev.weber.edu:6838/misc/weber/csevals/class_breakdown.html?CRN="+crn+"&Semester="+semester+"&Year="+year+"&TestID="+TestID+"&displayDistribution=false");
    }
	

	/**
	 * Exposed methods of the view model
	 */
	return {
		startGraph: startGraph,
		resetGraph: resetGraph,
		setSemester: setSemester,
		setYear: setYear,
		setColorZIndex: setColorZIndex,
		leftClick: leftClick,
		rightClick: rightClick,
		zoomIn: zoomIn,
		zoomOut: zoomOut,
		sortClassName: sortClassName,
		sortInstructor: sortInstructor,
		sortKey: sortKey,
		sortScore: sortScore,
		sortSemester: sortSemester,
		endAction: endAction,
		pinDataArray: pinDataArray
	}
});

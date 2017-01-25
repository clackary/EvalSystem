var leftBound =  0.00;
var rightBound = 4.00;

var leftScale = 0.00;
var rightScale = 4.00;
var graphObjectArray = new Array();
var tableSort = "";
var tableData = null;

function toKeyValPair(names, values)
{
	var result = {};
	for(var i = 0; i < names.length; i++)
	{
		result[names[i]] = values[i];
	}
	return result;
}
function sortColors(a,b)
{
    var colorValueA = getColorValue(a[1]);
    var colorValueB = getColorValue(b[1]);

    return colorValueA - colorValueB;

}


function getColorZIndex(color)
{
    if (color === "red") {
        return 40;
    }
    else if (color === "green") {
        return 25;
    }

    else {
        return 15;
    }
}

function startGraph()
{
	//$.ajax(
	//{
	//    //url: '/misc/weber/CSEvals/ranking.cfm',
	//    url: 'Ranking.cshtml?instructorID=887999808&semester=2&year=2014',
	//	type: "GET",
	//	dataType: "json",
	//	success:function(data)
	//	{
	//		var dataArray;
	//		var tableObject;

	//		$.each(data.DATA, function(i, array)
	//		{
	//			dataArray = toKeyValPair(data.COLUMNS, array);	//CONVERTS DATA TO A KEY VALUE PAIR FOR READABILITY
	//			tableObject = {marker:dataArray["MARKER"], course:dataArray["COURSE"], instructor:dataArray["INAME"], score:dataArray["INSTRUCTORAVERAGE"], semester:dataArray["SEMESTER"],year:dataArray["YEAR"]};
	//			graphObjectArray.push(tableObject);
	//		});

	//		graphObjectArray.sort(function (a, b) {
	//		    return a.score - b.score;
	//		})

	//		barGraph();

	//		tableData = graphObjectArray;

	//		graphObjectArray.sort(function (a, b) {
	//		    return b.score - a.score;
	//		});
	//		generateScoreTable(graphObjectArray);
	//	}
	//});

	//var graphObjectArray = new Array();//[graphObject, graphObject2, graphObject3, graphObject4, graphObject5, graphObject6, graphObject7, graphObject8, graphObject9];
	
	//generate random markers to use as mock data. 
	 for (var i = 0; i < 200; i++)
	 {
		 var tempScore = (Math.random() * 4);
		 var tempMarker;
		
		 var tempColor = (Math.random() * 50).toFixed(0);

		 var semester = Math.floor((Math.random() * 3)) + 1;
		 var year = Math.floor((Math.random() * 5)) + 2013;
		
		 if (tempColor == 0)
		 {
			 tempMarker = "red";
		 }
		 else if (tempColor == 1)
		 {
			 tempMarker = "green";
		 }
		 else if (tempColor >= 2)
		 {
			 tempMarker = "blue";
		 }
		

		 //assign info to an object with mock data
		 var tempObject = {marker:tempMarker, course:"CS 1400", instructor:"Brad Peterson", score:tempScore, year:year, semester: semester};
		 graphObjectArray.push(tempObject);
	 }
	
	graphObjectArray.sort(function (a, b) {
	    return a.score - b.score
	})
	tableData = graphObjectArray;
	barGraph();

	generateScoreTable(tableData);
	

}


function barGraph()
{

	//MAIN TABLE AND FIRST SELECTION OF DATA
	createResults();	
	
}
//Function that puts the graph results on the bar graph
function createResults()
{
    var html = "";
    var mainRow = document.getElementById('mainrow');
    //html += "<tr id = 'mainrow' align = 'center'><td colspan = '9' width = '900px' >";
    html += "<td colspan = '9' width = '900px' >";
    html += "<img src='images/blackbar.png' style='padding-left: 7px;' height = '55%' width='100%' id='graphimage'>";
	
	var startIndex = 0;	//START THE NUMBER LINE

	html += "<div id='graphData' style = 'position:relative;'>";

	var top = -99;
	var zindex = 15;
	
	for (var i = leftBound; i <= rightBound; i = i + .5)
	{
	    html += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((i - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + (top + 40) + "px;' src = 'images/blacktick.png'>";
	}
	
	html += "</div></td>";


	mainRow.innerHTML = html;
	html = "";

	var graphData = document.getElementById('graphData');

	for(i = 0; i < graphObjectArray.length; i++)
	{
	    var color = graphObjectArray[i].marker;

	    zindex = getColorZIndex(color);

		if (i != 0)
		{
		    


		    if (graphObjectArray[i - 1]["score"] == graphObjectArray[i]["score"])
			{
				top -= 8;
				zindex -= 1;
			}
			else
			{
				top = -99;
		        //zindex = 15;
				zindex = getColorZIndex(color);
			}
		}
		var semester = null;
		var year = null;

		if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null)
		{
		    var semesterNum = parseInt(graphObjectArray[i].semester);
		    year = parseInt(graphObjectArray[i].year);
		    switch (semesterNum)
		    {
		        case 1:
		            semester = "Summer";
		            year--;
		            break;
		        case 2:
		            semester = "Fall";
		            year--;
		            break;
		        case 3:
		            semester = "Spring";
		            break;
		    }
		    

		}


		if (graphObjectArray[i]["score"] >= leftBound && graphObjectArray[i]["score"] <= rightBound)
		{
			if (graphObjectArray[i]["marker"] == "red")
			{
			    if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null)
			    {
			        graphData.innerHTML += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + " - " + semester + " " + year + ": " + graphObjectArray[i]["score"] + "' src = 'images/RedPinSmall.png'>";
			    }
			    else
			    {

			        graphData.innerHTML += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + ": " + graphObjectArray[i]["score"] + "' src = 'images/RedPinSmall.png'>";
			    }
			    
			}
			else if (graphObjectArray[i]["marker"] == "green")
			{
			    if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null)
			    {
			        graphData.innerHTML += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + " - " + semester + " " + year + ": " + graphObjectArray[i]["score"] + "' src = 'images/GreenPinSmall.png'>";
			    }
			    else
			    {
			        graphData.innerHTML += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + ": " + graphObjectArray[i]["score"] + "' src = 'images/GreenPinSmall.png'>";
			    }
			    
			}
			else if (graphObjectArray[i]["marker"] == "blue")
			{
			    if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null)
			    {
			        graphData.innerHTML += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + " - " + semester + " " + year + ": " + graphObjectArray[i]["score"] + "' src = 'images/BluePinSmall.png'>";
			    }
			    else
			    {
			        graphData.innerHTML += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + ": " + graphObjectArray[i]["score"] + "' src = 'images/BluePinSmall.png'>";
			    }
			    
			}
		}
	}
	
	var top2 = -103;
	
	//CALCULATE AND POSITION LEFTMOST DATAPOINT ("LOW")
	if (graphObjectArray[0]["score"] >= leftBound && graphObjectArray[0]["score"] <= rightBound)
	{
	    graphData.innerHTML += "<img style='position: absolute;	left:" + (((((graphObjectArray[0]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top:" + (top2 + 70) + "px;'  title='Low Score' src = 'images/PointPinSmall.png'>";
	    graphData.innerHTML += "<div id = 'lowLabel' style='position: absolute; left:" + ((((((graphObjectArray[0]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) - (2.5)) + "%; top:" + (top2 + 140) + "px;'>Low</div>";
	}
		
	//CALCULATE AND POSITION RIGHTMOST DATAPOINT ("HIGH")
	if (graphObjectArray[graphObjectArray.length - 1]["score"] >= leftBound && graphObjectArray[graphObjectArray.length - 1]["score"] <= rightBound)
	{
	    graphData.innerHTML += "<img style='position: absolute;	left:" + (((((graphObjectArray[graphObjectArray.length - 1]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top:" + (top2 + 70) + "px;'  title='High Score' src = 'images/PointPinSmall.png'>";
	    graphData.innerHTML += "<div id = 'highLabel' style='position: absolute; left:" + (((((graphObjectArray[graphObjectArray.length - 1]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound)) + (1.0)) + "%; top:" + (top2 + 140) + "px;'>High</div>";
	}
		
	//CALCULATE AND POSITION MIDDLEMOST DATAPOINT ("MEDIAN")
	var median = 0.0;
	if (graphObjectArray.length %2 == 0)
	{
		median = (parseFloat(graphObjectArray[(graphObjectArray.length / 2)]["score"]) + parseFloat(graphObjectArray[((graphObjectArray.length / 2) - 1)]["score"])) / 2;
	}
	else
	{
		median = graphObjectArray[parseInt((graphObjectArray.length / 2) - .5)]["score"];
	}
	
	if (median >= leftBound && median <= rightBound)
	{
	    graphData.innerHTML += "<img id = 'medImage' style='position: absolute;	left:" + (((((median - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top:" + (top2 + 70) + "px;'  title='Median' src = 'images/PointPinSmall.png'>";
		if ((document.getElementById('medImage').offsetLeft - document.getElementById('lowLabel').offsetLeft < 40) || (document.getElementById('highLabel').offsetLeft - document.getElementById('medImage').offsetLeft < 40))
		    graphData.innerHTML += "<div style='position: absolute; left:" + (((((median * 225) / 900) * 100) * (4 / (rightBound - leftBound))) - 1.7) + "%; top:" + (top2 + 160) + "px; text-align:center'>Median</div>";
		else
		    graphData.innerHTML += "<div style='position: absolute; left:" + (((((median * 225) / 900) * 100) * (4 / (rightBound - leftBound))) - 1.7) + "%; top:" + (top2 + 140) + "px; text-align:center'>Median</div>";
	}
	
	//GENERATE NUMBER LINE
	for (var i = leftBound; i <= rightBound ; i = i + .5)
	{
	    graphData.innerHTML += "<div style = 'position: absolute; top:0px; left:" + (((((i - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%;'>" + (startIndex + i).toFixed(1) + "</div>";
	}

	//graphData.innerHTML = html;
    //return html;

}




function leftClickAction()
{
	if (leftBound  >= leftScale - .01)
	{
		leftBound = leftBound - .01
		rightBound = rightBound - .01
		var row = document.getElementById("mainrow");
		row.innerHTML = regenerate();
	}
}

function leftClick()
{
	leftClickAction();
	action_timeout = setInterval("leftClickAction()",25);
}

function endLeftClick()
{
	if (typeof(action_timeout) != "undefined") clearTimeout(action_timeout);
}




function rightClickAction()
{
	if (rightBound <= rightScale + .01)
	{
		leftBound = leftBound + .01;
		rightBound = rightBound + .01;
		var row = document.getElementById("mainrow");
		row.innerHTML = regenerate();
	}
}

function rightClick()
{
	rightClickAction();
	action_timeout = setInterval("rightClickAction()",25);
}

function endRightClick()
{
	if (typeof(action_timeout) != "undefined") clearTimeout(action_timeout);
}






function zoomOutAction()
{
	if (rightBound - leftBound < rightScale - leftScale)
	{
		leftBound = leftBound - .01;
		rightBound = rightBound + .01;

		var row = document.getElementById("mainrow");
		row.innerHTML = regenerate();
	}
}

function zoomOut()
{
	zoomOutAction();
	action_timeout = setInterval("zoomOutAction()",25);
}

function endZoomOut()
{
	if (typeof(action_timeout) != "undefined") clearTimeout(action_timeout);
}



function zoomInAction()
{
	if (rightBound - leftBound > 0.05)
	{
		leftBound = leftBound + .01;
		rightBound = rightBound - .01;
		var row = document.getElementById("mainrow");
		row.innerHTML = regenerate();
	}
}

function zoomIn()
{
	zoomInAction();
	action_timeout = setInterval("zoomInAction()",25);
}

function endZoomIn()
{
	if (typeof(action_timeout) != "undefined") clearTimeout(action_timeout);
}


function regenerate()
{
	
	var newChart = "";
	
	newChart += ""
	
	newChart += "<tr align = 'center'><td colspan = '9' width = '900px' >";

	newChart += "<img src='images/blackbar.png' style='padding-left: 7px;' height = '55%' width='100%' id='graphimage2'>";
	
	//var tablePos = document.getElementById('graphimage2');
	
	var startIndex = 0;	//START THE NUMBER LINE

	newChart += "<div style = 'position:relative;'>";
		var top = -99;
		var zindex = 15;
	
	
	for (var i = leftScale; i <= rightScale ; i = i + .5)
	{
		if (i >= leftBound && i <= rightBound)
			newChart += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((i - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + (top + 40) + "px;' src = 'images/blacktick.png'>";
	}
	
	for(i = 0; i < graphObjectArray.length; i++)
	{
	    var color = graphObjectArray[i].marker;
	    zindex = getColorZIndex(color);

		if (i != 0)
		{
			if (graphObjectArray[i - 1]["score"] == graphObjectArray[i]["score"])
			{
				top -= 8;
				zindex -= 1;
			}
			else
			{
				top = -99;
				zindex = 15;
				zindex = getColorZIndex(color);
			}
		}
		var semester = null;
		var year = null;

		if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null) {
		    var semesterNum = parseInt(graphObjectArray[i].semester);
		    year = parseInt(graphObjectArray[i].year);
		    switch (semesterNum) {
		        case 1:
		            semester = "Summer";
		            year--;
		            break;
		        case 2:
		            semester = "Fall";
		            year--;
		            break;
		        case 3:
		            semester = "Spring";
		            break;
		    }


		}

		if (graphObjectArray[i]["score"] >= leftBound && graphObjectArray[i]["score"] <= rightBound)
		{
			if (graphObjectArray[i]["marker"] == "red")
			{
			    if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null)
			    {
			        newChart += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + " - " + semester + " " + year + ": " + graphObjectArray[i]["score"] + "' src = 'images/RedPinSmall.png'>";
			    }
			    else {
			        newChart += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + ": " + graphObjectArray[i]["score"] + "' src = 'images/RedPinSmall.png'>";
			    }
				
			}
			else if (graphObjectArray[i]["marker"] == "green")
			{
			    if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null)
			    {
			        newChart += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + " - " + semester + " " + year + ": " + graphObjectArray[i]["score"] + "' src = 'images/GreenPinSmall.png'>";
			    }
			    else
			    {
			        newChart += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + ": " + graphObjectArray[i]["score"] + "' src = 'images/GreenPinSmall.png'>";
			    }
				
			}
			else if (graphObjectArray[i]["marker"] == "blue")
			{
			    if (graphObjectArray[i].semester != null && graphObjectArray[i].year != null)
			    {
			        newChart += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + " - " + semester + " " + year + ": " + graphObjectArray[i]["score"] + "' src = 'images/BluePinSmall.png'>";
			    }
			    else {
			        newChart += "<img style='position: absolute; z-index: " + zindex + "; left:" + (((((graphObjectArray[i]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top: " + top + "px;'  title='" + graphObjectArray[i]["instructor"] + " - " + graphObjectArray[i]["course"] + ": " + graphObjectArray[i]["score"] + "' src = 'images/BluePinSmall.png'>";
			    }
				
			}
		}
	}

	
	var top2 = -103;
	
	//CALCULATE AND POSITION LEFTMOST DATAPOINT ("LOW")
	if (graphObjectArray[0]["score"] >= leftBound && graphObjectArray[0]["score"] <= rightBound)
	{
		newChart+="<img style='position: absolute;	left:" + (((((graphObjectArray[0]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top:" + (top2 + 70) + "px;'  title='Low Score' src = 'images/PointPinSmall.png'>";
		newChart+="<div id = 'lowLabel' style='position: absolute; left:" + ((((((graphObjectArray[0]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) - (2.5)) +  "%; top:" + (top2 + 140) + "px;'>Low</div>";
	}
		
	//CALCULATE AND POSITION RIGHTMOST DATAPOINT ("HIGH")
	if (graphObjectArray[graphObjectArray.length - 1]["score"] >= leftBound && graphObjectArray[graphObjectArray.length - 1]["score"] <= rightBound)
	{
		newChart+="<img style='position: absolute;	left:"  + (((((graphObjectArray[graphObjectArray.length - 1]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound)))+ "%; top:" + (top2 + 70) + "px;'  title='High Score' src = 'images/PointPinSmall.png'>";
		newChart+="<div id = 'highLabel' style='position: absolute; left:"  + (((((graphObjectArray[graphObjectArray.length - 1]["score"] - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound)) + (1.0)) + "%; top:" + (top2 + 140) + "px;'>High</div>";
	}
		
	//CALCULATE AND POSITION MIDDLEMOST DATAPOINT ("MEDIAN")
	var median = 0.0;
	if (graphObjectArray.length %2 == 0)
	{
		median = (parseFloat(graphObjectArray[(graphObjectArray.length / 2)]["score"]) + parseFloat(graphObjectArray[((graphObjectArray.length / 2) - 1)]["score"])) / 2;
	}
	else
	{
		median = graphObjectArray[parseInt((graphObjectArray.length / 2) - .5)]["score"];
	}
	
	
	if (median >= leftBound && median <= rightBound)
	{
		newChart+="<img id = 'medImage' style='position: absolute;	left:" + (((((median - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%; top:" + (top2 + 70) + "px;'  title='Median' src = 'images/PointPinSmall.png'>";
		newChart+="<div style='position: absolute; left:" + ((((((median - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) - 1.7) + "%; top:" + (top2 + 140) + "px; text-align:center'>Median</div>";
	}
	

	
	for (var i = leftScale; i <= rightScale ; i = i + .5)
	{
		if (i >= leftBound && i <= rightBound)
			newChart+="<div style = 'position: absolute; top:0px; left:" + (((((i - leftBound) * 225) / 900) * 100) * (4 / (rightBound - leftBound))) + "%;'>" + nearestHalf(startIndex + i).toFixed(1) + "</div>";
	}
	
	
	return newChart;
	
}	


function nearestHalf(value)
{
	value = Math.round(value * 2) / 2
	return value
}


function generateScoreTable(scoreArray)
{
    var table = document.getElementById('tabularScores');
    table.innerHTML = "";
    

    if(!table)
    {
        return;
    }

    
    var html = "";

    html += "<tr>";
    html += "<th class='sortableHeader' onclick='setTimeout(0,sortKey());'>Key</th>"
    html += "<th class='sortableHeader' onclick='setTimeout(0,sortClassName());'>Class</th>";
    html += "<th class='sortableHeader' onclick='setTimeout(0,sortInstructor());'>Instructor</th>";
    html += "<th class='sortableHeader' onclick='setTimeout(0,sortSemester());'>Semester</th>";
    html += "<th class='sortableHeader' onclick='setTimeout(0,sortScore());'>Score</th>";
    html += "</tr>";

    for (var i = 0; i < scoreArray.length; i++)
    {
        var semester = "";
        var semesterNum = parseInt(scoreArray[i].semester);
        year = parseInt(scoreArray[i].year);
        switch (semesterNum) {
            case 1:
                semester = "Summer";
                year--;
                break;
            case 2:
                semester = "Fall";
                year--;
                break;
            case 3:
                semester = "Spring";
                break;
        }


        html += "<tr>";
        html += "<td style=background-color:" + scoreArray[i].marker +"></td>";
        html += "<td>" + scoreArray[i].course + "</td>";
        html += "<td>" + scoreArray[i].instructor + "</td>";
        html += "<td>" + semester + " " + year + "</td>";
        html += "<td>" + scoreArray[i].score.toFixed(2) + "</td>";
    }



    table.innerHTML += html;
        
}

function sortScore()
{
    tableData.sort(function (a, b) {

        return b.score - a.score;
    });

    generateScoreTable(tableData);
}

function sortInstructor()
{
    tableData.sort(function (a, b) {

        if (a.instructor < b.instructor)
            return -1;
        if (a.instructor > b.instructor)
            return 1;
        else
            return 0;
    });

    generateScoreTable(tableData);
}

function sortSemester()
{

    tableData.sort(function (a, b) {

       
        return parseInt("" + a.year + a.semester) - parseInt("" + b.year + b.semester);
    });

    generateScoreTable(tableData);

}
function sortClassName()
{
    tableData.sort(function (a, b) {

        if (a.course < b.course)
            return -1;
        if (a.course > b.course)
            return 1;
        else
            return 0;
        
    });
    generateScoreTable(tableData);
}

function sortKey()
{
    tableData.sort(function (a, b) {
        //we'll use getcolorzindex to help determine order when sorting by key
        return getColorZIndex(b.marker) - getColorZIndex(a.marker);
    });
    generateScoreTable(tableData);
}

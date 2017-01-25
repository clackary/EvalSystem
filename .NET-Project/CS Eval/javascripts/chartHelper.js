// i use LoadChart to create the chart -- all of this would be implemented in another file.
// i am using a temp variable, actually this would be passed in from the generating of the report.



 function makeArray() {
 var objArray = [];
 var semesterNames = ["", "Spring:", "Summer:", "Fall:"];

 for (var i = 0; i < 100 ; i++) {
 var randomNum = Math.floor((Math.random() * 3) + 1);
 var CRNNum = Math.floor((Math.random() * 90000) + 10000);
 var fancyObj = {
 crn: CRNNum,
 score: Math.random() * 4,
 stddev: (Math.random() * 1.5) + .5,
 totalRespondents: Math.floor((Math.random() * 20) + 1),
 semesterNum: randomNum,
 semesterName: semesterNames[randomNum],
 className: "CS" + CRNNum,
 year: Math.floor((Math.random() * 3) + 2013)
 }
 objArray.push(fancyObj);
 }
 return objArray;
 }

window.onload = function(){

var tempData = makeArray();
loadChart(tempData);

};



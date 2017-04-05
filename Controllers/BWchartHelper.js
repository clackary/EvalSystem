// i use LoadChart to create the chart -- all of this would be implemented in another file.
// i am using a temp variable, actually this would be passed in from the generating of the report.
  
var text= '[{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3.4, "permission": 3,"crn": 79965},{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3.4, "permission": 3,"crn": 79965},{"teacher": "Ana Olsen","course": "cs1400","year": "2012","semester": "fall","score": 1.7,"permission": 1,"crn": 51925},{"teacher": "Penelope Valencia",    "course": "cs1400","year": "2012","semester": "summer","score": 0.8,"permission": 1,"crn": 56671},{    "teacher": "Lola Schmidt","course": "cs3610","year": "2009","semester": "summer","score": 2.9,"permission": 3,"crn": 17569},{"teacher": "Minerva Sosa","course": "cs1400","year": "2009","semester": "spring","score": 2.6,"permission": 2,"crn": 12423},{"teacher": "Ana Olsen","course": "cs3610","year": "2012","semester": "fall","score": 1.7,"permission": 1,"crn": 51925},{"teacher": "Ana Olsen","course": "cs3610","year": "2012","semester": "fall","score": 1.7,"permission": 2,"crn": 51925},{"teacher": "Cheri Rosa","course": "cs3610","year": "2012","semester": "fall","score": 1.7,"permission": 1,"crn": 51925},{"teacher": "Cheri Rosa","course": "cs2550","year": "2012","semester": "fall","score": 1.7,"permission": 2,"crn": 51925},{"teacher": "Lidia Washington","course": "cs1400","year": "2009","semester": "fall","score": 3.7,"permission": 3,"crn": 57513},{"teacher": "Kline Shaffer","course": "cs3610","year": "2009","semester": "spring","score": 3.1,"permission": 2,"crn": 13907}, {"teacher": "Lila Ferrell","course": "cs1400","year": "2011","semester": "spring","score": 0.2,  "permission": 2,"crn": 99208},{"teacher": "Stein Moody","course": "cs1400","year": "2011","semester": "fall", "score": 1.9,"permission": 1,"crn": 67119},{"teacher": "Elsie Morris","course": "cs3610","year": "2012","semester": "fall","score": 0.7,"permission": 1,"crn": 66773},{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3.4, "permission": 3,"crn": 79965},{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3.4, "permission": 3,"crn": 79965},{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3.5, "permission": 3,"crn": 79965},{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3.3, "permission": 3,"crn": 79965},{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3, "permission": 3,"crn": 79965},{"teacher": "Cheri Rosa","course": "cs1400","year": "2012","semester": "fall","score": 3.7, "permission": 3,"crn": 79965}]';

 function makeArray() {
var jsonObject = JSON.parse(text);
var leng = Object.keys(jsonObject).length;
console.log("json objects " + Object.keys(jsonObject).length);
     var objArray = [];

     for (var i = 0; i < leng; i++) {
        var fancyObj = {
        crn: jsonObject[i].crn,
        score: jsonObject[i].score,
        stddev: (Math.random() * 1.5) + .5,
        totalRespondents: Math.floor((Math.random() * 10) + 1),
        semesterNum: jsonObject[i].semester,
        semesterName: jsonObject[i].semester,
        className: jsonObject[i].course,
        year: jsonObject[i].year,
        instructor: jsonObject[i].teacher
        }
        objArray.push(fancyObj);
    }
	
//	console.log(objArray);
     return objArray;
 }


 /*
 var semesterNames = ["", "Spring:", "Summer:", "Fall:"];

 for (var i = 0; i < 100 ; i++) {
 var randomNum = Math.floor((Math.random() * 3) + 1);
 var CRNNum = Math.floor((Math.random() * 90000) + 10000);
 var fancyObj = {
 crn: CRNNum,
 score: Math.random() * 4,
 stddev: (Math.random() * 1.5) + .5,
 totalRespondents: Math.floor((Math.random() * 10) + 1),
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
windowOnload();
};

*/

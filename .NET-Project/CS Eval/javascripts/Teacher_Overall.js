function semName(semester) {
/*Examples are:
	***2014 academic year***
	2014 semester 3 is Spring 2014
	2014 semester 2 is Fall 2013
	2014 semester 1 is Summer 2013
	***2013 academic year***
	2013 semester 3 is Spring 2013
	2013 semester 2 is Fall 2012
	2013 semester 1 is Summer 2012*/
	switch (semester) {
		case 1:
			return "Summer";
			break;
		case 2:
			return "Fall";
			break;
		case 3:
			return "Spring";
			break;
		default:
			return "Winter";
			year = 1980;
			break;
	}
};





function toKeyValPair(names, values)
{
	var result = {};
	for(var i = 0; i < names.length; i++)
	{
		result[names[i]] = values[i];
	}
	return result;
}




function getCorrectYear(year, semester) {
	switch (semester) {
		case 1:
		case 2:
			return (year - 1);
			break;
		case 3:
			return year;
			break;
		default:
			return 99;
			break;
	}
};










/*["CLASS","BANNERCRN","SECTION","SEMESTER","BLOCK","YEAR","SUBJECTCODE","COURSENUMBER","InstructID","FIRSTNAME","LASTNAME","EMAIL","SCORE","RESPONSES","STUDENTS","STANDARDDEVIATION","TESTID","TESTNAME"]*/
/*
Instructor IDs
Brad Peterson 		887969243
Luke Fernandez 		880519503
Allison Sunderland  550035577
Yong Zhang			550093614
Ted Cowan			880329877
Delroy Brinkerhoff	880644109
Drew Weidman		886655283
Richard Fry			887999808
*/

var InstructID;
var year;
var dept='CS';

window.onload = (function() 
{
	var select = document.getElementById("firstDropDown");

	// HOW TO HANDLE THE ? SPLIT ON FIRST LOAD?
	var href = window.location.href;
	var instructor = -1;
	
	if(href.indexOf('?') != -1){
	
		var query = href.split('?');
			var query2 = query[1].split('&');
			
			var params = query2[0].split('=');
			var params2 = query2[1].split('=');
		
			
			
			
			//This is supposed to be a year value
		
		/*if(params[1] != null){*/
		
			instructor = params[1];
			InstructID = instructor;
			yearsValue = params2[1];
			year = yearsValue;
		
			//alert(InstructID + " " + year);
		
		//}
		
	}
    //jQuery.get('https://chitester1dev.weber.edu:6838/misc/weber/CSEvals/ProfessorsWithAnswers.cfm?dept='+dept, function(data) 
    jQuery.get('./ProfessorsWithAnswers.cshtml?dept=' + dept, function (data)
	{	//option.innerHTML = 'Select and Instructor';
		//select.appendChild(option);
		for (var i = 0; i < data.DATA.length; i++) 
		{
  			var option = document.createElement("option");
  			var at = data.DATA[i];
  			var teacherid = at[0];
  			var name = at[1] + " " + at[2];
  			option.value = teacherid;
  			option.innerHTML = name;
  			select.appendChild(option);  
  			
  			if(instructor != -1)
				{
  				if (option.value == instructor) 
					{
  					$('#firstDropDown option').prop('selected', true);	
  				
						
					}
				}
		}
		/*InstructID = document.getElementById("firstDropDown").value;*/
		//document.getElementById("firstDropDown").onChange = function yearSelect();
	}).success(function() 
	{
		yearSelect("noSelect");
	});
	getData();
});






function getSemesterNum(semesterName)
{
    switch(semesterName)
    {
        case "Fall":
            return 2;
            break;
        case "Summer":
            return 1;
            break;
        case "Spring":
            return 3;
            break;
        default:
            return 1;
    }
}




	function yearSelect(flag) {
	//InstructID comes up undefined

	var yearsValue = -1;
	
	var href = window.location.href;
	sel = document.getElementById("secondDropDown");
	
	sel.options.length = 0;
	
	if (flag == "flag")
	{
		
		InstructID = document.getElementById("firstDropDown").value;
		//alert(InstructID);
	}
	//http://www.teacheroverall.html/?instructId=847654&year=2013
	/*if(href.indexOf('&') != -1)
	{
			var query = href.split('?');
			var query2 = query[1].split('&');
			var params = query2[1].split('=');
			//This is supposed to be a year value
			if(params[1] != null)
			{
				yearsValue = params[1];
				year = yearsValue;
			}*/
			/*RESULT OF YearsTaught
			{"COLUMNS":["INSTRUCTORID","SEMESTER","YEAR"],
			"DATA":
			[
			["887969243","1","2011"],
			["887969243","1","2012"],
			["887969243","1","2013"],
			["887969243","2","2011"],
			["887969243","2","2013"],
			["887969243","3","2012"],
			["887969243","3","2013"]
			]
			}
			
		}	*/
		//}
	    //jQuery.get('https://chitester1dev.weber.edu:6838/misc/weber/CSEvals/YearsTaught.cfm?InstructorID='+InstructID, function(YEARS)
	    jQuery.get('./YearsTaught.cshtml?InstructorID=' + InstructID, function (YEARS)
			{
					
					var yearCheck = new Array();
					var semesterCheck = new Array();
					var yearCount;
					
					for (var n = 0; n < YEARS.DATA.length; n++) 
					{
						//var option = document.createElement("option");
						
						var at = YEARS.DATA[n]
						var semester = at[1];
						var yearOption = at[2];
						
						yearCount = 0;
						
						for (var i = 0; i < yearCheck.length; i++)
						{
							if (yearCheck[i] == getCorrectYear(yearOption,at[1]) && semesterCheck[i] == at[1])
							{
								yearCount++;
							}
						}
						
						if (yearCount == 0)
						{
							yearCheck.push(getCorrectYear(yearOption,at[1]));
							semesterCheck.push(at[1]);
						}
						
					}

					var combined = new Array();
					for (var i = 0; i < yearCheck.length; i++)
					{
						combined.push(yearCheck[i] + " " + semName(semesterCheck[i]));
					}
					
					combined.sort();
					
					//yearCheck.sort(function(a,b){return a-b});
					
					for (var n = 0; n < yearCheck.length; n++)
					{
						var option = document.createElement("option");

						//option.value = getCorrectYear(yearCheck[n],semesterCheck[n]);

					    //option.value = combined[n].substring(0, 4);
						var semesterArray = combined[n].split(/\s+/);
						var semesterNum = semesterArray[1];
						option.value = semesterArray[0] + " " + getSemesterNum(semesterNum);

					    //alert(combined[n].substring(0,4));
						//option.innerHTML = getCorrectYear(yearCheck[n],semesterCheck[n]) + " " + semName(semesterCheck[n]);	//getCorrectYear(yearOption, semester);
						option.innerHTML = combined[n];
						
						sel.appendChild(option);
								
						if (year != -1)
						{
							if (option.value == year) 
							{
								if(!$.contains($('#secondDropDown'),option))
								$('#secondDropDown option').prop('selected', true);	
							}
						}
					}
					
					alert (testInc);
					//year = document.getElementById("secondDropDown").value;	
			})/*.success(function() 
			{
				getData();
			});*/
};





function submitFilters(){
	value = $('#secondDropDown').val();
	value = value.split(/\s+/);
	window.location.href = "Teacher_Overall.html?instruct=" + $('#firstDropDown').val()+'&year='+value[0]+'&semester='+value[1];
}





/*
LEFT TO DO:	
Ticks 2-5 png put into place
Year drop working correctly
Link class crn to class breakdown class.
*/




function getData() {
	//parse url and get data here
	$("#Anchor").before('<p class="loadinggif">Calculating...</p></br><img class="loadinggif" src=".\\images\\ajax-loader.gif" "/>');
    //$.get('https://chitester1dev.weber.edu:6838/misc/weber/CSEvals/ClassesTaught.cfm?InstructorID='+InstructID+'&year='+year, function(data) {
	$.get('./ClassesTaught.cshtml?InstructorID=' + InstructID + '&year=' + year, function (data) {
	

		/*variables for semester and year for the header to the table*/
		var semesterName;
		/*var year;*/
		var currSemester;
		var currYear;		
		var output = "";
		//document.write(document.getElementById("firstDropDown").text);
					
		$.each(data.DATA, function(i,courseInfo) {
		var classesKVP = toKeyValPair(data.COLUMNS, courseInfo);

			if (!currSemester && !currYear) {
				currSemester = classesKVP["SEMESTER"];
				currYear = classesKVP["YEAR"];
				output+=('<table class="teacher_overall_table">');
				/*output+=('<caption><p class="table_header">'+semName(Number(classesKVP["SEMESTER"]))+' - '+getCorrectYear(Number(classesKVP["YEAR"]),Number(classesKVP["SEMESTER"]))+'</p></caption>');*/
				output+=('<caption><p class="table_header">'+semName(classesKVP["SEMESTER"])+' - '+getCorrectYear(classesKVP["YEAR"],classesKVP["SEMESTER"])+'</p></caption>');
				output+=('<tr><th class="inst_name">Instructor Name</th><th class="class_crn">Class - CRN</th><th class="resp"># Resp.</th><th class="std_dev">STD Dev.</th><th class="score">Score</th><th class="test_name">Test Name</th><th></th></tr>');
			} else if (currYear != classesKVP["YEAR"] || currSemester != classesKVP["SEMESTER"]) {
				output+=('</table><br />');
				currSemester = classesKVP["SEMESTER"];
				currYear = classesKVP["YEAR"];				
				output+=('<table class="teacher_overall_table">');
				/*output+=('<caption><p class="table_header">'+semName(Number(classesKVP["SEMESTER"]))+' - '+getCorrectYear(Number(classesKVP["YEAR"]),Number(classesKVP["SEMESTER"]))+'</p></caption>');*/
				output+=('<caption><p class="table_header">'+semName(classesKVP["SEMESTER"])+' - '+getCorrectYear(classesKVP["YEAR"],classesKVP["SEMESTER"])+'</p></caption>');
				output+=('<tr><th class="inst_name">Instructor Name</th><th class="class_crn">Class - CRN</th><th class="resp"># Resp.</th><th class="std_dev">STD Dev.</th><th class="score">Score</th><th class="test_name">Test Name</th><th></th></tr>');
			}
				
			var stdDev = Number(classesKVP["STANDARDDEVIATION"]);
			var scoreEvalCollegeCoastOnline = Number(classesKVP["SCORE"]) + 1;
			var score = Number(classesKVP["SCORE"]);
			var scoreBar = score/4*300; 
			
			/*if row is an even row*/
			if (i % 2 == 0) {
				/*If test is 'Eval Dept of CS', background is blue*/																							/*crn 1 semester 3 year 5 testid 16*/   /*Class_Breakdown.html?CRN='+classesKVP[1]+'&Semester='+classesKVP["SEMESTER"]+'&Year='+classesKVP[5]+'&TestID='+classesKVP[16]+'*/
				if (classesKVP["TESTNAME"] == "Eval Dept of CS") {
					output+=('<tr class="table_row_even"><td><div class="ellipsis">'+$('#firstDropDown option:selected').text()+'</div></td><td><a href="Class_Breakdown.html?CRN='+classesKVP["BANNERCRN"]+'&Semester='+classesKVP["SEMESTER"]+'&Year='+classesKVP["YEAR"]+'">'+classesKVP["SUBJECTCODE"]+classesKVP["COURSENUMBER"]+' - '+classesKVP["BANNERCRN"]+'</a></td><td>'+classesKVP["STUDENTS"]+'</td><td>'+stdDev.toFixed(1)+'</td><td>'+score.toFixed(2)+'</td><td class="test_name"><div class="ellipsis">'+classesKVP["TESTNAME"]+'</div></td><td class="fill_pixels_score"><div class="outer-box ticksZeroToFour"><div class = "container ticksZeroToFour" style="height:20px;width:'+scoreBar+'px;background-color:#1D8BCD;float:left;"></div><div class="sm_container ticksZeroToFour"></div></div></td></tr>');
				/*If test is 'Eval College Coast Online', background is purple*/
				} else if (classesKVP["TESTNAME"] == "Eval College Coast Online") {
					output+=('<tr class="table_row_even"><td><div class="ellipsis">'+$('#firstDropDown option:selected').text()+'</div></td><td><a href="Class_Breakdown.html?CRN='+classesKVP["BANNERCRN"]+'&Semester='+classesKVP["SEMESTER"]+'&Year='+classesKVP["YEAR"]+'">'+classesKVP["SUBJECTCODE"]+classesKVP["COURSENUMBER"]+' - '+classesKVP["BANNERCRN"]+'</a></td><td>'+classesKVP["STUDENTS"]+'</td><td>'+stdDev.toFixed(1)+'</td><td>'+scoreEvalCollegeCoastOnline.toFixed(2)+'</td><td class="test_name"><div class="ellipsis">'+classesKVP["TESTNAME"]+'</div></td><td class="fill_pixels_score"><div class="outer-box ticksTwoToFive"><div class = "container ticksTwoToFive" style="height:20px;width:'+scoreBar+'px;background-color:#A020F0;float:left;"></div><div class="sm_container ticksTwoToFive"></div></div></td></tr>');
				/*every other test, no background score bar or ticks image*/
				} else {
					output+=('<tr class="table_row_even"><td><div class="ellipsis">'+$('#firstDropDown option:selected').text()+'</div></td><td><a href="Class_Breakdown.html?CRN='+classesKVP["BANNERCRN"]+'&Semester='+classesKVP["SEMESTER"]+'&Year='+classesKVP["YEAR"]+'">'+classesKVP["SUBJECTCODE"]+classesKVP["COURSENUMBER"]+' - '+classesKVP["BANNERCRN"]+'</a></td><td>'+classesKVP["STUDENTS"]+'</td><td>'+stdDev.toFixed(1)+'</td><td>'+score.toFixed(2)+'</td><td class="test_name"><div class="ellipsis">'+classesKVP["TESTNAME"]+'</div></td><td class="fill_pixels_score"><div class="noTicks"></div></td></tr>');
				}
			/*if row is an odd row*/
			} else {
				/*If test is 'Eval Dept of CS', background is blue*/
				if (classesKVP["TESTNAME"] == "Eval Dept of CS") {
					output+=('<tr class="table_row_odd"><td><div class="ellipsis">'+$('#firstDropDown option:selected').text()+'</div></td><td><a href="Class_Breakdown.html?CRN='+classesKVP["BANNERCRN"]+'&Semester='+classesKVP["SEMESTER"]+'&Year='+classesKVP["YEAR"]+'">'+classesKVP["SUBJECTCODE"]+classesKVP["COURSENUMBER"]+' - '+classesKVP["BANNERCRN"]+'</a></td><td>'+classesKVP["STUDENTS"]+'</td><td>'+stdDev.toFixed(1)+'</td><td>'+score.toFixed(2)+'</td><td class="test_name"><div class="ellipsis">'+classesKVP["TESTNAME"]+'</div></td><td class="fill_pixels_score"><div class="outer-box ticksZeroToFour"><div class = "container ticksZeroToFour" style="height:20px;width:'+scoreBar+'px;background-color:#1D8BCD;float:left;"></div><div class="sm_container ticksZeroToFour"></div></div></td></tr>');
				/*If test is 'Eval College Coast Online', background is purple*/
				} else if (classesKVP["TESTNAME"] == "Eval College Coast Online") {
					output+=('<tr class="table_row_odd"><td><div class="ellipsis">'+$('#firstDropDown option:selected').text()+'</div></td><td><a href="Class_Breakdown.html?CRN='+classesKVP["BANNERCRN"]+'&Semester='+classesKVP["SEMESTER"]+'&Year='+classesKVP["YEAR"]+'">'+classesKVP["SUBJECTCODE"]+classesKVP["COURSENUMBER"]+' - '+classesKVP["BANNERCRN"]+'</a></td><td>'+classesKVP["STUDENTS"]+'</td><td>'+stdDev.toFixed(1)+'</td><td>'+scoreEvalCollegeCoastOnline.toFixed(2)+'</td><td class="test_name"><div class="ellipsis">'+classesKVP["TESTNAME"]+'</div></td><td class="fill_pixels_score"><div class="outer-box ticksTwoToFive"><div class = "container ticksTwoToFive" style="height:20px;width:'+scoreBar+'px;background-color:#A020F0;float:left;"></div><div class="sm_container ticksTwoToFive"></div></div></td></tr>');
				/*every other test, no background score bar or ticks image*/
				} else {
					output+=('<tr class="table_row_odd"><td><div class="ellipsis">'+$('#firstDropDown option:selected').text()+'</div></td><td><a href="Class_Breakdown.html?CRN='+classesKVP["BANNERCRN"]+'&Semester='+classesKVP["SEMESTER"]+'&Year='+classesKVP["YEAR"]+'">'+classesKVP["SUBJECTCODE"]+classesKVP["COURSENUMBER"]+' - '+classesKVP["BANNERCRN"]+'</a></td><td>'+classesKVP["STUDENTS"]+'</td><td>'+stdDev.toFixed(1)+'</td><td>'+score.toFixed(2)+'</td><td class="test_name"><div class="ellipsis">'+classesKVP["TESTNAME"]+'</div></td><td class="fill_pixels_score"><div class="noTicks"></div></td></tr>');
				}
			}
		});
			
		output+=('</table>');
		$("#Anchor").append(output);
		$(".loadinggif").remove();
	
	})
}
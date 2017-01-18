
//This is where we color the table as soon as the page loads in the teacher dashboard
 $(document).ready(function() {
   	var table = document.getElementById('course_list');  
			var rows = table.getElementsByTagName('tr');   

			for(i = 0; i < rows.length; i++)
			{
			    if(i % 2 !=0)
			    {
			        rows[i].style.backgroundColor='#BDBDBD';
			    }
			}
});


//This is where we color the table at will for the other tables
function color()
{ 
    var table = document.getElementById('course_list');  
	var rows = table.getElementsByTagName('tr');   

	for(i = 0; i < rows.length; i++)
	{
	    if(i % 2 !=0)
	    {
	        rows[i].style.backgroundColor='#BDBDBD';
	    }
	}
}

	$(document).ready(function() {
      var placeholder = $("#overall_over_time");

       var data = [ ["CS2550", 3.9], ["CS1400", 3.4], ["CS1410", 3.2], ["CS2420", 3.1], ["CS3750", 3.1]];

		$.plot(placeholder, [ data ], {
			series: {
				color: '#0040FF',
				bars: {
					show: true,
					barWidth: 0.6,
					align: "center"
				}
			},
			xaxis: {
				mode: "categories",
				tickLength: 0
			}
		});
	});


//This is where we run the report
function get_report()
{
	var sem = document.getElementById('semester').value;
	var placeholder = $("#overall_over_time");

	if(sem =="Fall 2012")
	{
		var score = document.getElementById("overall_score").innerHTML = "3.3";
	    var div = document.getElementById("course_list").innerHTML = "<tr>" 
	            +"<th>Course</th>"+"<th>Semester</th>"+"<th>Score</th>"+"</tr>"
				+"<tr><td>CS2550</td><td>"+sem+"</td><td><a href='#'>3.3<a></td></tr>" 
				+"<tr><td>CS2420</td><td>"+sem+"</td><td><a href='#'>3.1<a></td></tr>" 
				+"<tr><td>CS1400</td><td>"+sem+"</td><td><a href='#'>3.4<a></td></tr>";
				var data = [ ["CS2550", 3.3], ["CS2420", 3.1], ["CS1400", 3.4] ];

				$.plot(placeholder, [ data ], {
					series: {
						color: '#0040FF',
						bars: {
							show: true,
							barWidth: 0.6,
							align: "center"
						}
					},
					xaxis: {
						mode: "categories",
						tickLength: 0
					}
				});
	}
	else if(sem =="Summer 2012")
	{
		var score = document.getElementById("overall_score").innerHTML = "3.7";
	    var div = document.getElementById("course_list").innerHTML = "<tr>" 
	            + "<th>Course</th>"+"<th>Semester</th>"+"<th>Score</th>"+"</tr>"
				+"<tr><td>CS2420</td><td>"+sem+"</td><td><a href='#'>3.9<a></td></tr>" 
				+"<tr><td>CS2550</td><td>"+sem+"</td><td><a href='#'>3.9<a></td></tr>" 
				+"<tr><td>CS3750</td><td>"+sem+"</td><td><a href='#'>3.4<a></td></tr>";
				var data = [ ["CS2420", 3.9], ["CS2550", 3.9], ["CS3750", 3.4] ];

				$.plot(placeholder, [ data ], {
					series: {
						color: '#0040FF',
						bars: {
							show: true,
							barWidth: 0.6,
							align: "center"
						}
					},
					xaxis: {
						mode: "categories",
						tickLength: 0
					}
				});
	}
	else if(sem =="Spring 2013")
	{
		var score = document.getElementById("overall_score").innerHTML = "3.3";
	    var div = document.getElementById("course_list").innerHTML = "<tr>" 
	            + "<th>Course</th>"+"<th>Semester</th>"+"<th>Score</th>"+"</tr>"
				+"<tr><td>CS2550</td><td>"+sem+"</td><td><a href='class-breakdown.html'>3.9<a></td></tr>"
				+"<tr><td>CS1400</td><td>"+sem+"</td><td><a href='#'>3.4<a></td></tr>"
				+"<tr><td>CS1410</td><td>"+sem+"</td><td><a href='#'>3.2<a></td></tr>"
				+"<tr><td>CS2420</td><td>"+sem+"</td><td><a href='#'>3.1<a></td></tr>"
				+"<tr><td>CS3750</td><td>"+sem+"</td><td><a href='#'>3.1<a></td></tr>";
				var data = [ ["CS2550", 3.9], ["CS1400", 3.4], ["CS1410", 3.2], ["CS2420", 3.1], ["CS3750", 3.1]];

				$.plot(placeholder, [ data ], {
					series: {
						color: '#0040FF',
						bars: {
							show: true,
							barWidth: 0.6,
							align: "center"
						}
					},
					xaxis: {
						mode: "categories",
						tickLength: 0
					}
				});
	}

	color();
}	
		



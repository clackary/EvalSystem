function barGraph()
{
	document.write("Hello Jeanne");
	
	var tableCell = '<table><tr><td style="width:500px; height:250px; background-color:blue;text-align:center; vertical-align:middle">' +
	'<img src = "images/blackbar-graph.png">' +
	'<img class = "pinHead" src = "images/RedPin.png">' + 
	'</td></tr></table>';
    
	document.write(tableCell);
	
	//<img src="http://www.100marks.in/wp-content/uploads/2012/07/Sachin-Tendulkar-Pictures-Latest-2.jpg"  style="max-height:100%; max-width:100%"/>   



}

window.onload=(function() 
{

	barGraph();

		
});
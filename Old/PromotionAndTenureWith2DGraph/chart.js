var extData = null;
var extSem = null;
var extSemName = null;
var label = "";
/* change this labelgroupby value to change the groupings of the 2D graph. For instance changing labelgroupby to 
    equal "teacher" will change the grouping to be by year and by teacher*/
var labelgroupby = "crn";


function labelContainer(pinobject, grouptype) {
    switch (grouptype) {
    case "className":
        return pinobject.year + " - " + pinobject.className;

    case "teacher":
        return pinobject.year + " - " + pinobject.instructor;

    case "semester":
        return pinobject.year + ' - ' + pinobject.semesterName
        
    case "score":            
        return pinobject.year + ' - ' + pinobject.score;
            
    default:
        return pinobject.year + " - " + pinobject.semesterName;
    }
};

google.load("visualization", "1.1", {
    packages: ["corechart"]
});
//Setup and Calculate the info based on the input data.
function loadChart(chartData) {
    //parse the Chart Data into Semesters
    var semesterLabels = [];

    semesterLabels = getLabels(chartData);

    semesterLabels.forEach(function (semester) {
        var semesterEvals = [];
        chartData.forEach(function (eval) {

            if (semester == labelContainer(eval, labelgroupby)) {
                console.log(eval.score);
                semesterEvals.push(eval);
            }
        });
        console.log("Semester Evan Num: " + semesterEvals.length);
        // if this semesters evals is greater than 10 then do a whiskar graph, if the num of evals is less than ten then do a dot graph.
        extSemName = semester;
        extSem = semester.replace(/[-:\s]/g, '');
        var jSem = $("#chart_div").append('<div id=' + extSem + ' class="singleSemester">&nbsp;</div>');

        if (semesterEvals.length > 10) {
            console.log("chose Whiskar chart");
            extData = CompileChartData(chartData);
            google.setOnLoadCallback(drawChart());
        } else {
            console.log("chose scatter chart");
            extData = chartData;
            google.setOnLoadCallback(drawScatter());
        }
    });
}

function drawScatter() {
    var evallength = 10;
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Semester Name');

    extData.forEach(function (eval) {
        if (extSemName == labelContainer(eval, labelgroupby)) {
            data.addColumn('number', eval.className)
            data.addColumn({
                type: 'string',
                label: 'Probe Details',
                role: 'tooltip',
                'p': {
                    'html': true
                }
            })
        }
    });
    var semester = [];
    extData.forEach(function (eval) {
        if (extSemName == labelContainer(eval, labelgroupby)) {
            if (typeof eval.score == 'string') {
                eval.score = parseFloat(eval.score);
            }
            semester.push(eval.score);
            var tooltipText =
                'CRN: ' + eval.crn + '<br>' +
                'Class Name: ' + eval.className + '<br>' +
                'Score: ' + eval.score.toFixed(2) + '<br>' +
                'Std. Dev: ' + Number(eval.stddev).toFixed(2) + '<br>' +
                'Num Respondents: ' + eval.totalRespondents;
            semester.push(tooltipText)
        }
    });


    semester.unshift(extSemName);
    data.addRow(semester);

    var options = {
        legend: 'none',
        orientation: 'vertical',
        colors: ['blue'],
        vAxis: {
            gridlines: {
                count: 3
            }
        },
        chartArea: {
            left: 100,
        },
        tooltip: {
            isHtml: true
        }
    };

    var chart = new google.visualization.ScatterChart(document.getElementById(extSem));
    chart.draw(data, options);

    google.visualization.events.addListener(chart, 'select', selectHandler);

    function selectHandler() {
        var selection = chart.getSelection();
        var message = '';
        for (var i = 0; i < selection.length; i++) {
            var item = selection[i];
            if (item.row != null && item.column != null) {
                var str = data.getFormattedValue(item.row, item.column);
                message += '{row:' + item.row + ',column:' + item.column + '} = ' + str + '\n';
            } else if (item.row != null) {
                var str = data.getFormattedValue(item.row, 0);
                message += '{row:' + item.row + ', column:none}; value (col 0) = ' + str + '\n';
            } else if (item.column != null) {
                var str = data.getFormattedValue(0, item.column);
                message += '{row:none, column:' + item.column + '}; value (row 0) = ' + str + '\n';
            }
        }
        if (message == '') {
            message = 'nothing';
        }
        alert('You selected ' + message);
    }


    /*document.getElementById('format-select').onchange = function() {
      options['vAxis']['format'] = this.value;
      chart.draw(data, options);
    };*/
};

//Render the chart with the data for more than 10 items.
function drawChart() {
    var data = google.visualization.arrayToDataTable(extData, true);
    var options = {
        legend: 'none',
        orientation: 'vertical',
        chartArea: {
            left: 100,
        },
        tooltip: {
            isHtml: true,
            trigger: 'selection'
        },
    };
    var chart = new google.visualization.CandlestickChart(document.getElementById(extSem));
    chart.draw(data, options);
}

//Compile Chart Data when there is more than 10 items
function CompileChartData(objArray) {

    var labelArray = getLabels(objArray);

    //var dataArray = new Array(labelArray.length);
    // take a single label and get the list of data associated with it.
    // when you do then you will return an array with min/max and quartiles.

    function returnQuartiles(needle, array) {
        var label;
        var scoreList = [];
        array.forEach(function (eval) {
            label = eval.year + " - " + eval.semesterName;
            if (label == needle) {
                if (typeof eval.score == 'string') {
                    eval.score = parseFloat(eval.score);
                }
                scoreList.push(eval.score);
            }
        });
        scoreList.sort();
        var q1Arr = (scoreList.length % 2 == 0) ? scoreList.slice(0, (scoreList.length / 2)) : scoreList.slice(0, Math.floor(scoreList.length / 2));
        var q2Arr = scoreList;
        var q3Arr = (scoreList.length % 2 == 0) ? scoreList.slice((scoreList.length / 2), scoreList.length) : scoreList.slice(Math.ceil(scoreList.length / 2), scoreList.length);
        var min = scoreList[0];
        var Q1 = medianX(q1Arr);
        var Q3 = medianX(q3Arr);
        var max = scoreList[scoreList.length - 1];

        function medianX(medianArr) {
            count = medianArr.length;
            median = (count % 2 == 0) ? (medianArr[(medianArr.length / 2) - 1] + medianArr[(medianArr.length / 2)]) / 2 : medianArr[Math.floor(medianArr.length / 2)];
            return median;
        }
        var chartData = [needle, min, Q1, Q3, max];
        return chartData;
    }


    // For each label, take and compile min max and quartiles;
    var chartData = [];

    var semesterData = returnQuartiles(extSemName, objArray);
    chartData.push(semesterData);

    return chartData;
}
//
function generateTable(objArray) {
    var TocHtml = "";
    var labelArray = getLabels(objArray);
    var colWidth = 80;
    labelArray.forEach(function (label) {
        TocHtml = TocHtml + "<table style=\"z-index: 100000;\" class='tocTable'><tbody>";
        TocHtml = TocHtml + "<tr><td colspan='4'>" + label + "</td></tr>";
        TocHtml = TocHtml + "<tr class='thead'><td width='" + colWidth + "'>CRN</td><td width='" + colWidth + "'>Score</td><td width='" + colWidth + "'>Standard Deviation</td><td width='" + colWidth + "'>Num Responses</td></tr>";
        objArray.forEach(function (eval) {
            console.log(eval);
            if (label == labelContainer(eval, labelgroupby)) {
                TocHtml = TocHtml + '<tr><td><a href="#class' + eval.crn + '-' + eval.semesterNum + '-' + eval.yearOriginal + '">' + eval.crn + "</a></td><td>" + eval.score + "</td><td>" + eval.stddev + "</td><td>" + eval.totalRespondents + "</td></tr>";
            }
        });
        TocHtml = TocHtml + "</tbody></table>"
    });
    console.log(TocHtml);
    $("#table").append(TocHtml);
}

function getLabels(objArray) {
    var labelArray = [];
    //determine the number of Labels
    objArray.forEach(function (eval) {

        // add in the semester number so that we can sort and add * so we can split out that num later
        label = labelContainer(eval, labelgroupby);

        /* label=labelContainer(eval.year, eval.semesterName);           
         label=labelContainer(eval.year, eval.semesterName);*/
        
        if (!(labelArray.indexOf(label) > -1)) {
            labelArray.push(label);
        }
        //end foreach loop
    });
    //Sort labels into order.
    labelArray.sort();
    // Rename Labels to semester name instead of number

    return labelArray;
}
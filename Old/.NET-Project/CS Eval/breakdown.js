


function getPixelLength(score) {
    return score * 100;
}

function normPixelLength(currentLengths) {
    var variance = 0;

    var max = 0;
    var maxIndex = 0;

    for (var i = 0; i < currentLengths.length; i++) {
        variance += Math.round(currentLengths[i]);
        if (currentLengths[i] > max) {
            maxIndex = i;
            max = currentLengths[i];
        }
        currentLengths[i] = Math.round(currentLengths[i]);
    }

    variance -= totalBarLength;
    currentLengths[maxIndex] = currentLengths[maxIndex] - variance;
    return currentLengths;
}

function getPixelLengthBasic(currentSD, currentD, currentN, currentA, currentSA, currentNA, currentTotal) {
    var result = [];
    result.push(getAnswerLength(currentSD, currentTotal));
    result.push(getAnswerLength(currentD, currentTotal));
    result.push(getAnswerLength(currentN, currentTotal));
    result.push(getAnswerLength(currentA, currentTotal));
    result.push(getAnswerLength(currentSA, currentTotal));
    result.push(getAnswerLength(currentNA, currentTotal));
    return result;
}

function getAnswerLength(answerCount, currentTotal) {
    if (answerCount == 0 || currentTotal == 0) {
        return 0;
    }
    var returnValue = ((answerCount / currentTotal) * window.totalBarLength);
    returnValue *= 10;
    returnValue = Math.floor(returnValue);
    returnValue /= 10;
    return returnValue;
}

//ESSAY QUERY FUNCTION*************************************************************************************************************************************************
function essayQuery(element, crn, semester, year) {
    //jQuery.getJSON('/misc/weber/CSEvals/essayAnswers.cfm?crn='+crn+'&semester='+semester+'&year='+year, function(data) 
    jQuery.getJSON('EssayAnswers.cshtml?crn=' + crn + '&semester=' + semester + '&year=' + year, function (data) {
        if (currentElement != element) {
            return;
        }
        try {
            var questionsAndResponses = [];

            $.each(data.DATA, function (i, array) {
                var dataArray = toKeyValPair(data.COLUMNS, String(array).split(','));	//CONVERTS DATA TO A KEY VALUE PAIR FOR READABILITY
                if (!(dataArray['QUESTION'] in questionsAndResponses)) {
                    questionsAndResponses[dataArray['QUESTION']] = [];
                }
                questionsAndResponses[dataArray['QUESTION']].push(dataArray['ANSWER']);

            });


            var eQuestions = "";
            printQuestion = 0;
            for (var question in questionsAndResponses) {
                var tempArray = questionsAndResponses[question];
                eQuestions += "<div class='question_box'><table class='essay_table_settings'><tr><td style='vertical-align:text-top; text-align:right'> <img class = 'question_image_box' src = 'images/colorItemBackground.png'> " + (printQuestion + 1) + ".  </td><td></td><td align='left'>" + question + "</td></tr>";

                for (var responses = 0; responses < tempArray.length; responses++) {

                    var noResponse = "";

                    if (tempArray[responses] == "No Response") {

                        noResponse = "font-style:italic";

                    }
                    eQuestions += "<tr><td style='font-weight:normal; vertical-align:text-bottom; text-align:right'>&nbsp;&nbsp;" + (responses + 1) + "</td><td align='right'></td><td align='left' class='essay_responses' style='" + noResponse + "'><pre>" + tempArray[responses] + "</pre></td></tr>";
                }
                eQuestions += "</table></div>";
                printQuestion++;
            }
            $(element).find("#EssayWrapper").append(eQuestions);
            essayQueryComplete(element, true);
        }
        catch (thrownError) {
            essayQueryComplete(element, false);
        }
    }, function (error) {

        essayQueryComplete(element, false);
    });
}
//END ESSAY QUERY FUNCTION*********************************************************************************************************************************************

//MAIN QUERY FUNCTION**************************************************************************************************************************************************
function mainQuery(element, crn, semester, year) {
    $.ajax(
	{
	    //url: '/misc/weber/CSEvals/AnswerCount.cfm?crn='+crn+'&semester='+semester+'&year='+year,
	    url: 'AnswerCount.cshtml?crn=' + crn + '&semester=' + semester + '&year=' + year,
	    type: "GET",
	    dataType: "json",
	    success: function (data) {
	        if (currentElement != element) {
	            return;
	        }
	        try {
	            var currentQuestion = " ";
	            var currentQuestionID;
	            var currentQuestionSequence;
	            var finishedQuestions = [];
	            var currentSD = 0;
	            var currentD = 0;
	            var currentN = 0;
	            var currentA = 0;
	            var currentSA = 0;
	            var currentNA = 0;
	            var currentTotal = 0;
	            var currentLengths = [];
	            var printedQuestions = [];
	            var crnStatistics = [];
	            var questionCollapserId = 0;
	            var totalQuestions = 0;
	            var questionJSON = {};
	            var barHeight = 30;
	            var totalRespondents = 0;
	            $.each(data.DATA, function (i, array) {
	                var dataArray = toKeyValPair(data.COLUMNS, String(array).split(','));	//CONVERTS DATA TO A KEY VALUE PAIR FOR READABILITY
	                //$.each(dataArray, function(i,array)
	                //{
	                //	document.write(i + ": " + array + "<br />");
	                //});
	                totalRespondents = dataArray['STUDENT COUNT'];

	                element.totalRespondents = totalRespondents;
	                window.totalRespondents[element.id] = totalRespondents;
	                //window.currentQuestion = dataArray['QUESTION'];
	                //window.currentQuestionID = dataArray['QUESTIONID'];
	                //window.currentQuestionSequence = dataArray['SEQUENCE'];
	                currentQuestion = dataArray['QUESTION'];
	                currentQuestionID = dataArray['QUESTIONID'];
	                currentQuestionSequence = dataArray['SEQUENCE'];

	                $.each(data.DATA, function (i, innerArray) {
	                    var innerDataArray = toKeyValPair(data.COLUMNS, String(innerArray).split(','));	//CONVERTS DATA TO A KEY VALUE PAIR FOR READABILITY

	                    if (currentQuestion == innerDataArray['QUESTION'] && finishedQuestions.indexOf(currentQuestion + " - " + innerDataArray['ANSWERS'].toLocaleLowerCase()) == -1) {
	                        switch (innerDataArray['ANSWERS'].toLocaleLowerCase()) {
	                            case 'strongly disagree':
	                            case 'very poor':
	                                currentSD += +innerDataArray['ANSWER COUNT'];
	                                currentTotal += +innerDataArray['ANSWER COUNT'];
	                                break;
	                            case 'disagree':
	                            case 'poor':
	                                currentD += +innerDataArray['ANSWER COUNT'];
	                                currentTotal += +innerDataArray['ANSWER COUNT'];
	                                break;
	                            case 'neutral':
	                            case 'average':
	                                currentN += +innerDataArray['ANSWER COUNT'];
	                                currentTotal += +innerDataArray['ANSWER COUNT'];
	                                break;
	                            case 'agree':
	                            case 'good':
	                                currentA += +innerDataArray['ANSWER COUNT'];
	                                currentTotal += +innerDataArray['ANSWER COUNT'];
	                                break;
	                            case 'strongly agree':
	                            case 'excellent':
	                                currentSA += +innerDataArray['ANSWER COUNT'];
	                                currentTotal += +innerDataArray['ANSWER COUNT'];
	                                break;
	                            case 'n/a':
	                                currentNA += +innerDataArray['ANSWER COUNT'];
	                                currentTotal += +innerDataArray['ANSWER COUNT'];
	                                break;
	                        }
	                        finishedQuestions.push(window.currentQuestion + " - " + innerDataArray['ANSWERS'].toLocaleLowerCase());
	                    }
	                });

	                if (printedQuestions.indexOf(currentQuestion) == -1) {
	                    questionCollapserId += 1;
	                    totalQuestions++;
	                    currentLengths = getPixelLengthBasic(currentSD, currentD, currentN, currentA, currentSA, currentNA, currentTotal);
	                    printedQuestions.push(currentQuestion);
	                    $(element).find("#array").append('<p style="clear:both;">' + currentQuestion + " - " + currentSD + " - " + currentD + " - " + currentN + " - " + currentA + " - " + currentSA + " - " + currentTotal + "</p>");

	                    var buildString = '<div class="question_box question_box_collapsed ' + questionCollapserId + '"><button id="' + questionCollapserId + '" class="button">↕</button><input type="hidden" class="hiddenQuestionID" value="' + currentQuestionID + '"/><div class="toggle">';
	                    buildString += '<img class = "question_image_box" src = "images/colorItemBackground.png"><div class="question"><h4>' + currentQuestionSequence + ". " + currentQuestion + '</h4></div><div class="question_graph"> ';

	                    currentLengths = normPixelLength(currentLengths);

	                    buildString += '<img class="displaycolor" src = "images/colorStronglyDisagree.png" width="' + currentLengths[0] + 'px" height="' + barHeight + 'px" title="Strongly Disagree: ' + currentSD + '/' + currentTotal + '"> ';
	                    buildString += '<img class="displaycolor" src = "images/colorDisagree.png" width="' + currentLengths[1] + 'px" height="' + barHeight + 'px" title="Disagree: ' + currentD + '/' + currentTotal + '"> ';
	                    buildString += '<img class="displaycolor" src = "images/colorNeutral.png" width="' + currentLengths[2] + 'px" height="' + barHeight + 'px" title="Neutral: ' + currentN + '/' + currentTotal + '"> ';
	                    buildString += '<img class="displaycolor" src = "images/colorAgree.png" width="' + currentLengths[3] + 'px" height="' + barHeight + 'px" title="Agree: ' + currentA + '/' + currentTotal + '"> ';
	                    buildString += '<img class="displaycolor" src = "images/colorStronglyAgree.png" width="' + currentLengths[4] + 'px" height="' + barHeight + 'px" title="Strongly Agree: ' + currentSA + '/' + currentTotal + '"> ';
	                    if (currentNA > 0) {
	                        buildString += '<img class="displaycolor" src = "images/colorNA.png" width="' + currentLengths[5] + 'px" height="' + barHeight + 'px" title="N\/A: ' + currentNA + '/' + currentTotal + '"> ';
	                    }

	                    //					buildString += '<div class="graph_box graphStronglyDisagree" title="Strongly Disagree: '+window.currentSD+'/'+window.currentTotal+'"   style=" width:'+window.currentLengths[0]+'px;">';
	                    //					buildString += '<div class="graph_box graphStronglyDisagree" title="Strongly Disagree: '+window.currentSD+'/'+window.currentTotal+'"   style=" width:'+window.currentLengths[0]+'px;">';
	                    //buildString += '</div><div class="graph_box graphDisagree" title="Disagree: '+window.currentD+'/'+window.currentTotal+'"   style=" width:'+window.currentLengths[1]+'px;">';
	                    //buildString += '</div><div class="graph_box graphNeutral" title="Neutral: '+window.currentN+'/'+window.currentTotal+'"   style=" width:'+window.currentLengths[2]+'px;">';
	                    //buildString += '</div><div class="graph_box graphAgree" title="Agree: '+window.currentA+'/'+window.currentTotal+'"   style=" width:'+window.currentLengths[3]+'px;">';
	                    //buildString += '</div><div class="graph_box graphStronglyAgree" title="Strongly Agree: '+window.currentSA+'/'+window.currentTotal+'"   style=" width:'+window.currentLengths[4]+'px;">';
	                    buildString += '</div></div><table class="question_scores"><tr><td class="question_answers_collapsed">SD: ' + currentSD + '</td>';
	                    buildString += '<td class="question_answers_collapsed">D: ' + currentD + '</td>';
	                    buildString += '<td class="question_answers_collapsed">N: ' + currentN + '</td>';
	                    buildString += '<td class="question_answers_collapsed">A: ' + currentA + '</td>';
	                    buildString += '<td class="question_answers_collapsed">SA: ' + currentSA + '</td>';
	                    if (currentNA > 0) {
	                        buildString += '<td class="question_answers_collapsed">NA: ' + currentNA + '</td>';
	                    }
	                    buildString += '</tr></table><br/></div></div>';
	                    buildString += '<!--' + currentQuestion + '-->'
	                    buildString += '<div class="question_box question_box_expanded ' + questionCollapserId + '"></div>';
	                    var q = {};
	                    q[0] = currentQuestion;
	                    q[1] = currentSD;
	                    q[2] = currentD;
	                    q[3] = currentN;
	                    q[4] = currentA;
	                    q[5] = currentSA;
	                    q[6] = currentTotal;
	                    q[7] = currentNA; //ADDED FOR NA
	                    questionJSON[questionCollapserId] = q;
	                    storedQuestions[crn] = questionJSON;
	                    $(element).find("#questions_wrapper").append(buildString);
	                }

	                currentQuestion = " ";
	                currentSD = 0;
	                currentD = 0;
	                currentN = 0;
	                currentA = 0;
	                currentSA = 0;
	                currentNA = 0;
	                currentTotal = 0;
	            });
	            mainQueryComplete(element, true);
	        }
	        catch (thrownError) {
	            mainQueryComplete(element, false);
	        }
	    },
	    error: function (xhr, ajaxOptions, thrownError) {
	        if (currentElement != element) {
	            return;
	        }
	        mainQueryComplete(element, false);
	    }
	});
}
//END MAIN QUERY FUNCTION**********************************************************************************************************************************************

function titleQuery(element, crn, semester, year) {
    $.ajax(
	{
	    //url: '/misc/weber/CSEvals/CrnDetails.cfm?crn='+crn+'&semester='+semester+'&year='+year,
	    url: 'CrnDetails.cshtml?crn=' + crn + '&semester=' + semester + '&year=' + year,
	    type: "GET",
	    dataType: "json",
	    success: function (data) {
	        try {
	            if (currentElement != element) {
	                return;
	            }

	            if (data.DATA == "") //IN THE EVENT TITLE DATA CANNOT BE RETRIEVED
	            {
	                //$(element).find("#title_wrapper").append('<h2>Course Evaluation</h2>' + ' Semester ' + Semester + ' - CRN ' + CRN + ' - Year ' + Year);
	                // window.ClassName = 'CRN ' + CRN;
	                titleQueryComplete(element, false);
	                return;
	            }
	            else				//RETREIVE AND UTILIZE TITLE DATA
	            {

	                $.each(data.DATA, function (i, array) {
	                    var dataArray = toKeyValPair(data.COLUMNS, String(array).split(','));	//CONVERTS DATA TO A KEY VALUE PAIR FOR READABILITY
	                    element.semesterName = dataArray['SEMESTERSTRING'];
	                    element.className = dataArray['CLASSSTRING'];
	                    element.firstName = dataArray['FIRSTNAME'];
	                    element.lastName = dataArray['LASTNAME'];
	                    element.year = dataArray['YEAR'];
	                    element.yearOriginal = element.year; // save the original year before we change based on semester.
	                    if (dataArray['SEMESTERSTRING'] == "Summer" || dataArray['SEMESTERSTRING'] == "Fall") {
	                        dataArray['YEAR'] -= 1; //Set the year back one
	                        element.year = dataArray['YEAR'];
	                    }

	                    $(element).find("#title_wrapper").append('<h2>Course Evaluation</h2>' + dataArray['FIRSTNAME'] + ' ' + dataArray['LASTNAME'] + ' - ' + dataArray['CLASSSTRING'] + ' - CRN ' + dataArray['BANNERCRN'] + ' - ' + dataArray['SEMESTERSTRING'] + ' ' + dataArray['YEAR'] + '');
	                });
	            }
	            titleQueryComplete(element, true);
	        }
	        catch (thrownError) {
	            titleQueryComplete(element, false);
	        }
	    },
	    error: function (xhr, ajaxOptions, thrownError) {
	        if (currentElement != element) {
	            return;
	        }
	        titleQueryComplete(element, false);
	    }
	});
}

function topQuery(element, crn, semester, year) {
    $(element).find("#StatisticsWrapper").hide();

    //jQuery.getJSON('/misc/weber/CSEvals/CrnStatistics.cfm?crn='+crn+'&semester='+semester+'&year='+year, function(data) 
    jQuery.getJSON('CrnStatistics.cshtml?crn=' + crn + '&semester=' + semester + '&year=' + year, function (data) {
        if (currentElement != element) {
            return;
        }
        try {


            var keyValPair = toKeyValPair(data.COLUMNS, String(data.DATA).split(','));

            element.score = Number(keyValPair['CLASSSCORE']).toFixed(2);
            element.stddev = Number(keyValPair['CLASSSTDEVIATION']).toFixed(2);

            var crnStatistics = keyValPair['INSTRUCTORSEMESTERAVERAGE'];
            var currentLengths = new Array(getPixelLength(keyValPair['CLASSSCORE']).toFixed(2), (400 - getPixelLength(keyValPair['CLASSSCORE']).toFixed(2)));
            currentLengths = normPixelLength(currentLengths);
            var tempString = '';
            tempString = tempString + '<table id="topTable">';
            tempString = tempString + '		<tbody><tr>';
            tempString = tempString + '			<td></td>';
            tempString = tempString + '			<td></td>';
            tempString = tempString + '			<td></td>';
            tempString = tempString + '			<td style="max-width:100px;text-align:center;font-size:12px;">Standard Deviation</td>';
            tempString = tempString + '		</tr>';
            tempString = tempString + '		<tr>';
            tempString = tempString + '			<td class="bigger bolder" style="width: 300px;"><button class="tpbutton">↕</button><input type="hidden"/> Your Overall Score</td>';
            tempString = tempString + '			<td class="bigger bolder" style="width: 60px">' + Number(keyValPair['CLASSSCORE']).toFixed(2) + '</td>';
            //TOPLINE ON GRAPH
            //tempString = tempString + '			<td><div class="container ticks"><div class="overall_ bigbar yellow ticks" style="width:'+getPixelLength(keyValPair['CLASSSCORE']).toFixed(2)+'px"></div></div></td>';
            tempString = tempString + '	<td><div class="container"; style="position:relative"><img align="left" src = "images/colorTopBars.png" width="' + currentLengths[0] + 'px" height=40px"><img align="left" src = "images/colorTopBarBackground.png" width="' + currentLengths[1] + 'px" height=40px"><img style="position:absolute; top:0; left:0" src = "images/ticks.png"></div></td>';

            if (Number(keyValPair['CLASSSTDEVIATION']).toFixed(2) >= 1.0) {
                tempString = tempString + '			<td style="width: 100px; text-align:center;color:red;">' + Number(keyValPair['CLASSSTDEVIATION']).toFixed(2) + '</td>';
            }
            else {
                tempString = tempString + '			<td style="width: 100px; text-align:center">' + Number(keyValPair['CLASSSTDEVIATION']).toFixed(2) + '</td>';
            }
            //tempString = tempString + '			<td style="width: 100px; text-align:center">' + Number(keyValPair['CLASSSTDEVIATION']).toFixed(2) + '</td>';
            tempString = tempString + '		</tr>';
            tempString = tempString + '	</tbody>';
            tempString = tempString + ' </table>';
            tempString = tempString + ' <div id="top_detail"></div>';
            $(element).find("#StatisticsWrapper").prepend(tempString);
            $(element).find("#StatisticsWrapper").slideDown(200);
            $(element).find(".loadinggif").remove();

            topQueryComplete(element, true);
            var tpButton = $(element).find(".tpbutton").get(0);
            detailsTop(element, crn, semester, year, tpButton);
        }
        catch (error) {
            topQueryComplete(element, false);
        }

    }, function (reason) {
        if (currentElement != element) {
            return;
        }
        topQueryComplete(element, false);

    });
}

function toKeyValPair(names, values) {
    var result = {};
    for (var i = 0; i < names.length; i++) {
        result[names[i]] = values[i];
    }
    return result;
}

//TOP DETAILS FUNCTION**************************************************************************************************************************************************
function detailsTop(element, crn, semester, year, clickedButton) {
    var UIspeed = 300;

    var originalDiv = $(element).find("#top_detail");
    if ($(originalDiv).hasClass("Already_Expanded")) {
        if ($(originalDiv).is(':visible')) {
            originalDiv.slideUp(UIspeed);
            return;
        }
        originalDiv.slideDown(UIspeed);
        return;
    }
    originalDiv.addClass("Already_Expanded");
    $(element).find("#top_detail").before('<p class="loadinggif">Calculating...</p></br><img class="loadinggif" src=".\\images\\ajax-loader.gif" "/>');
    //jQuery.get('/misc/weber/CSEvals/CrnStatistics.cfm?crn='+crn+'&semester='+semester+'&year='+year, function(data) 
    jQuery.get('CrnStatistics.cshtml?crn=' + crn + '&semester=' + semester + '&year=' + year, function (data) {
        if (currentElement != element) {
            return;
        }
        var statsTableString = ' <table style="margin-top:0px">';
        statsTableString = statsTableString + ' <tbody>';



        $.each(data.DATA, function (i, array) {
            var crnStatistics2 = toKeyValPair(data.COLUMNS, String(data.DATA).split(','));

            //jQuery.get('/misc/weber/CSEvals/ScoreByCategory.cfm?crn='+crn+'&semester='+semester+'&year='+year, function(data2) 
            jQuery.get('ScoreByCategory.cshtml?crn=' + crn + '&semester=' + semester + '&year=' + year, function (data2) {
                statsTableString = statsTableString + ''
                $.each(data2.DATA, function (i, array2) {
                    var questionNumList = array2[4].split(',');
                    for (var i = 0; i < questionNumList.length; i++) {
                        questionNumList[i] = parseInt(questionNumList[i]);
                    }

                    questionNumList.sort(function (a, b) { return a - b });

                    var orderingPrintString = "";

                    for (var i = 0; i < questionNumList.length; i++) {
                        orderingPrintString += questionNumList[i];
                        if (i != questionNumList.length - 1) {
                            orderingPrintString += ", ";
                        }
                    }

                    statsTableString = statsTableString + '<tr style="display:none;">';
                    statsTableString = statsTableString + '	<td style="width: 300px;">' + array2[2] + ' (Qs ' + orderingPrintString + ')</td>';
                    statsTableString = statsTableString + '	<td style="width: 60px">' + Number(array2[0]).toFixed(2) + '</td>';
                    //statsTableString = statsTableString + '	<td><div class="container"><div class="overall_bar yellow littleTicks" style="width:'+getPixelLength(array2[0]).toFixed(2)+'px"></div></div></td>';
                    statsTableString = statsTableString + '	<td><div class="container"; style="position:relative"><img align="left" src = "images/colorTopBars.png" width="' + getPixelLength(array2[0]).toFixed(2) + 'px" height=20px"><img align="left" src = "images/colorTopBarBackground.png" width="' + (400 - getPixelLength(array2[0]).toFixed(2)) + 'px" height=20px"><img style="position:absolute; top:0; left:0" src = "images/littleticks.png"></div></td>';

                    if (Number(array2[1]).toFixed(2) >= 1.0) {
                        statsTableString = statsTableString + '	<td style="width: 100px; text-align:center;color:red">' + Number(array2[1]).toFixed(2) + '</td>';
                    } else {
                        statsTableString = statsTableString + '	<td style="width: 100px; text-align:center">' + Number(array2[1]).toFixed(2) + '</td>';
                    }
                    statsTableString = statsTableString + '</tr>';
                });
            }).done(function () {
                //if (currentElement != element) {
                //    return;
                //}
                statsTableString = statsTableString + '<tr class="gap" style="display:none;">';
                statsTableString = statsTableString + '	<td style="width: 300px;">Your Overall Semester Average</td>';
                statsTableString = statsTableString + '	<td style="width: 60px">' + Number(crnStatistics2['INSTRUCTORSEMESTERAVERAGE']).toFixed(2) + '</td>';
                //statsTableString = statsTableString + '	<td><div class="container"><div class="overall_bar littleTicks" style="width:'+getPixelLength(crnStatistics2['INSTRUCTORSEMESTERAVERAGE']).toFixed(2)+'px"></div></div></td>';
                statsTableString = statsTableString + '	<td><div class="container"; style="position:relative"><img align="left" src = "images/colorTopBars.png" width="' + getPixelLength(crnStatistics2['INSTRUCTORSEMESTERAVERAGE']).toFixed(2) + 'px" height=20px"><img align="left" src = "images/colorTopBarBackground.png" width="' + (400 - getPixelLength(crnStatistics2['INSTRUCTORSEMESTERAVERAGE']).toFixed(2)) + 'px" height=20px"><img style="position:absolute; top:0; left:0" src = "images/littleticks.png"></div></td>';

                if (Number(crnStatistics2['INSTRUCTORSEMESTERSTDEVIATION']).toFixed(2) >= 1.0) {

                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;color:red">' + Number(crnStatistics2['INSTRUCTORSEMESTERSTDEVIATION']).toFixed(2) + '</td>';
                }
                else {
                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;">' + Number(crnStatistics2['INSTRUCTORSEMESTERSTDEVIATION']).toFixed(2) + '</td>';

                }

                statsTableString = statsTableString + '</tr>';
                statsTableString = statsTableString + '<tr style="display:none;">';
                statsTableString = statsTableString + '	<td style="width: 300px;">Dept. Semester Average</td>';
                statsTableString = statsTableString + '	<td style="width: 60px">' + Number(crnStatistics2['DEPARTMENTSEMESTERAVERAGE']).toFixed(2) + '</td>';
                //statsTableString = statsTableString + '	<td><div class="container"><div class="overall_bar littleTicks" style="width:'+getPixelLength(crnStatistics2['DEPARTMENTSEMESTERAVERAGE']).toFixed(2)+'px"></div></div></td>';
                statsTableString = statsTableString + '	<td><div class="container"; style="position:relative"><img align="left" src = "images/colorTopBars.png" width="' + getPixelLength(crnStatistics2['DEPARTMENTSEMESTERAVERAGE']).toFixed(2) + 'px" height=20px"><img align="left" src = "images/colorTopBarBackground.png" width="' + (400 - getPixelLength(crnStatistics2['DEPARTMENTSEMESTERAVERAGE']).toFixed(2)) + 'px" height=20px"><img style="position:absolute; top:0; left:0" src = "images/littleticks.png"></div></td>';
                if (Number(crnStatistics2['DEPARTMENTSEMESTERSTDEVIATION']).toFixed(2) >= 1.0) {

                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;color:red">' + Number(crnStatistics2['DEPARTMENTSEMESTERSTDEVIATION']).toFixed(2) + '</td>';
                }
                else {
                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;">' + Number(crnStatistics2['DEPARTMENTSEMESTERSTDEVIATION']).toFixed(2) + '</td>';

                }
                //statsTableString = statsTableString + '	<td style="width: 100px;text-align:center">' + Number(crnStatistics2['DEPARTMENTSEMESTERSTDEVIATION']).toFixed(2) + '</td>';
                statsTableString = statsTableString + '</tr>';
                statsTableString = statsTableString + '<tr style="display:none;">';
                statsTableString = statsTableString + '	<td style="width: 300px;">Dept. ' + ' 5 Year Average</td>';
                statsTableString = statsTableString + '	<td style="width: 60px">' + Number(crnStatistics2['DEPARTMENTCLASSFIVEYEARAVERAGE']).toFixed(2) + '</td>';
                //statsTableString = statsTableString + '	<td><div class="container"><div class="overall_bar littleTicks" style="width:'+getPixelLength(crnStatistics2['DEPARTMENTCLASSFIVEYEARAVERAGE']).toFixed(2)+'px"></div></div></td>';
                statsTableString = statsTableString + '	<td><div class="container"; style="position:relative"><img align="left" src = "images/colorTopBars.png" width="' + getPixelLength(crnStatistics2['DEPARTMENTCLASSFIVEYEARAVERAGE']).toFixed(2) + 'px" height=20px"><img align="left" src = "images/colorTopBarBackground.png" width="' + (400 - getPixelLength(crnStatistics2['DEPARTMENTCLASSFIVEYEARAVERAGE']).toFixed(2)) + 'px" height=20px"><img style="position:absolute; top:0; left:0" src = "images/littleticks.png"></div></td>';

                if (Number(crnStatistics2['DEPARTMENTCLASSFIVEYEARSTDEVIATION']).toFixed(2) >= 1.0) {

                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;color:red">' + Number(crnStatistics2['DEPARTMENTCLASSFIVEYEARSTDEVIATION']).toFixed(2) + '</td>';
                }
                else {
                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;">' + Number(crnStatistics2['DEPARTMENTCLASSFIVEYEARSTDEVIATION']).toFixed(2) + '</td>';

                }
                //statsTableString = statsTableString + '	<td style="width: 100px;text-align:center">' + Number(crnStatistics2['DEPARTMENTCLASSFIVEYEARSTDEVIATION']).toFixed(2) + '</td>';
                statsTableString = statsTableString + '</tr>';
                statsTableString = statsTableString + '<tr style="display:none;">';
                statsTableString = statsTableString + '	<td style="width: 300px;">Your ' + ' 5 Year Average</td>';
                statsTableString = statsTableString + '	<td style="width: 60px">' + Number(crnStatistics2['INSTRUCTORCLASSFIVEYEARAVERAGE']).toFixed(2) + '</td>';
                //statsTableString = statsTableString + '	<td><div class="container"><div class="overall_bar littleTicks" style="width:'+getPixelLength(crnStatistics2['INSTRUCTORCLASSFIVEYEARAVERAGE']).toFixed(2)+'px"></div></div></td>';
                statsTableString = statsTableString + '	<td><div class="container"; style="position:relative"><img align="left" src = "images/colorTopBars.png" width="' + getPixelLength(crnStatistics2['INSTRUCTORCLASSFIVEYEARAVERAGE']).toFixed(2) + 'px" height=20px"><img align="left" src = "images/colorTopBarBackground.png" width="' + (400 - getPixelLength(crnStatistics2['INSTRUCTORCLASSFIVEYEARAVERAGE']).toFixed(2)) + 'px" height=20px"><img style="position:absolute; top:0; left:0" src = "images/littleticks.png"></div></td>';

                if (Number(crnStatistics2['INSTRUCTORCLASSFIVEYEARSTDEVIATION']).toFixed(2) >= 1.0) {

                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;color:red">' + Number(crnStatistics2['INSTRUCTORCLASSFIVEYEARSTDEVIATION']).toFixed(2) + '</td>';
                }
                else {
                    statsTableString = statsTableString + '	<td style="width: 100px;text-align:center;">' + Number(crnStatistics2['INSTRUCTORCLASSFIVEYEARSTDEVIATION']).toFixed(2) + '</td>';

                }
                //statsTableString = statsTableString + '	<td style="width: 100px;text-align:center">' + Number(crnStatistics2['INSTRUCTORCLASSFIVEYEARSTDEVIATION']).toFixed(2) + '</td>';
                statsTableString = statsTableString + '</tr>';
                statsTableString = statsTableString + '<tr style="display:none;">';
                var decile = Number(crnStatistics2['DECTILE']);
                var suffix = decile == 1 ? 'st' : decile == 2 ? 'nd' : decile == 3 ? 'rd' : 'th';
                statsTableString = statsTableString + '	<td class="bolder" style="text-align:center;" colspan="4">A score of ' + Number(crnStatistics2['CLASSSCORE']).toFixed(2) + ' places you in the ' + decile + suffix + ' decile of your department this semester.</td>';
                statsTableString = statsTableString + '</tr>';
                statsTableString = statsTableString + '<td class="bolder" style="text-align:center;" colspan="4"> Total number of respondents: ' + totalRespondents[element.id] + '</td>';
                statsTableString = statsTableString + '</tr>';
                statsTableString = statsTableString + '';

                element.totalRespondents = totalRespondents[element.id];

                originalDiv.append(statsTableString);
                originalDiv.find(":hidden").slideDown(UIspeed);
                $(element).find(".loadinggif").remove();
                topDetailsComplete(element, true);
            });
        });
    });

    statsTableString = '	</tbody>';
    statsTableString = statsTableString + '	</table>';
    originalDiv.append(statsTableString);


    statsTableString = '';
}
//END TOP DETAILS FUNCTION**********************************************************************************************************************************************

function detailsQuery(element, crn, semester, year, questionId, clickedButton) {
    var UIspeed = 300;
    var questionNumber = $(clickedButton).attr("id");
    var originalDiv = $(clickedButton).parent();

    var expanderDiv = $(clickedButton).parent().siblings(".question_box_expanded").filter('.' + questionNumber);

    if ($(originalDiv).hasClass("Already_Expanded")) {
        originalDiv.hide();
        expanderDiv.slideDown(UIspeed);
        return;
    }

    if ($(originalDiv).hasClass('question_box_expanded')) {
        originalDiv.hide()
        var collapseDiv = $(originalDiv).siblings(".question_box_collapsed").filter('.' + questionNumber);
        collapseDiv.slideDown(UIspeed);

        return;
    }

    originalDiv.addClass("Already_Expanded");
    originalDiv.hide();
    expanderDiv.before('<span class="loadinggif">Calculating...</span><img class="loadinggif" src=".\\images\\ajax-loader.gif" "/>');
    //expanderDiv.show('<img class="loadinggif" src=".\\images\\ajax-loader.gif" "/>');


    $.ajax(
	{
	    //url:("/misc/weber/CSEvals/QuestionDetails.cfm?crn="+crn+"&semester="+semester+"&year="+year+"&questionID="+questionId),
	    url: ("QuestionDetails.cshtml?crn=" + crn + "&semester=" + semester + "&year=" + year + "&questionID=" + questionId),
	    type: "GET",
	    dataType: "json",
	    success: function (data) {

	        //resultString += '<p class="loadinggif">Calculating...</p></br><img class="loadinggif" src=".\\images\\ajax-loader.gif';
	        //expanderDiv.append(resultString);
	        //var connectionString = '';
	        var questionJSON = storedQuestions[crn];
	        var array = toKeyValPair(data.COLUMNS, String(data.DATA).split(','));
	        var totalResponses = questionJSON[questionNumber][1] + questionJSON[questionNumber][2] + questionJSON[questionNumber][3] + questionJSON[questionNumber][4] + questionJSON[questionNumber][5] + questionJSON[questionNumber][7];
	        var tableWidth;
	        var cellWidth;

	        if (questionJSON[questionNumber][7] > 0 || array['DPTSEMESTERAVERAGENA'] > 0 || array['PERSONALSEMESTERAVERAGENA'] > 0 || array['DPTFIVEYEARCOURSEAVERAGENA'] > 0 || array['PERSONALFIVEYEARAVERAGENA'] > 0) {
	            tableWidth = 215;
	            cellWidth = 38;
	        }
	        else {
	            tableWidth = 225;
	            cellWidth = 47;
	        }

	        resultString += '			<button id="' + questionNumber + '" class="button ' + questionNumber + '">↕</button>';
	        if (questionJSON[questionNumber][7] > 0 || array['DPTSEMESTERAVERAGENA'] > 0 || array['PERSONALSEMESTERAVERAGENA'] > 0 || array['DPTFIVEYEARCOURSEAVERAGENA'] > 0 || array['PERSONALFIVEYEARAVERAGENA'] > 0) {
	            resultString += '<table class="table_settings" border="0" style="position:relative; left:22px; margin-top:0px; margin-bottom:-5px; width:900px;">			';
	        }
	        else {
	            resultString += '<table class="table_settings" border="0" style="position:relative; left:54px; margin-top:0px; margin-bottom:-5px; width:900px;">			'; //N/A DATA
	        }
	        resultString += '					<tbody><tr>	';
	        resultString += '						<td colspan="7">';
	        if (questionJSON[questionNumber][7] > 0 || array['DPTSEMESTERAVERAGENA'] > 0 || array['PERSONALSEMESTERAVERAGENA'] > 0 || array['DPTFIVEYEARCOURSEAVERAGENA'] > 0 || array['PERSONALFIVEYEARAVERAGENA'] > 0) {
	            resultString += '							<div class="question hiddenQuestionNA">';
	        }
	        else {
	            resultString += '							<div class="question hiddenQuestion">';
	        }
	        resultString += '									' + questionNumber + '. ' + questionJSON[questionNumber][0]; +'';
	        resultString += '							</div>';
	        resultString += '						</td>';
	        resultString += '					</tr>';
	        resultString += '					<tr>';
	        resultString += '						<td align="left" style="width:' + tableWidth + 'px"> </td>'; // N/A DATA
	        resultString += '						<td align="left" >SD</td>	';
	        resultString += '						<td align="left" >D</td>';
	        resultString += '						<td align="left" >N</td>';
	        resultString += '						<td align="left" >A</td>';
	        resultString += '						<td align="left" >SA</td>	';
	        if (questionJSON[questionNumber][7] > 0 || array['DPTSEMESTERAVERAGENA'] > 0 || array['PERSONALSEMESTERAVERAGENA'] > 0 || array['DPTFIVEYEARCOURSEAVERAGENA'] > 0 || array['PERSONALFIVEYEARAVERAGENA'] > 0) {
	            resultString += '						<td align="left" >N\/A</td>	';//N\A DATA
	        }
	        resultString += '						<td align="left"></td>';
	        resultString += '					</tr>';
	        resultString += '					<tr valign="bottom">';
	        resultString += '						<td align="left" style="width:' + tableWidth + 'px">Your Score </td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + questionJSON[questionNumber][1] + '</td>	';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + questionJSON[questionNumber][2] + '</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + questionJSON[questionNumber][3] + '</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + questionJSON[questionNumber][4] + '</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + questionJSON[questionNumber][5] + '</td>	';
	        if (questionJSON[questionNumber][7] > 0 || array['DPTSEMESTERAVERAGENA'] > 0 || array['PERSONALSEMESTERAVERAGENA'] > 0 || array['DPTFIVEYEARCOURSEAVERAGENA'] > 0 || array['PERSONALFIVEYEARAVERAGENA'] > 0) {
	            resultString += '						<td align="left" style="width:' + cellWidth + '">' + questionJSON[questionNumber][7] + '</td>	';	//N/A DATA
	        }
	        resultString += '						<td align="left" valign = "middle"rowspan="2"> ';
	        resultString += '						<div class="graph_expanded">';

	        currentLengths = new Array(((questionJSON[questionNumber][1]) / (totalResponses)) * totalBarLength,
										((questionJSON[questionNumber][2]) / (totalResponses)) * totalBarLength,
										((questionJSON[questionNumber][3]) / (totalResponses)) * totalBarLength,
										((questionJSON[questionNumber][4]) / (totalResponses)) * totalBarLength,
										((questionJSON[questionNumber][5]) / (totalResponses)) * totalBarLength,
										((questionJSON[questionNumber][7]) / (totalResponses)) * totalBarLength);
	        normPixelLength(currentLengths);
	        //				statsTableString = statsTableString + '	<td><div class="container"><div class="overall_bar littleTicks" style="width:'+getPixelLength(crnStatistics2['INSTRUCTORCLASSFIVEYEARAVERAGE']).toFixed(2)+'px"></div></div></td>';
	        //resultString +='								<div class="colorStronglyDisagree" style="width:'+((questionJSON[questionNumber][1])/(questionJSON[questionNumber][6]))*totalBarLength+'px"></div>	';
	        resultString += '								<img class="displaycolor" src = "images/colorStronglyDisagree.png" width="' + currentLengths[0] + 'px" height="' + barHeight + 'px" title="Strongly Disagree: ' + questionJSON[questionNumber][1] + '/' + totalResponses + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorDisagree.png" width="' + currentLengths[1] + 'px" height="' + barHeight + 'px" title="Disagree: ' + questionJSON[questionNumber][2] + '/' + totalResponses + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorNeutral.png" width="' + currentLengths[2] + 'px" height="' + barHeight + 'px" title="Neutral: ' + questionJSON[questionNumber][3] + '/' + totalResponses + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorAgree.png" width="' + currentLengths[3] + 'px" height="' + barHeight + 'px" title="Agree: ' + questionJSON[questionNumber][4] + '/' + totalResponses + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorStronglyAgree.png" width="' + currentLengths[4] + 'px" height="' + barHeight + 'px" title="Strongly Agree: ' + questionJSON[questionNumber][5] + '/' + totalResponses + '"> ';
	        if (questionJSON[questionNumber][7] > 0) {
	            resultString += '								<img class="displaycolor"  src = "images/colorNA.png" width="' + currentLengths[5] + 'px" height="' + barHeight + 'px" title="N\/A: ' + questionJSON[questionNumber][7] + '/' + totalResponses + '"> ';//N/A DATA
	        }

	        resultString += '						</div>';
	        resultString += '						</td>';
	        resultString += '					</tr>';
	        resultString += '					<tr height="40px;" valign="top" ><img class = "question_image_box" src = "images/colorItemBackground.png">';
	        resultString += '						<td align="left" style="width:100px"></td>'; //FIXED NO TITLE FOR THIS CATEGORY
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((questionJSON[questionNumber][1] / (questionJSON[questionNumber][6])) * 100).toFixed(0) + '%</td>	';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((questionJSON[questionNumber][2] / (questionJSON[questionNumber][6])) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((questionJSON[questionNumber][3] / (questionJSON[questionNumber][6])) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((questionJSON[questionNumber][4] / (questionJSON[questionNumber][6])) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((questionJSON[questionNumber][5] / (questionJSON[questionNumber][6])) * 100).toFixed(0) + '%</td>	';
	        if (questionJSON[questionNumber][7] > 0) {
	            resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((questionJSON[questionNumber][7] / (questionJSON[questionNumber][6])) * 100).toFixed(0) + '%</td>	';// N/A DATA
	        }



	        resultString += '					</tr>	';
	        resultString += '					<tr>';
	        resultString += '						<td align="left" style="width:100px">Dpt Average This Semester</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTSEMESTERAVERAGESD'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTSEMESTERAVERAGED'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTSEMESTERAVERAGEN'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTSEMESTERAVERAGEA'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTSEMESTERAVERAGESA'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        if (array['DPTSEMESTERAVERAGENA'] > 0) {
	            resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTSEMESTERAVERAGENA'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';// N/A DATA
	        }

	        currentLengths = new Array(((array['DPTSEMESTERAVERAGESD'] / array['DPTSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['DPTSEMESTERAVERAGED'] / array['DPTSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['DPTSEMESTERAVERAGEN'] / array['DPTSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['DPTSEMESTERAVERAGEA'] / array['DPTSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['DPTSEMESTERAVERAGESA'] / array['DPTSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['DPTSEMESTERAVERAGENA'] / array['DPTSEMESTERAVERAGETOTAL']) * totalBarLength));
	        normPixelLength(currentLengths);
	        resultString += '						<td align="left"> ';
	        resultString += '						';
	        resultString += '							<div class="graph_expanded">';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[0] + 'px" height="' + barHeight + 'px" src="images/colorStronglyDisagree.png"	title="Strongly Disagree: ' + ((array['DPTSEMESTERAVERAGESD'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[1] + 'px" height="' + barHeight + 'px" src="images/colorDisagree.png" title="Disagree: ' + ((array['DPTSEMESTERAVERAGED'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[2] + 'px" height="' + barHeight + 'px" src="images/colorNeutral.png" title="Neutral: ' + ((array['DPTSEMESTERAVERAGEN'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[3] + 'px" height="' + barHeight + 'px" src="images/colorAgree.png" title="Agree: ' + ((array['DPTSEMESTERAVERAGEA'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[4] + 'px" height="' + barHeight + 'px" src="images/colorStronglyAgree.png" title="Strongly Agree: ' + ((array['DPTSEMESTERAVERAGESA'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        if (array['DPTSEMESTERAVERAGENA'] > 0) {
	            resultString += '									<img class="displaycolor" width="' + currentLengths[5] + 'px" height="' + barHeight + 'px" src="images/colorNA.png" title="N\/A: ' + ((array['DPTSEMESTERAVERAGENA'] / array['DPTSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        }
	        resultString += '							</div>';
	        resultString += '						</td>';
	        resultString += '					</tr>';
	        resultString += '					';
	        resultString += '					<tr>';
	        resultString += '						<td align="left" style="width:100px">Your Overall Semester Average</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALSEMESTERAVERAGESD'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALSEMESTERAVERAGED'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALSEMESTERAVERAGEN'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALSEMESTERAVERAGEA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALSEMESTERAVERAGESA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        if (array['PERSONALSEMESTERAVERAGENA'] > 0) {
	            resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALSEMESTERAVERAGENA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';//N/A DATA
	        }

	        currentLengths = new Array(((array['PERSONALSEMESTERAVERAGESD'] / array['PERSONALSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['PERSONALSEMESTERAVERAGED'] / array['PERSONALSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['PERSONALSEMESTERAVERAGEN'] / array['PERSONALSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['PERSONALSEMESTERAVERAGEA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['PERSONALSEMESTERAVERAGESA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * totalBarLength),
										((array['PERSONALSEMESTERAVERAGENA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * totalBarLength));
	        normPixelLength(currentLengths);
	        resultString += '						<td align="left"> ';
	        resultString += '						';
	        resultString += '							<div class="graph_expanded">';
	        resultString += '								<img class="displaycolor" width="' + currentLengths[0] + 'px" height="' + barHeight + 'px" src="images/colorStronglyDisagree.png" title="Strongly Disagree: ' + ((array['PERSONALSEMESTERAVERAGESD'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>	';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[1] + 'px" height="' + barHeight + 'px" src="images/colorDisagree.png" title="Disagree: ' + ((array['PERSONALSEMESTERAVERAGED'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[2] + 'px" height="' + barHeight + 'px" src="images/colorNeutral.png" title="Neutral: ' + ((array['PERSONALSEMESTERAVERAGEN'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[3] + 'px" height="' + barHeight + 'px" src="images/colorAgree.png" title="Agree: ' + ((array['PERSONALSEMESTERAVERAGEA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        resultString += '									<img class="displaycolor" width="' + currentLengths[4] + 'px" height="' + barHeight + 'px" src="images/colorStronglyAgree.png" title="Strongly Agree: ' + ((array['PERSONALSEMESTERAVERAGESA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        if (array['PERSONALSEMESTERAVERAGENA'] > 0) {
	            resultString += '									<img class="displaycolor" width="' + currentLengths[5] + 'px" height="' + barHeight + 'px" src="images/colorNA.png" title="N/\A: ' + ((array['PERSONALSEMESTERAVERAGENA'] / array['PERSONALSEMESTERAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"/>';
	        }
	        resultString += '							</div>';
	        resultString += '						</td>';
	        resultString += '					</tr>	';
	        resultString += '					<tr>';
	        resultString += '						<td align="left" style="width:100px">Dpt ' + ' 5 Year Average</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTFIVEYEARCOURSEAVERAGESD'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTFIVEYEARCOURSEAVERAGED'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTFIVEYEARCOURSEAVERAGEN'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTFIVEYEARCOURSEAVERAGEA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTFIVEYEARCOURSEAVERAGESA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        if (array['DPTFIVEYEARCOURSEAVERAGENA'] > 0) {
	            resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['DPTFIVEYEARCOURSEAVERAGENA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';//N/A DATA
	        }
	        resultString += '						<td align="left"> ';
	        resultString += '						';
	        resultString += '							<div class="graph_expanded">';

	        currentLengths = new Array((((array['DPTFIVEYEARCOURSEAVERAGESD'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL'])) * totalBarLength),
										(((array['DPTFIVEYEARCOURSEAVERAGED'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL'])) * totalBarLength),
										(((array['DPTFIVEYEARCOURSEAVERAGEN'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL'])) * totalBarLength),
										(((array['DPTFIVEYEARCOURSEAVERAGEA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL'])) * totalBarLength),
										(((array['DPTFIVEYEARCOURSEAVERAGESA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL'])) * totalBarLength),
										(((array['DPTFIVEYEARCOURSEAVERAGENA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL'])) * totalBarLength));
	        normPixelLength(currentLengths);
	        //resultString +='									<div class="graph_box graphStronglyDisagree" style="width:'+((array['DPTFIVEYEARCOURSEAVERAGESD']/array['DPTFIVEYEARCOURSEAVERAGETOTAL'])*totalBarLength)+'px;"></div>	';
	        //resultString +='									<div class="graph_box graphDisagree" style="width:'+((array['DPTFIVEYEARCOURSEAVERAGED']/array['DPTFIVEYEARCOURSEAVERAGETOTAL'])*totalBarLength)+'px;"></div>';
	        //resultString +='									<div class="graph_box graphNeutral" style="width:'+((array['DPTFIVEYEARCOURSEAVERAGEN']/array['DPTFIVEYEARCOURSEAVERAGETOTAL'])*totalBarLength)+'px;"></div>';
	        //resultString +='									<div class="graph_box graphAgree" style="width:'+((array['DPTFIVEYEARCOURSEAVERAGEA']/array['DPTFIVEYEARCOURSEAVERAGETOTAL'])*totalBarLength)+'px;"></div>';
	        //resultString +='									<div class="graph_box graphStronglyAgree" style="width:'+((array['DPTFIVEYEARCOURSEAVERAGESA']/array['DPTFIVEYEARCOURSEAVERAGETOTAL'])*totalBarLength)+'px;"></div>				';
	        resultString += '								<img class="displaycolor" src = "images/colorStronglyDisagree.png" width="' + currentLengths[0] + 'px" height="' + barHeight + 'px" title="Disagree: ' + ((array['DPTFIVEYEARCOURSEAVERAGESD'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorDisagree.png" width="' + currentLengths[1] + 'px" height="' + barHeight + 'px" title="Disagree: ' + ((array['DPTFIVEYEARCOURSEAVERAGED'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor"  src = "images/colorNeutral.png" width="' + currentLengths[2] + 'px" height="' + barHeight + 'px" title="Neutral: ' + ((array['DPTFIVEYEARCOURSEAVERAGED'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorAgree.png" width="' + currentLengths[3] + 'px" height="' + barHeight + 'px" title="Agree: ' + ((array['DPTFIVEYEARCOURSEAVERAGEA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor"  src = "images/colorStronglyAgree.png" width="' + currentLengths[4] + 'px" height="' + barHeight + 'px" title="Strongly Agree: ' + ((array['DPTFIVEYEARCOURSEAVERAGESA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        if (questionJSON[questionNumber][7]) {
	            resultString += '								<img class="displaycolor"  src = "images/colorNA.png" width="' + currentLengths[5] + 'px" height="' + barHeight + 'px" title="N\/A: ' + ((array['DPTFIVEYEARCOURSEAVERAGENA'] / array['DPTFIVEYEARCOURSEAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        }
	        resultString += '							</div>';
	        resultString += '						';
	        resultString += '						</td>';
	        resultString += '					</tr>';
	        resultString += '					<tr>';
	        resultString += '						<td align="left" style="width:100px">Your ' + ' 5 Year Average</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALFIVEYEARAVERAGESD'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALFIVEYEARAVERAGED'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALFIVEYEARAVERAGEN'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALFIVEYEARAVERAGEA'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(0) + '%</td>';
	        resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALFIVEYEARAVERAGESA'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';
	        if (array['PERSONALFIVEYEARAVERAGENA'] > 0) {
	            resultString += '						<td align="left" style="width:' + cellWidth + '">' + ((array['PERSONALFIVEYEARAVERAGENA'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(0) + '%</td>	';//N/A DATA
	        }
	        resultString += '						<td align="left"> ';
	        resultString += '							<div class="graph_expanded">';
	        //resultString +='									<div class="graph_box graphStronglyDisagree" style="width:'+((array['PERSONALFIVEYEARAVERAGESD']/array['PERSONALFIVEYEARAVERAGETOTAL'])*totalBarLength)+'px;"></div>	';
	        //resultString +='									<div class="graph_box graphDisagree" style="width:'+((array['PERSONALFIVEYEARAVERAGED']/array['PERSONALFIVEYEARAVERAGETOTAL'])*totalBarLength)+'px;"></div>';
	        //resultString +='									<div class="graph_box graphNeutral" style="width:'+((array['PERSONALFIVEYEARAVERAGEN']/array['PERSONALFIVEYEARAVERAGETOTAL'])*totalBarLength)+'px;"></div>';
	        //resultString +='									<div class="graph_box graphAgree" style="width:'+((array['PERSONALFIVEYEARAVERAGEA']/array['PERSONALFIVEYEARAVERAGETOTAL'])*totalBarLength)+'px;"></div>';
	        //resultString +='									<div class="graph_box graphStronglyAgree" style="width:'+((array['PERSONALFIVEYEARAVERAGESA']/array['PERSONALFIVEYEARAVERAGETOTAL'])*totalBarLength)+'px;"></div>				';

	        currentLengths = new Array((((array['PERSONALFIVEYEARAVERAGESD'] / array['PERSONALFIVEYEARAVERAGETOTAL'])) * totalBarLength),
										(((array['PERSONALFIVEYEARAVERAGED'] / array['PERSONALFIVEYEARAVERAGETOTAL'])) * totalBarLength),
										(((array['PERSONALFIVEYEARAVERAGEN'] / array['PERSONALFIVEYEARAVERAGETOTAL'])) * totalBarLength),
										(((array['PERSONALFIVEYEARAVERAGEA'] / array['PERSONALFIVEYEARAVERAGETOTAL'])) * totalBarLength),
										(((array['PERSONALFIVEYEARAVERAGESA'] / array['PERSONALFIVEYEARAVERAGETOTAL'])) * totalBarLength),
										(((array['PERSONALFIVEYEARAVERAGENA'] / array['PERSONALFIVEYEARAVERAGETOTAL'])) * totalBarLength));
	        normPixelLength(currentLengths);
	        resultString += '								<img class="displaycolor" src = "images/colorStronglyDisagree.png" width="' + currentLengths[0] + 'px" height="' + barHeight + 'px" title="Disagree: ' + ((array['PERSONALFIVEYEARAVERAGESD'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorDisagree.png" width="' + currentLengths[1] + 'px" height="' + barHeight + 'px" title="Disagree: ' + ((array['PERSONALFIVEYEARAVERAGED'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor"  src = "images/colorNeutral.png" width="' + currentLengths[2] + 'px" height="' + barHeight + 'px" title="Neutral: ' + ((array['PERSONALFIVEYEARAVERAGEN'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor" src = "images/colorAgree.png" width="' + currentLengths[3] + 'px" height="' + barHeight + 'px" title="Agree: ' + ((array['PERSONALFIVEYEARAVERAGEA'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        resultString += '								<img class="displaycolor"  src = "images/colorStronglyAgree.png" width="' + currentLengths[4] + 'px" height="' + barHeight + 'px" title="Strongly Agree: ' + ((array['PERSONALFIVEYEARAVERAGESA'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        if (array['PERSONALFIVEYEARAVERAGENA'] > 0) {
	            resultString += '								<img class="displaycolor"  src = "images/colorNA.png" width="' + currentLengths[5] + 'px" height="' + barHeight + 'px" title="N\/A: ' + ((array['PERSONALFIVEYEARAVERAGENA'] / array['PERSONALFIVEYEARAVERAGETOTAL']) * 100).toFixed(2) + '%' + '"> ';
	        }
	        resultString += '							</div>';
	        resultString += '						</td>';
	        resultString += '					</tr>	';
	        resultString += '				</tbody></table>';
	        resultString += '				</div>';

	        //expanderDiv.hide();
	        expanderDiv.append(resultString);


	        $(".loadinggif").remove();
	        expanderDiv.slideDown(UIspeed);
	        //originalDiv.addClass("Already_Expanded");
	        resultString = '';

	    },
	    error: function (xhr, ajaxOptions, thrownError, asdf) {

	        alert("failed to process Ajax");
	    }
	});
}

/*function printQuery(name, start, data)
{
	var rs = "";
	var total = data.DATA[0][start+5];
	var sd = (data.DATA[0][start+4] / total) * 100;
	var d = (data.DATA[0][start+3] / total) * 100;
	var n = (data.DATA[0][start+2] / total) * 100;
	var a = (data.DATA[0][start+1] / total) * 100;
	var sa = (data.DATA[0][start] / total) * 100;
	var factor = 4;
	rs += "<tr class='result'>";
	rs += "<td>" + name + "</td>";
	rs += "<td> SD: " + Math.round(sd) + "% </td>";
	rs += "<td> D: " + Math.round(d) + "% </td>";
	rs += "<td> N: " + Math.round(n) + "% </td>";
	rs += "<td> A: " + Math.round(a) + "% </td>";
	rs += "<td> SA: " +Math.round(sa) + "% </td>";
	rs += '<td><div class="graph_box graphStronglyDisagree" style=" width:'+sd*factor+'px;"></div>';
	rs += '<div class="graph_box graphDisagree" style=" width:'+d*factor+'px;"></div>';
	rs += '<div class="graph_box graphNuteral" style=" width:'+n*factor+'px;"></div>';
	rs += '<div class="graph_box graphAgree" style=" width:'+a*factor+'px;"></div>';
	rs += '<div class="graph_box graphStronglyAgree" style=" width:'+sa*factor+'px;"></div>';
	rs += "</td></tr>";
	return rs;
}*/



function getURLParameter(name) {
    return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [, ""])[1].replace(/\+/g, '%20')) || null;
}
function nextCrn() {
    if (currentCRNIndex < crnArray.length) {
        addToReport(crnArray[currentCRNIndex][0], crnArray[currentCRNIndex][1], crnArray[currentCRNIndex][2]);
        currentCRNIndex++;
        $('#loadingstatus').get(0).innerHTML = '<p class="loadinggif">' + currentCRNIndex + ' of ' + crnArray.length + ' classes</p></br><img class="loadinggif" src=".\\images\\ajax-loader.gif" "/>';

    }
        // we completed it so turn off the loading status div
    else if (!window.complete) {
        complete = true;
        
        $('#loadingstatus').remove();

        if (typeof (onReportComplete) === typeof (Function)) {
            onReportComplete(elementList);

        }

        
        
    }
}
function onErrorQueries(wrapperElement) {
    wrapperElement["TOPQUERY"] = false;
    wrapperElement["MAINQUERY"] = false;
    wrapperElement["TOPDETAILS"] = false;
    wrapperElement["ESSAYQUERY"] = false;
    wrapperElement["TITLEQUERY"] = false;
    wrapperElement["FAILED"] = true;
    elementList.pop();
    $('#crnErrors').append('CRN - ' + wrapperElement.crn + '| Semester - ' + wrapperElement.semesterNum + '| Year - ' + wrapperElement.year + '  is an invalid '
        + 'class<br />');
    $('#footer' + wrapperElement.crn).remove();
    $(wrapperElement).remove();

}
function failedQueries(element) {
    //return !element["TOPQUERY"] && !element["TOPDETAILS"] && !element["TITLEQUERY"]
    //       && !element["MAINQUERY"] && !element["ESSAYQUERY"];
    return element["FAILED"];
}
function topQueryComplete(wrapperElement, passed) {

    if (!passed) {
        //execute failed event
        onErrorQueries(wrapperElement);
    }
    if (failedQueries(wrapperElement)) {
        nextCrn();
        return;
    }
    wrapperElement["TOPQUERY"] = passed;
    if (checkCompletedAllQueries(wrapperElement)) {
        //advance to next crn
        nextCrn();
    }


}

function topDetailsComplete(wrapperElement, passed) {


    if (!passed) {
        //execute failed event
        onErrorQueries(wrapperElement);
    }
    if (failedQueries(wrapperElement)) {
        nextCrn();
        return;
    }
    wrapperElement["TOPDETAILS"] = passed;
    if (checkCompletedAllQueries(wrapperElement)) {
        //advance to next crn
        nextCrn();
    }

}

function mainQueryComplete(wrapperElement, passed) {

    if (!passed) {
        //execute failed event
        onErrorQueries(wrapperElement);
    }
    if (failedQueries(wrapperElement)) {
        nextCrn();
        return;
    }
    wrapperElement["MAINQUERY"] = passed;
    if (checkCompletedAllQueries(wrapperElement)) {
        //advance to next crn
        nextCrn();
    }


}

function essayQueryComplete(wrapperElement, passed) {

    if (!passed) {
        //execute failed event
        onErrorQueries(wrapperElement);
    }
    if (failedQueries(wrapperElement)) {
        nextCrn();
        return;
    }
    wrapperElement["ESSAYQUERY"] = passed;
    if (checkCompletedAllQueries(wrapperElement)) {
        //advance to next crn
        nextCrn();
    }

}

function titleQueryComplete(wrapperElement, passed) {

    if (!passed) {
        //execute failed event
        onErrorQueries(wrapperElement);
    }
    if (failedQueries(wrapperElement)) {
        nextCrn();
        return;
    }
    wrapperElement["TITLEQUERY"] = passed;
    if (checkCompletedAllQueries(wrapperElement)) {
        //advance to next crn
        nextCrn();
    }

}
function checkCompletedAllQueries(element) {
    return element["TOPQUERY"] && element["TOPDETAILS"] && element["TITLEQUERY"]
           && element["MAINQUERY"] && element["ESSAYQUERY"];
}
function addToReport(CRN, Semester, Year) {
    var element = document.createElement('div');
    element.innerHTML = divHTML;
    document.body.appendChild(element);
    element.id = "class" + CRN + "-" + Semester + "-" + Year;
    element.crn = CRN;
    element.semesterNum = Semester;
    element.year = Year;
    elementList.push(element);
    //element.outerHTML = divHTML;
    currentElement = element;
    $(element).delegate(".button", "click", function () { detailsQuery(element, CRN, Semester, Year, $(this).siblings(".hiddenQuestionID").val(), this); });
    $(element).delegate(".tpbutton", "click", function () { detailsTop(element, CRN, Semester, Year, this); });

    $(element).find("#StatisticsWrapper").before('<p class="loadinggif">Calculating...</p></br><img class="loadinggif" src=".\\images\\ajax-loader.gif" "/>');
    titleQuery(element, CRN, Semester, Year);
    mainQuery(element, CRN, Semester, Year);
    essayQuery(element, CRN, Semester, Year);
    topQuery(element, CRN, Semester, Year);


    //add footer that adds a page break for css
    if (currentCRNIndex < crnArray.length - 2)
        $(element).after('<footer id="footer' + CRN + '"  class="pagebreak"><br /> <br />  </footer>');
}
var resultString = "";
var CRN = 0;
var Semester = 0;
var Year = 0;


var questionJSON = {};
var storedQuestions = {};


var totalRespondents = [];
var totalBarLength = 400;
var barHeight = 30;

elementList = [];
currentCRNIndex = 0;
complete = false;

currentElement = {};
divHTML = "<div class=\"wrapper\">\r\n\t\r\n\t\t<div class=\"title\" id=\"title_wrapper\" style=\"margin:0px;padding:0px;\">\r\n\t\t\t<!-- course evaluation - cs1400 67877 spr 2013 -->\r\n\t\t<\/div>\r\n\t\t<div id=\"StatisticsWrapper\"><\/div>\r\n\t\t<div class=\"bar_divider\"><hr\/><\/div>\r\n\t\t<div class=\"legend_box\">\r\n\t\t\t<div class=\"legend_graph\">\r\n\t\t\t\t\r\n\t\t\t\t<div class=\"headingAndText\">\r\n\t\t\t\t\t<img id=\"barimage\" src=\"images\/colorStronglyDisagree.png\" >\t\r\n\t\t\t\t\t<p id = \"textDouble\">Strongly Disagree<\/p>\r\n\t\t\t\t<\/div>\r\n\r\n\t\t\t\t<div class=\"headingAndText\">\r\n\t\t\t\t\t<img id=\"barimage\" src=\"images\/colorDisagree.png\" >\t\r\n\t\t\t\t\t<p id = \"text\">Disagree<\/p>\r\n\t\t\t\t<\/div>\r\n\r\n\t\t\t\t<div class=\"headingAndText\">\r\n\t\t\t\t\t<img id=\"barimage\" src=\"images\/colorNeutral.png\" >\t\r\n\t\t\t\t\t<p id = \"text\">Neutral<\/p>\r\n\t\t\t\t<\/div>\r\n\t\t\t\t\r\n\t\t\t\t<div class=\"headingAndText\">\r\n\t\t\t\t\t<img id=\"barimage\" src=\"images\/colorAgree.png\" >\t\r\n\t\t\t\t\t<p id = \"text\">Agree<\/p>\r\n\t\t\t\t<\/div>\r\n\r\n\t\t\t\t<div class=\"headingAndText\">\r\n\t\t\t\t\t<img id=\"barimage\" src=\"images\/colorStronglyAgree.png\" >\t\r\n\t\t\t\t\t<p id = \"textDouble\">Strongly<br\/>Agree<\/p>\r\n\t\t\t\t<\/div>\r\n\t\t\t\t\r\n\t\t\t\t\r\n\t\t\t<\/div>\r\n\t\t<\/div>\r\n\r\n\t\r\n\t\t<div id=\"questions_wrapper\"><\/div>\r\n\t\t\r\n\t\t<div class=\"bar_divider\"><hr\/><\/div>\r\n\r\n\t\t<div id=\"EssayWrapper\"><\/div>\r\n\t\t\r\n\t\t<div class=\"footer\">\r\n\t\t\t&copy; 2014 Weber State University\r\n\t\t<\/div>\r\n  <\/div>";



/*
*   Starts the breakdown report. It expects an array of strings in CRN-SEMESTERNUM-YEAR format
*   Ex. 30611-3-2013
*/
function loadCRNData(crnArray) {

    errorCRN = [];


    var tempArray = [];

    for (var i = 0; i < crnArray.length; i++) {

        crnData = crnArray[i].split('-');
        if (crnData.length != 3) {
            $('#crnErrors').append(crnArray[i] + ' is not in a valid parameter format <br/>');
            break;
        }

        if (crnData[0].length != 5) {
            errorCRN.push(crnArray[i]);
            break;
        }
        else if (isNaN(crnData[0])) {
            errorCRN.push(crnArray[i]);
            break;
        }

        tempArray.push(crnData);

    }

    crnArray = tempArray;

    for (var e = 0; e < errorCRN.length; e++) {

        $('#crnErrors').append(errorCRN[e] + ' is not a valid CRN <br/>');
    }

    window.crnArray = crnArray;

    var loadingStatus = document.createElement('div');
    loadingStatus.id = "loadingstatus";
    loadingStatus.innerHTML = '<p class="loadinggif">0 of ' + crnArray.length + ' classes</p></br><img class="loadinggif" src=".\\images\\ajax-loader.gif" "/>';
    document.body.appendChild(loadingStatus);
    nextCrn();
}



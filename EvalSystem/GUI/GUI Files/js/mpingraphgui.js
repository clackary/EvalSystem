
//removes courses from the selected courses list
function removeCourses() {
    var instructions = document.getElementById("removeInstructions");
    //hide instructions if visible
    instructions.style.display = "none";
    var checkedItems = document.querySelectorAll('li input:checked');
    var length = document.querySelectorAll('li')
    checkedItems = Array.prototype.slice.call(checkedItems);
    if (checkedItems.length == 0) {
        instructions.style.display = "inline";
    }
    else {
        checkedItems.forEach(function (cv) {
            cv.parentNode.remove();
        });
    }
}

//creates a json populated with the values from the selected courses list
function runReport() {
    //get how many items are in the selected courses list
    var courseListLength = document.getElementById("selectedCoursesList").getElementsByTagName("li").length;

    //if courses are selected
    if (courseListLength > 0) {
        var data = "{\"courses\" : \"";

        //get items in unordered list
        var list = document.getElementById("selectedCoursesList").getElementsByTagName("li");

        //cycle through list, grab values, and create the json
        for (var i = 0; i < list.length; i++) {
            var string = list[i].innerHTML.toString();
            var index = string.indexOf("\u2022");
            var course = string.substring(index + 2, 100);
            if (i == list.length - 1) {
                data += "" + course + "";
            }
            else {
                data += "" + course + ",";
            }
        }

        data += "\"}";

        //grays out the screen and displays loading
        var popup = document.getElementsByClassName("popup");
        popup[0].style.display = "inline";
        popup[1].style.display = "inline";

        //ajax call to post pingraph data
        var settings =
       {
           "async": true,
           "crossDomain": true,
           "url": "GetPingraphData.cfm",
           "method": "POST",
           "headers": {
               "content-type": "application/json",
               "cache-control": "no-cache",
               "postman-token": "49af394d-17ee-1e5b-cc83-8ade6a368310"
           },
           "processData": false,
           "data": data,
           "success": function () { window.location.href = "TestGraphZoom.html"; }, //TODO: put actual page in
           "error": function () { alert("Communication error with server. Please try again later."); }
       }

        $.ajax(settings);

    }
    else {
        alert("Please select courses to run the report with.");
    }
}

//gets selected years, hides years, and displays semesters
function selectYears() {
    if (setSelected("years") == 1) {
        return;
    }
    setHidden("years");
    setVisible("semesters");
}

//gets selected semesters, hides semesters, and displays departments
function selectSemesters() {
    if (setSelected("semesters") == 1) {
        return;
    }
    setHidden("semesters");
    setVisible("departments");
}

//gets selected departements, hides departments, and displays courses
function selectDepartments() {
    if (setSelected("departments") == 1) {
        return;
    }
    setHidden("departments");
    setVisible("courses");
}

//gets selected courses, and adds to selected courses list
function selectCourses() {
    if (setSelected("courses") == 1) {
        return;
    }

    var courseDropdown = document.querySelector('#courses');
    var selectedCourses = getSelectionFromDropdown(courseDropdown);

    selectedCourses.forEach(function (cv) {
        var li = document.createElement('li');
        var input = document.createElement('input');
        var textNode = document.createTextNode("\u2022 " + cv);
        input.setAttribute('type', 'checkbox');
        input.setAttribute('class', 'checkboxes');
        li.appendChild(input);
        li.appendChild(textNode);
        addToCourses(li); // add item to selected list
    });
}

//adds to selected course list
function addToCourses(item) {
    var selectedCourseList = document.querySelector('#selectedCoursesList');
    selectedCourseList.appendChild(item);
}

//hides the class passed to it
function setHidden(visibleClass) {
    var vClass = arguments[0];

    var temp = document.getElementsByClassName(vClass);
    var i;
    for (i = 0 ; i < temp.length; i++) {
        temp[i].style.display = "none";
    }

    //courses class does not have this element
    if (vClass != "courses") {
        document.getElementById(vClass + "Selected").style.display = "inline";
    }
}

//makes visible the class passed to it
function setVisible(hiddenClass) {
    var hClass = arguments[0];

    var temp = document.getElementsByClassName(hClass);
    for (i = 0; i < temp.length; i++) {
        temp[i].style.display = "inline";
    }

    //field not available in course section
    if (hClass != "courses") {
        document.getElementById(hClass + "Selected").style.display = "none";
    }
}

//gets the options selected in search
function getSelectionFromDropdown(dropdown) {
    var options = dropdown.options;
    var selectedItems = [];

    //getting selected items
    for (var i = 0; i < options.length; i++) {
        if (options[i].selected) {
            var optionText = options[i].innerHTML;

            if (optionText.substring(0, 7) == "Loading") {

                //alert to wait for loading values
                alert("Please wait until values are loaded");
                selectedItems[0] = "NoVal";
            }
            else if (optionText.substring(0, 11) == "-No options") {
                //alert to reset form
                if (confirm("No results meet the options you have selected. Reset the form and start again?") == true) {
                    resetSearch();
                }
                selectedItems[0] = "NoVal"; //we reset the form    
            }
            else {
                selectedItems.push(optionText);
            }
        }
    }
    return selectedItems;
}


//holds the values to be passed to the server
var years = [];
var yearsString = "";
var semesters = [];
var semestersString = "";
var departments = [];
var departmentsString = "";
var courses = [];
var coursesString = "";

function setSelected(selectedClass) //returns 1 for nothing selected and 0 for no errors
{
    var sClass = document.getElementById(selectedClass);
    var i;

    var selectedDiv = document.getElementById(selectedClass + "Selected");
    var divInnerHTML = "";
    var selectedItems = [];

    //getting selected items
    var selectedItems = getSelectionFromDropdown(sClass);

    if (selectedItems[0] == "NoVal")
    {
        return 1; //we reset the search
    }

    if (selectedItems.length == 0) {
        alert("Please select one or more " + sClass.id + ".");
        return 1; //error
    }


    /*Course section does not show the selected courses.
        Above makes sure we have selected information. Redirect
        for courses.
    */
    if (sClass.id == "courses") {
        return 0;
    }

    //set divInnerHTML with correponding commas
    for (i = 0; i < selectedItems.length; i++) {
        if (i == (selectedItems.length - 1)) {
            divInnerHTML += selectedItems[i];

        }
        else {
            divInnerHTML += selectedItems[i] + ", ";
        }

        //set up JSON elements to pass to SQL statements
        switch (selectedClass) {
            case "years":
                years[i] = selectedItems[i];
                break;
            case "semesters":
                semesters[i] = selectedItems[i];
                break;
            case "departments":
                departments[i] = selectedItems[i];
                break;
            case "courses":
                courses[i] = selectedItems[i];
                break;
        }
    }

    //post request to server
    switch (selectedClass) {
        case "years":
            postYears();
            break;
        case "semesters":
            postSemesters();
            break;
        case "departments":
            postDepartments();
            break;
        case "courses":
            postCourses();
            break;
    }

    selectedDiv.innerHTML += divInnerHTML;
    return 0;
}


//position selected courses tab
function setTab()
{
    document.getElementById("selectedCourses").style.top = "93vh";
}

var open = false;
function toggleSelectedCourses()
{
    //tab open
    if(open == false)
    {
        openSelectedCourses();
        open = true;
    }
    //tab closed
    else 
    {
        closeSelectedCourses();
        open = false;
    }
}

function openSelectedCourses()
{
    //remove top attribute
    document.getElementById("selectedCourses").style.top = null;
    document.getElementById("selectedCourses").style.bottom = "0vh";

    //change the caret position
    document.getElementById("caretLeft").src = "res/downCaret.png";
    document.getElementById("caretRight").src = "res/downCaret.png";
}

function closeSelectedCourses()
{
    document.getElementById("selectedCourses").style.bottom = null;
    document.getElementById("selectedCourses").style.top = "93vh";

    //change the caret position
    document.getElementById("caretLeft").src = "res/upCaret.png";
    document.getElementById("caretRight").src = "res/upCaret.png";
}

//resets the Course Search back to "page load" status
function resetSearch() {
    // hide all elements within Course Select
    // and reset the "XXXXSelected" inner HTML
    setHidden("years");

    //reset all options to null
    resetOptions();

    //set all strings to empty
    yearsString = "";
    semestersString = "";
    departmentsString = "";
    coursesString = "";

    document.getElementById("yearsSelected").innerHTML = "Selected Years: ";
    document.getElementById("yearsSelected").style.display = "none";
    //reset years option values
    setYearsOptions();

    setHidden("semesters");
    document.getElementById("semestersSelected").style.display = "none";
    document.getElementById("semestersSelected").innerHTML = "Selected Semesters: ";

    setHidden("departments");
    document.getElementById("departmentsSelected").style.display = "none";
    document.getElementById("departmentsSelected").innerHTML = "Selected Departments: ";

    setHidden("courses");

    //show only years
    setVisible("years");
}

//resets the options in the select
function resetOptions() {
    function reset(element) {
        var length = element.options.length;
        for (var i = length; i >= 0; i--) {
            element.options[i] = null;
        }
    }

    reset(document.getElementById("years"));
    reset(document.getElementById("semesters"));
    reset(document.getElementById("departments"));
    reset(document.getElementById("courses"));
}

/* Post functions below are used for dynamically  *
 * populating each of the search fields, based on *
 * the selections that have been made thus far    */
function postYears() {
    //populate the string for the ajax from years selected
    var data = "";
    data += "{\n    \"yearList\": \"";
    for (i = 0; i < years.length; i++) {
        if (i != (years.length - 1)) {
            data += years[i].toString() + ",";
            yearsString += "\"" + years[i].toString() + "\",";
        }
        else {
            data += years[i].toString();
            yearsString += "\"" + years[i].toString() + "\"";
        }
    }
    data += "\"\n}";

    var settings =
    {
        "async": true,
        "crossDomain": true,
        "url": "http://weberevalnodeserver.herokuapp.com/pingraph/getSemesters",
        //"url": "getSemesters.cfm",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache",
            "postman-token": "49af394d-17ee-1e5b-cc83-8ade6a368310"
        },
        "processData": false,
        "data": data,
        "error": function () { alert("Communication error with server. Please try again later."); }
    }

    //adding loading option to semester select
    var semesters = document.getElementById("semesters");
    semesters.options[0] = new Option("Loading values...", "");

    $.ajax(settings).done(function (response) {
        // var response = a json array of objects
        if (response.length != 0) {
            setSemestersOptions(response);
        }
        else {
            //no return values
            semesters.options[0] = new Option("-No options for current selections-", "");
        }
    });
}
function postSemesters() {
    var data = "{\n    \"yearList\": [" + yearsString + "],\n" +
                "    \"semesterList\": [";
    for (i = 0; i < semesters.length; i++) {
        if (i != (semesters.length - 1)) {
            data += "\"" + semesters[i].toString() + "\", ";
            semestersString += "\"" + semesters[i].toString() + "\", ";
        }
        else {
            data += "\"" + semesters[i].toString() + "\"";
            semestersString += "\"" + semesters[i].toString() + "\"";
        }
    }
    data += "]\n}";

    var settings =
    {
        "async": true,
        "crossDomain": true,
        "url": "http://weberevalnodeserver.herokuapp.com/pingraph/getDepartments",
        //"url": "getDepartments.cfm",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache",
            "postman-token": "49af394d-17ee-1e5b-cc83-8ade6a368310"
        },
        "processData": false,
        "data": data,
        "error": function () { alert("Communication error with server. Please try again later."); }
    }

    //adding loading option to department select
    var departments = document.getElementById("departments");
    departments.options[departments.options.length] = new Option("Loading values...", "");

    $.ajax(settings).done(function (response) {
        // var response = a json array of objects
        if (response.length != 0) {
            setDepartmentsOptions(response);
        }
        else {
            departments.options[0] = new Option("-No options for current selections-", "");
        }
    });
}
function postDepartments() {
    var data = "{\n    \"yearList\": [" + yearsString + "],\n" +
                "    \"semesterList\": [" + semestersString + "],\n" +
                "    \"departmentList\": [";
    for (i = 0; i < departments.length; i++) {
        if (i != (departments.length - 1)) {
            data += "\"" + departments[i].toString() + "\", ";
            departmentsString += "\"" + departments[i].toString() + "\", ";
        }
        else {
            data += "\"" + departments[i].toString() + "\"";
            departmentsString += "\"" + departments[i].toString() + "\"";
        }
    }
    data += "]\n}";

    var settings =
    {
        "async": true,
        "crossDomain": true,
        "url": "http://weberevalnodeserver.herokuapp.com/pingraph/getCourses",
        //"url": "getCourses.cfm",
        "method": "POST",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache",
            "postman-token": "49af394d-17ee-1e5b-cc83-8ade6a368310"
        },
        "processData": false,
        "data": data,
        "error": function () { alert("Communication error with server. Please try again later."); }
    }

    //adding loading option to instructorType select
    var courses = document.getElementById("courses");
    courses.options[courses.options.length] = new Option("Loading values...", "");

    $.ajax(settings).done(function (response) {
        // var response = a json array of objects
        if (response.length != 0) {
            setCoursesOptions(response);
        }
        else {
            courses.options[0] = new Option("-No options for current selections-", "");
        }
    });
}


//sets the values of each search box
function setYearsOptions() {
    /* This function is called on body load.   *
     * It populates the years list dynamically *
     * based off the current year and 1989     *
     * which is the year WSU was founded       */

    var years = document.getElementById("years");

    for (var i = new Date().getFullYear() ; i >= 1989; i--) {
        years.options[years.options.length] = new Option(i, i);
    }
}
function setSemestersOptions(response) {
    var semesters = document.getElementById("semesters");

    //convert each object into option
    for (var i = 0; i < response.length; i++) {
        //adding new option to select <Option("text1", "value1")>
        semesters.options[i] = new Option(response[i].semester, response[i].semester);
    }
}
function setDepartmentsOptions(response) {
    var departments = document.getElementById("departments");

    //convert each object into option
    for (var i = 0; i < response.length; i++) {
        //adding new option to select <Option("text1", "value1")>
        departments.options[i] = new Option(response[i].departments, response[i].departments);
    }
}
function setCoursesOptions(response) {
    var courses = document.getElementById("courses");

    //convert each object into option
    for (var i = 0; i < response.length; i++) {
        //adding new option to select <Option("text1", "value1")>
        courses.options[i] = new Option(response[i].courseName, response[i].courseName);
    }
}

crnArray = [];



window.onload = function () {

    instructorID = getURLParameter('instructorID');
    // download instructor crn's
    if (instructorID == null || instructorID == "" || instructorID == 0)
    {
        jQuery.getJSON('/misc/weber/CSEvals/InstructorClassesTaught.cfm', function (data) {
            crnArray = [];
            if (data.DATA.length == 0) {
                return;
            }

            $.each(data.DATA, function (i, array) {

                var dataArray = toKeyValPair(data.COLUMNS, array);
                crnArray.push(dataArray["BANNERCRN"] + "-" + dataArray["SEMESTER"] + "-" + dataArray["YEAR"]);


            });

            loadCRNData(crnArray);

        });

    }
    else
    {
        instructorID = parseInt(instructorID);
        jQuery.getJSON('/misc/weber/CSEvals/InstructorClassesTaught.cfm' + '?instructorID=' + instructorID, function (data) {
            crnArray = [];
            if (data.DATA.length == 0) {
                return;
            }

            $.each(data.DATA, function (i, array) {

                var dataArray = toKeyValPair(data.COLUMNS, array);
                crnArray.push(dataArray["BANNERCRN"] + "-" + dataArray["SEMESTER"] + "-" + dataArray["YEAR"]);


            });

            loadCRNData(crnArray);

        });
    }
    


    // TEST DATA
    /*
    
    var data = JSON.parse('{"COLUMNS":["SECTIONID","SEMESTER","YEAR","BANNERCRN"],"DATA":[[192511,3,2013,30611],[194320,3,2013,33035],[194334,3,2013,33045],[194386,3,2013,33108],[195899,3,2013,34455],[197540,1,2014,10639],[197547,1,2014,10669],[197562,1,2014,10641],[198536,2,2014,20949],[201578,2,2014,23750],[201580,2,2014,23768],[201601,2,2014,23793],[204884,3,2014,31151],[206605,3,2014,32940],[206638,3,2014,32962],[206657,3,2014,32945],[211219,1,2015,11197],[211220,1,2015,11198],[211336,1,2015,11232],[211592,2,2015,21584],[212676,2,2015,22599],[212796,2,2015,22564],[212797,2,2015,22574],[219457,3,2015,33274],[219622,3,2015,33296],[219655,3,2015,33269]]}');

    crnArray = [];
    if (data.DATA.length == 0) {
        return;
    }

    $.each(data.DATA, function (i, array) {

        var dataArray = toKeyValPair(data.COLUMNS, array);
        crnArray.push(dataArray["BANNERCRN"] + "-" + dataArray["SEMESTER"] + "-" + dataArray["YEAR"]);


    });

    loadCRNData(crnArray);
    */
};

function onReportComplete(elementList) {

    document.getElementById('instructorName').innerHTML += elementList[0].firstName + " " + elementList[0].lastName;
    //loadChart and generate Table expect a list of objects that contain properties for it to use.
    /*
    * firstName
    * lastName
    * semesterName
    * semesterNum
    * year
    * score
    */
    loadChart(elementList);
    generateTable(elementList);
}



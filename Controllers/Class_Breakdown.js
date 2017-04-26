CRN = getURLParameter('CRN');
if (CRN != null) {
    crnArray = CRN.split(',');
}
Semester = getURLParameter('Semester');
Year = getURLParameter('Year');

window.onload = (function () {
    //if the user specifies a year and semester parameter we have to add the semester and year to each crn in the 
    // array.
    if (Semester != null && Year != null) {


        for (var i = 0; i < crnArray.length; i++) {
            crnArray[i] = crnArray[i] + '-' + Semester + '-' + Year;

        }
    }

    loadCRNData(crnArray);
});
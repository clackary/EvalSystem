//holds the values to be passed to the server
var users = [];
var permissionsList = [];
var permissionsAdded = [];

//used to find what has been selected in course search
function setSelected(selectedClass)
{
	var sClass = document.getElementById(selectedClass);
	var i;

	var selectedDiv = document.getElementById(selectedClass + "Selected");
	var divInnerHTML = "";
	var selectedItems = [];

	//getting selected items
	var selectedItems = getSelectionFromDropdown(sClass);

	if(selectedItems.length == 0) {
		alert("Please select one or more " + sClass.id + ".");
		return 1; //error
	}

	/*
	if(sClass.id == "permList")
	{
		 return 0;
	}
	*/


	//set divInnerHTML with corresponding commas
	for(i = 0; i < selectedItems.length; i++){
		if(i == (selectedItems.length - 1)){
			divInnerHTML += selectedItems[i];
		}
		else{
			divInnerHTML += selectedItems[i] + ", ";
		}

		switch(selectedClass){
			case "users":
				users[i] = selectedItems[i];
				break;
			case "permList":
				permissionsList = selectedItems[i];
				break;
			case "permAdd":
				permissionsAdded = selectedItems[i];
		}
	}


	//post request to server
	// switch(selectedClass)
	// {
	// 	case "users":
	// 		postUsers();
	// 		break;
	// 	case "permList":
	// 		postPermList();
	// 		break;
	// 	case "permAdd":
	// 		postPermAdd();
	// 		break;
	// }

	selectedDiv.innerHTML += divInnerHTML;
	return 0;
}

function resetSearch()
{
	//hide all elements
	setVisible("users");
	setHidden("permList");
	setHidden("permissionsButtons");
	setHidden("permAdd");
	document.getElementById("usersSelected").innerHTML = "Selected Users: ";
	document.getElementById("usersSelected").style.display = "none";
}
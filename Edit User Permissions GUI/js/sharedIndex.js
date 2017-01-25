function selectUsers()
{
	if(setSelected("users")==1)
	{
		return;
	}
	setHidden("users");
	setVisible("permList");
	setVisible("permAdd");
	setVisible("permissionsButtons");
}

// button functions for handling permissions add/remove
function addSelected()
{

}

function removeSelected()
{

}

//hide a class
function setHidden(visibleClass)
{
	var vClass = arguments[0];

	var temp = document.getElementsByClassName(vClass);
	var i;
	for(i = 0; i < temp.length; i++){
		temp[i].style.display = "none";
	}
	if(vClass != "permList" && vClass != "permAdd" && vClass != "permissionsButtons"){
		document.getElementById(vClass + "Selected").style.display = "inline";
	}
}

function setVisible(hiddenClass){
	var hClass = arguments[0];

	var temp = document.getElementsByClassName(hClass);
	for(i = 0; i < temp.length; i++){
		temp[i].style.display = "inline";
	}

	if(hClass != "permList" && hClass != "permAdd" && hClass != "permissionsButtons"){
		document.getElementById(hClass + "Selected").style.display = "none";
	}
}

function getSelectionFromDropdown(dropdown)
{
	var options = dropdown.options;
	var selectedItems = [];

	for(var i = 0; i < options.length; i++){
		if(options[i].selected){
			var optionText = options[i].innerHTML;

			if(optionText.substring(0,3) == "All"){
				selectedItems.push(optionText);
				break;
			}

			selectedItems.push(optionText);
		}
	}

	return selectedItems;
}
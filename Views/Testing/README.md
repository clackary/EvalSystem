### Testing / Work in Progress
This folder contains a few pages that are a work-in-progress, with different storyboards or ideas that may or may not be currently abandoned.

#### userRoles.html
This is a basic start to the User Roles/Permissions (sometimes we refer to this as the secretary page). Currently, this page displays any User from the database that belongs to a department. This was done to exclude users who did not belong to a department, and eliminates some empty cells in the table.

It contains a few nice features, such as a search box, and each column is sortable. We thought about using this page to see each User's roles, and then be able to change or add a role as needed.

#### Secretary Permission Pages
Includes the following files: 
SelectDepartment.html
SelectInstructor.html 
SelectPermissions.html 
PermissionResults.html 
SecretaryPermission.css 
The data in these pages was hardcoded for the wireframe and would need to be populated dynamically.

These make up a functional wireframe for the Secretary Permission page. This is a feature where the department secretary is able to assign permissions to the instructors. 

The first page, SelectDepartment.html would have a list of the the departments from a given school(ie. EAST, school of Engineering, Science and Technology.) After one is selected and the 'Next' button is clicked, it goes to the SelectInstructor.html page. 

On this page, an Instuctor is selected from the list of instructors in the chosen department from the previous page. Clicking the 'Next' button will go to the SelectPermission.html page and clickng the 'Back' button will return to the SelectDepartment.hmtl page.

On the SelectPermissions.html page, the permission(s) an instructor will have are selected. If the 'Next' button is clicked, the permissions would be saved to a database and a results page will is displayed. If the 'Back' button is clicked, the user is returned to the SelectInstructor.html page. 

The results page displays the instructor and permission(s) assigned to them. It also has two buttons which will return to either the SelectDepartment.html page or the SelectInstructor.html page.

#### pingraphgui.html
This page was the precursor to our current Selection Flow page (Views/selectionFlow.html).

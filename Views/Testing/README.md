### Testing / Work in Progress
This folder contains a few pages that are a work-in-progress, with different storyboards or ideas that may or may not be currently abandoned.

#### userRoles.html
This is a basic start to the User Roles/Permissions (sometimes we refer to this as the secretary page). Currently, this page displays any User from the database that belongs to a department. This was done to exclude users who did not belong to a department, and eliminates some empty cells in the table.

It contains a few nice features, such as a search box, and each column is sortable. We thought about using this page to see each User's roles, and then be able to change or add a role as needed.

#### Secretary Permission Pages
Includes the following files:
  -SecretaryPermission.html
  -SelectPermissions.html
  -PermissionResults.html
  -SecretaryPermission.css
These make up a functional wireframe for the Secretary Permission. This is a feature where the department secretary is able to assign permissions to the instructors. The first page, SecretaryPermission.html would have a list of the instructors in a given department. After one is selected and the 'Next' button is clicked, it goes to the second page, SelectPermissions.html. On this page, the permission(s) an instructor will have are selected. If the 'Next' button is clicked, the permissions would be saved to a database and a results page will is displayed. If the 'Back' button is clicked, the user is returned to the SecretaryPermission.html page. The results page displays the instructor and permission(s) assigned to them.

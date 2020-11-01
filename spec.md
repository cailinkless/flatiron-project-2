# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class -> "User" and "Program"
- [x] Include at least one has_many relationship on your User model
      -> User has_many Programs
- [x] Include at least one belongs_to relationship on another model
      -> Program belongs_to User)
- [x] Include user accounts with unique login attribute
      -> New users must choose a unique user_name
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      -> Users can create a program draft and retrieve it later to view, edit, or delete.
- [x] Ensure that users can't modify content created by other users
      -> by cross-checking User.current_user(session) against @program.user_id
- [x] Include user input validations
      -> New users may not create an account with a blank user_name, and untitled programs will receive a title of "Untitled Program" automatically.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message

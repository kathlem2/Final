# proj6-poptart: Audience Evaluation of Presentations

## Overview
Evaluate is an online peer evaluation tool for presentations. Teachers and students can sign up to join. Teachers can create new users, create groups, assign users to groups, assign presentations to groups, and view student feedback on presentations. Students can create feedback for any presentation that is not their own, but they can only give feedback for a presentation once. Students can also view all the feedback on their own presentations but not the feedback for any other group's presentations. The feedback for presentations consists of a required 1-10 ranking and comment. When viewing all the feedback for one presentation, an average ranking will be displayed. 

## Execution
1. Run `bundle install`
2. Run `rails server`
3. Wait for a TCP port to be listed (ex. "127.0.0.1:3000")
4. Open Firefox and go to the listed TCP port

## Design Decisions
1. **Creating Student Users:** There are two ways student users may be created. First, the student may sign up on their own. After they sign up, the teacher may then assign them a group and presentations. Second, the teacher may create a new student user before a student signs up. By doing this, the teacher can assign the user a group when creating the user, but they will have to use a temporary password. The teacher will need to communicate the temporary password to the student. The student can then login, navigate to Account->Settings, and update their password. The two different ways of creating students are meant to provide flexibility, and the temporary password is to ensure that no user's account is ever able to be logged into without authentication. 
2. **Different Menus Based on Role:** Every user has one of two roles: a student or a teacher. When logged in, the student and teacher users see different menus with different capablities. The student's menu includes *Roster* and *Evaluate*. *Roster* displays all the users. *Evaluate* displays all the presentations that are not the student's and gives the student the option to create feedback for each presentation. The teacher's menu includes *Roster*, *Groups*, and *Evaluate*. *Roster* displays all the users, but the teacher is able to view, edit, destroy, and create users. *Groups* displays all the groups with the option to view, edit, destroy, and create groups. *Evaluate* displays all the presentations for the teacher as well as allowing the teacher to edit, destroy, and view feedback for each presentation. The different menus and capabilities are meant to differentiate between the two different types of users and provide administrative privileges to teachers. 
3. **"Show" Also Displays Associations:** To make it easier to determine associations between objects, the option to "show" an object also shows the objects associated with it. For example, when a teacher wants to "show" a group, they will see the group and the users associated with the group. The same concept applies to users and their presentations as well as presentations and their feedback.
4. **Account->About Me:** The menu has an item Account->About Me. This page contains information about the current logged in user such as their name, email, group, and presentations. For students, this page is where they can view their presentation feedback from other students. This is different from the *Evaluate* page since students can only see other student's presentations on the *Evaluate* page (which ensures no self-evaluation). 

## Database Defaults
- Some default data has been populated in the database already, for testing purposes. All student accounts can be logged into with the password 'password', and the teacher account paul@sivilotti can be logged in with 'gobucks!'. 

## Development Information
### Classes
**User:** 
 - name (string), email (string), password (string), is_teacher (boolean), [optional] group_id (integer) 
 - belongs_to group
 
 **Group:**
 - name (string)
 - has_many users
 - has_many presentations
 
 **Presentation:**
 - topic (string), group_id (integer)
 - belongs_to group
 - has_many feedbacks
 
 **Feedback:**
 - presentation_id (integer), ranking (integer), comment (text), user_id (integer)
 - belongs_to presentation
 - belongs_to user

## Contributors
### Kyle (hustek.3)
- Created sign up functionality and User class
- Helped create Group and Presentation classes, helped troubleshoot various issues
- Added features like form drop-down menus of existing groups/presentations, changing form functionality based on if logged in vs. logged out/student vs. teacher, and validation

### Paige (bormann.12)
- Created static home page, created Feedback class, and added various features ("show" displaying associations, average presentation ranking)
- CSS styling for all pages
- Wrote README.md

### Nate (yun.195)
- Created login functionality and handled logic for changing view based on if logged in vs. not logged in/student vs. teacher
- Handled deleting objects (deleting dependencies and lingering associations)
- Helped troubleshoot issues, wrote test cases

### Katie (maclean.72)
- Created Account->About Me view that displays presentations associated with current user and general user show page that shows presentations associated with that user
- Helped create Group and Presentation classes
- Testing, finding bugs, and test cases

### Week 9 Homework

### Overview

On the first page of the web app, the user is presented with a navigation bar for the Doctor Who Database. On the nav bar, they are given the option of looking up an episode by episode id, adding an episode, or view the entire list of episodes into the database. If the user clicks on the show episode button without entering an id, an error message shows requesting a number before it proceeds. Once the user supplies a valid episode id, they are brought to the episode information page. On that page, it lists the title, era, episode id, episode number, season, Doctor, villain, year it is set in, planet it takes place on, and description of the episode. Beneath the episode information, are buttons to update episode, delete episode, or return home. If the user clicks on the update episode, they are brought to a form screen with the episode information pre-populated but editable. Once the information is edited, the user clicks update episode and they are brought back to the episode information page with the updated info. If the user clicks on the delete episode button, they are brought to a page stating that the episode has been deleted and it is removed from the database. The user can then return to the home screen. If the user selects add episode, they are brought to an empty form where they can fill out the episode information. All fields are required except planet and year set, if the user doesn't input a required field they are given an error requesting the info before they can proceed with the creation. They are then brought to the episode info page for the new episode. From the home page, the user can select to view all episode, they are brought to a page with a complete list of the episodes in the database. Each episode name is a link to their information page, where they can return home, update or delete the episode.


### Technologies/ Topics Applied

MySQL database to handle the list of episodes
Full C.R.U.D. on the film and actor database
Java Database Connectivity to use Java to make SQL inquiries, updates, and deletes
HTML and CSS bootstrap for the layout for the app
Spring Framework handles the class objects, HTML, XML, and JSP files.
A Data Access Object that provides access to the database.

### Lessons Learned

Learned to use prepared statements for the SQL inquiries because it gives added flexibility and protects agains SQL injection.

When using request mapping, the path and id in the index.jsp have to have correct syntax and matching paths.

When launching on AWS, the path to index.jsp needs an actual "goHome.do" instead of just "/".

Before performing any C.R.U.D methods, ensure the given data by the user meets requirements as to not corrupt or create errors with your database.

Proper and descriptive naming conventions of files helps in being aware of the pathing and where the controller sends the user.

Adding objects to ModelAndView is crucial in transferring data across multiple JSPs. Created paths to a model attribute is another way of transferring data across multiple JSPs.

Understanding the relational mapping between form actions and the Controller class helps understand and control the flow of where the user goes.

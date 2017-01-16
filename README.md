# bikeAid

Cycle related legal information provided in times of need.  

### API
Google Places API used for determining location of available resources and law firms after a road incident has occurred.  

Ruby Gem Documentation can be found on the link below.  

gem 'google_places'

https://github.com/qpowell/google_places

### PROCESS/APPROACH TAKEN

The project was broken down into different components following a user story and brainstormed within the team on the white board. Models were created to form the foundation of the app.  Later, multiple tables were added and their relationships formed the basis for the the model interactions. The resulting flow looked like this:

![Models](https://github.com/tecurtain/bikeAid/blob/master/app/assets/images/models.png?raw=true)

Ruby documentation was used where methods were unclear or unfamiliar.  

Console.rb file, and Pry were used extensively during the coding process to test functionality and correct errors or bugs.  

Table relationships were mapped out using diagrams on the white board to determine how to structure our table.  

![Table Relationship](https://github.com/tecurtain/bikeAid/blob/master/app/assets/images/models+relationships+goals.jpg?raw=true)


Everything was documented in Trello and the Readme file as events occurred.  This helped with keeping track of tasked assigned to individual team members as well as keep an up to date inventory of the app construction.  

#### TECHNOLOGIES USED </break>
Ruby, Backbone.js, Active Record, SQL, HTML, CSS, Handlebars.js.

#### FUTURE EXPANSION
##### (stretch goals)
* Rails Mailer to Send incident Report to Law Firm

* Auto Populate Law Firm Model via Google Places

* Repair/Bike Shop Locations (Google Maps API)

* Inform User if Law Law Firm Provides Free Advice

* Create a sensor that triggers when there is a bike accident, notifying authorities and pinging the database to generate incident report.

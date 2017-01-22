# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Project #3: Building Your Own API

### Overview

You’ve already worked in small groups to accomplish various labs and exercises, but this time **we’re going to challenge you to work on a whole project with a small team.**

Not only will you be asked to **exercise additional creativity** in designing your own project, your instructors will partner you with other classmates to architect, design, and collaboratively build an API of your own design.

**This is meant to push you both technically and collaboratively.** It’s a lot harder to work in a team than to work by yourself, but that's most likely you’re going to find yourself doing in your first development job after WDI, and **it's important to learn how to work together.**

Make it work, and make it awesome.


---

### Technical Requirements

Your app must:

* build an API and a front-end that consumes it
* **Consume your own API** by making your front-end with HTML, Javascript, & jQuery
* **Craft thoughtful user stories together**, as a team
* **Manage team contributions and collaboration** using a standard Git flow on Github
* Layout and style your front-end with **clean & well-formatted CSS**
* **Deploy your application online** so it's publically accessible


---

### Necessary Deliverables

* A **working API, built by the whole team**, hosted somewhere on the internet
* A handmade front-end **that consumes your own API**, hosted somewhere on the internet
* A **link to your hosted working app** in the URL section of your Github repo
* A **team git repository hosted on Github**, with a link to your hosted project, and frequent commits from _every_ team member dating back to the _very beginning_ of the project
* **A ``readme.md`` file** with:
    * Explanations of the **technologies** used
    * A couple paragraphs about the **general approach you took**
    * **Installation instructions** for any dependencies
    * Link to your **user stories** – who are your users, what do they want, and why?
    * Link to your **wireframes** – sketches of major views / interfaces in your application
    * Descriptions of any **unsolved problems** or **major hurdles** your team had to overcome

---

# bikeAid

---

Cycle related legal information provided in times of need.  

### API

---

Google Places API used for determining location of available resources and law firms after a road incident has occurred.  

Ruby Gem Documentation can be found on the link below.  

gem 'google_places'

https://github.com/qpowell/google_places

### PROCESS/APPROACH TAKEN


---

The project was broken down into different components following a user story and brainstormed within the team on the white board. Models were created to form the foundation of the app.  Later, multiple tables were added and their relationships formed the basis for the the model interactions. The resulting flow looked like this:

![Models](https://github.com/tecurtain/bikeAid/blob/master/app/assets/images/models.png?raw=true)

Ruby documentation was used where methods were unclear or unfamiliar.  

Console.rb file, and Pry were used extensively during the coding process to test functionality and correct errors or bugs.  

Table relationships were mapped out using diagrams on the white board to determine how to structure our table.  

![Table Relationship](https://github.com/tecurtain/bikeAid/blob/master/app/assets/images/models+relationships+goals.jpg?raw=true)

When moving forward with the project, we conceptualized how the pages were going to look by drawing out how our views would render.   
![Views Layout](https://github.com/tecurtain/bikeAid/blob/master/app/assets/images/views_layout.jpg?raw=true)


Everything was documented in Trello and the Readme file as events occurred.  This helped with keeping track of tasked assigned to individual team members as well as keep an up to date inventory of the app construction.  


---

#### TECHNOLOGIES USED </break>
Ruby, Active Record, SQL, HTML, CSS, Handlebars.js, Bootstrap.


---

#### FUTURE EXPANSION
##### (stretch goals)
* Rails Mailer to Send incident Report to Law Firm

* Auto Populate Law Firm Model via Google Places

* Repair/Bike Shop Locations (Google Maps API)

* Inform User if Law Law Firm Provides Free Advice

* Create a sensor that triggers when there is a bike accident, notifying authorities and pinging the database to generate incident report.

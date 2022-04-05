# ValetBike

Smith College CSC223: Software Engineering
Group B ValetBike Project

## Run instructions:
### Setup .env
* If not already created, create a file called '.env' in the valetbike root directory. The file structure should look like:
MYSQL_USERNAME=<USERNAME> (replace <USERNAME> with db username)
MYSQL_PASSWORD=<PASSWORD> (replace <PASSWORD> with db password)
MYSQL_SOCKET=/tmp/mysql.sock (or your OS's MySQL socket file location)
  
### Make sure all gems and yarn dependencies are installed
* yarn
* bundle install

### Populate database
* rake db:migrate
* rake import_stations_csv:import_stations
* rake import_bikes_csv:import_bikes

### Run
* rails s

## Changes to Gemfile
* Changed rails version to 3.1.0
* gem 'geocoder', '~> 1.3'
* gem 'geokit-rails'


## Description of the Protype's functionality
* User can sign-up, log-in and remain logged in on the navbar.
* Users can view and navigate the map in the homepage.
* Users can edit their profile (email, first name and last name) and change thier password.
* Users can view stations and bikes at the stations page. Users can sort stations and search up stations.
* Users can click on a link to select an plan in the home page. Users can click on buttons to choose a subscription and check out on Stripe Checkout page.

## Recommended walkthrough steps to observe key features
* Clicking on the website sents you to the home page containing the map, you can see the membership plans.
* The user can explore the map first. 
* They can explore the stations and bikes. The user can sort the bikes based on Identifier, Station Name and Station Address. The user can also search for specific stations.
* If the user is interested, they can sign up for an account, the will remain logged-in even after closing the website unless they specifically sign out. 
* Users can change thier password and also change thier profile.
* If a user wants to subscribe, they can see the plans on the homepage, choose a plan and checkout on the Stripe Checkout Page.

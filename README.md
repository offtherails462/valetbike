# ValetBike

Smith College CSC223: Software Engineering
Group B ValetBike Project

## Instruction to populate database and run
* rake import_stations_csv:import_stations
* rake import_bikes_csv:import_bikes
* rake db:migrate
* rails s

## Changes to .env and Gemfile
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

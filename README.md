## FindMy Barber:

URL to Front-End: https://medunn626.github.io/Full-Stack-Application_Front-End/
URL to API: https://fast-cliffs-72027.herokuapp.com/

The FindMy Barber app is a way for customers to find barbers in the area that meet their needs based on location, hairstyle, max price and most convienent time and day of the week (as well as how highly rated the barber is). It is a connection builder between the customer and the barber as much as it is a way for customers to share information with each other by recommending barbers.

## The Idea:

I came up with this idea because I feel like we are missing something like this, especially in the Boston area. I personally have struggled to find a new barber after my life long barber retired a couple years ago. The barbers I would find either did a terrible job on my hair, or they did a great job but were extremely rude or not available when I was. It turns out there is an existing app called Squire that allows functionality to search for barbers, book appointments and even pay online, but it is primarily based in New York City with little to no results for Boston or other cities.

## App Functionality (From a Back-End Perspective):

In this app there are 3 resources: customers, barbers and appointments.

Customers and barbers have a many-to-many relationship through appointments.

Barbers are open read and the app allows for index and show actions on the resource whether or not the user is logged in. The app allows for create actions on the resource only when the user is logged in. Update and destroy actions are not permitted on this resource.

Customers are protected. The app allows for create and index actions on this resource when a user is logged in. A customer has a one-to-one relationship with users so there is no need for show actions since customers cannot see or interact with each other. Update and destroy actions are not permitted on this resource.

Appointments are also protected. The app allows for create, index, update and destroy actions on this resource. It makes more sense from a user perspective to see all their appointments hence there is no need for a show action. Since this is protected, customers cannot see each others' appointments. Appointments have a one-to-many relationship with users.

See the front-end repo for details on the client perspective.

## Technlologies Used:

Coding Technologies:
- Ruby
- Rails
- Heroku

Helpful Resouces:
- Stack Overflow (a whole lot of it!)
- W3 Schools
- Ruby Docs
- Classmates and GA consultants

## Unsolved Problems:

I would like to resolve the following back-end problems for a future release:

- Add barber interface to allow for appointment tracking
- Make barbers user-owned resources so that they can be updated and deleted more easily

## Planning & Development Process:

The process for developing this app was as follows:
- Review requirements
- Sketch wireframes, ERD and come up with user stories (this was continuous throughout the first few days, even into coding)
- Setup back end and front end apps in Heroku and Github
- Create tables without inheriting from OpenReadController or ProtectedController, test using curl scripts.
- Update tables so they function while inheriting from OpenReadController or ProtectedController, test using curl scripts.
- Create HTML and CSS to build the look and feel of the app.
- Create JavaScript index file
- Create Barber CRUD JS files
- Create Customer CRUD JS files
- Create Appointments CRUD JS files
- Test the app and fix defects.
- Provide finishing touches such as bug fixes and styling.

## ERD:
https://user-images.githubusercontent.com/17644549/31824056-ed4e0c48-b57b-11e7-871f-6862d30a157d.png

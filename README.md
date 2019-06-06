# Budgeter

### How It Works
The user will input ane income and a date it was deposited on.  The user will then
add bills that will subtract from the total income.  The user will be able to monitor
their income based on how the amount of bills they have and the amount of those bills.

#### Client Repo and Deployed Site
Repo: https://github.com/NateMail/budgeter

Site: https://natemail.github.io/budgeter

#### Back End Repo and Site
Repo: https://github.com/NateMail/budgeter-backend

Site: https://protected-shelf-13071.herokuapp.com/

### Technologies Used
Ruby, Rails

### Unsolved Problems
I'd like to be able to subtract the amount of the bill based on the date it is due
if the date it is due is less than the deposited date.  I'd also like to add a
feature where it updates the income and bills every month.  If they are monthly.


### Planning Process
With the front end I was first testing to see if I could create an income resource
and then be able to show it.  After that I wanted to be able to destroy and update
this resource.  I then got crud down for the second user resource.  Next I moved onto
setting up the correct routes and making sure I was able to see the correct resources at the
right times.  If I got stuck on a route or displaying something at the right time I would
plug and play until I was able to get the correct response I needed.

### ERD
https://imgur.com/a/BcZZw1J

### Paths
| Verb | URL | Route |
|------|-----|-------|
| POST | /sign-up | users/create |
| POST | /sign-in | users/create |
| DELETE | /sign-out | users/destroy |
| PATCH | /change-password | users/update |
| POST | /monthlies | /monthlies |
| PATCH | /monthlies/:id/update | /monthlies/:id/update |
| DELETE | /monthlies/:id | /monthlies/:id |
| GET | /monthlies | /monthlies |
| POST | /bills | /bills |
| PATCH | /bills/:id/update | /bills/:id/update |
| DELETE | /bills/:id | /bills/:id |
| GET | /bills | /bills |


### Instructions
fork and clone this repo and bundle install

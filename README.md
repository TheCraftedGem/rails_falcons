# Rails Falcons

This app consumes the Fanstasy Data Api.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

From GitHub clone down repository using the following commands in terminal:
* `git clone git@github.com:thecraftedgem/rails_falcons.git`
* `cd rails_falcons`

### Prerequisites

You will need Rails installed and verify that it is version 5.2

To check your version using terminal run: `rails -v` in the command line.
If you have not installed rails, in terminal run: `gem install rails -v 5.2` in the command line.


### Installing

Open terminal and run these commands:
* `bundle`
* `bundle update`
* `figaro install`
* in your config/applicaion.yml file add your keys with these names:

  * `FANTASY_KEYS:`

* `rails db:{create,migrate,seed}`


### Using the App

#### Endpoints
To view these endpoints run your server using the command: `rails s`


#### Sports Team News - api/v1/news?name={TEAM NAME ABV}

A user can query this endpoint with a NFL TEAM'S abbreviated name to show the recent news for that Football Team.

example request:
````
GET localhost:3000/api/v1/news?name=Atl <-- The Atlanta Falcons
````

example response:

````json
{
    "data": {
        "id": "1",
        "type": "team",
        "attributes": {
            "title": "DaeSean Hamilton Scores First Career TD ",
            "content": "Denver Broncos wide receiver Daesean Hamilton caught seven of nine targets for 47 yards in the Broncos 20-14 loss to the 49ers Sunday. Hamilton caught a one-yard touchdown pass late in the fourth quarter providing not only his first-career TD reception, but a bow for the day which saw him set new career-highs in both receptions and yards. With Emmanuel Sanders (Achilles) being placed on IR, Hamilton could continue to see an increased role for the Broncos down the stretch and will look to keep things rolling against the Browns in Week 15. 
"}

#### Create an account - api/v1/users

A user can create an account in our system by sending their email and password through the body of their request.

example request:
````
POST localhost:3000/api/v1/users

body_form_data:
{
  email: what@example.com,
  password: password
}


#### Login - api/v1/sessions

A user can log into their account using the email and password they used to create their account a response.
````
POST localhost:3000/api/v1/sessions


#### Favoriting News Stories - /api/v1/favorites

When logged in under  a session a user can add favorite news stories to their favorited news.

POST localhost:3000/api/v1/favorites


#### Listing Favorite News Stories - /api/v1/favorites

A user can generate a list of their favorited news stories that includes the stories for their favorited teams.


## Running the tests

* Note: Before running RSpec, ensure you're in the project root directory.

From terminal run: `bundle exec rspec`

After RSpec has completed, you should see all tests passing as GREEN.  Any tests that have failed or thrown an error will display RED.  Any tests that have been skipped will be displayed as YELLOW.

You can see all the tests by viewing the spec folder.  


## Built With

* Rails
* RSpec
* ShouldaMatchers
* SimpleCov
* PostgreSQL
* Faraday
* Figaro
* Bcrypt

## Author

* Melvin Cedeno - Github: [thecraftedgem](https://www.github.com/thecraftedgem)

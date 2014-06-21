#Search App

##Intent

This app is a simple jumping-off point for learning about simple search in ruby & more advanced search powered by [Postgresql](http://www.postgresql.org/). Originally written for the [Atlanta Ruby User Group](http://www.meetup.com/atlantaruby/) intermediate ruby study group. 

##Requirements

* Ruby 2.1.0 
* Rails 4.1.1
* [Postgresql](http://www.postgresql.org/)


##Setup
1. Clone this repo

2. Start the Postgres Server
	`postgres -D /usr/local/pgsql/data`
	Detailed instructions can be found [here](http://www.postgresql.org/docs/9.3/static/server-start.html),  OSX users may be interested in using [Postgres.App](http://postgresapp.com/)
3. `Bundle Install` to install gems & dependencies
4. `rake db:setup` to create database, run migrations & seed database (if this step fails ensure you have postgres running)
5. `rails server` to ensure everything is in proper working condition

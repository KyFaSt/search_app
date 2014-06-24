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

##Branches

Because this app is intended for educational purposes, branches are maintained
for feature steps of the process:

* [1_set_up_simple_search](https://github.com/KyFaSt/search_app/tree/1_set_up_simple_search) contains code for a simple search on one column in 
one model
* [2_set_up_multi-col_insensitive_search](https://github.com/KyFaSt/search_app/tree/2_set_up_multi-col_insensitive_search) builds on the previous branch and 
contains code for a multi column, case-insensitive search
* [3_set_up_advanced_postgres_search](https://github.com/KyFaSt/search_app/tree/3_set_up_advanced_postgres_search) builds on the previous branch and contains
code for a search that takes advantage of Postgres' full-text search & search
result rank



[TOC]

# General Information

The project was built using Ruby 2.3.3 and Rails framework 5.1.4. Database management system is SQLite3. The project was built on Ubuntu 14.04.5 LTS.


# Installation

Once you have Ruby, SQLite3 server and Git installed in your system you can clone the project from Github and run bundle install on the project root folder.

For database setup, run bundle exec rails db:create. This should create the database, for migrations run bundle exec rails db:migrate. Running bundle exec rails s will start the web server and the application can be accessed on http://localhost:3000.

# Ruby on Rails FizzBuzz application

`Ruby 2.3.1`

`Rails 5.0.0.1`

## Development

### Setup

After run `bin/setup` which will -

* Install Bundler
* Run bundle to ensure all gems are installed
* Copy the database.yml.sample file from config/database.yml.sample to config/database.yml (Edit this file to suit your development environment)
* Set up the database from the structure in `db/schema.rb`
* Clear logs and tmp files
* Restart the application server

### Docker setup (Optional)

Use the database.yml.example for docker development. `cp config/database.yml.docker config/database.yml`

Download the images, build the container and run the application

`docker-compose up`

### Start the server

`bin/rails s`

Navigate to `http://localhost:3000`

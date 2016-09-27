# Ruby on Rails FizzBuzz application

## Development

### Database setup

Copy `config/database.yml.example` to `config/database.yml` and update to suit your development environment.

`cp config/database.yml.example config/database.yml`

After run `bin/setup` which will -

* Install Bundler
* Run bundle to ensure all gems are installed
* Set up the database from the structure in `db/schema.rb`
* Clear logs and tmp files
* Restart the application server

### Start the server

`bin/rails s`

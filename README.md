# README
This directory is a server application using Ruby on Rails.


# Install
1. Copy `template.env` and rename the file name to `development.env`.
2. Add values to `development.env`.
3. Run `docker compose exec api_server bundle exec rails db:create RAILS_ENV=development`

# Update database schema
1. Fix `Schemafile`
2. Run `docker compose exec api_server bundle exec ridgepole --config ./app/config/database.yml --apply --dry-run` to dry run.
3. Run `docker compose exec api_server bundle exec ridgepole --config ./app/config/database.yml --apply` to update schema.

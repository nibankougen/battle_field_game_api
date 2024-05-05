# README
This directory is a server application using Ruby on Rails.

# Getting Started
1. Copy `.env.template` and rename the file name to `.env`.
2. Add values to `.env`.
3. Run `docker compose exec api_server bundle exec rails db:create`

# Update database schema
1. Fix `Schemafile`
2. Run `docker compose exec api_server bundle exec ridgepole --config ./config/database.yml --apply --dry-run` to dry run.
3. Run `docker compose exec api_server bundle exec ridgepole --config ./config/database.yml --apply` to update schema.

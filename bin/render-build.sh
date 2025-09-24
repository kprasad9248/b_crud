#!/bin/bash
set -o errexit

# Install gems
bundle install

# Precompile assets (if you have any)
bundle exec rails assets:precompile

# Don't run db:seed here — run it after deploy manually
# bundle exec rails db:seed

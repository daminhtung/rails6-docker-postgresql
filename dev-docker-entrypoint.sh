#!/bin/sh

set -e

echo "ENVIRONMENT: $RAILS_ENV"

# Check bundle
bundle check || bundle install

# Remove pid from previouse session (puma server)

rm -f $APP_PATH/tmp/pids/server.pid

# Run anything by prepending bundle exec to the passed
bundle exec ${@}
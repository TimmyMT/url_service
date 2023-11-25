#!/bin/bash
set -e

rm -f /url_service/tmp/pids/server.pid

bundle
bundle exec rails db:create
bundle exec rails db:migrate

exec "$@"

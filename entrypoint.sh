#!/bin/sh
set -e
rm -f /Rails-MySQL/tmp/pids/server.pid
exec "$@"

#!/bin/sh

set -e
# Any subsequent(*) commands which fail will cause the shell script to exit immediately

# move here
cd "$(dirname "$0")"

/usr/bin/docker-compose pull
/usr/bin/docker-compose down --remove-orphans
/usr/bin/docker volume rm -f docker_rails_public
/usr/bin/docker-compose up -d

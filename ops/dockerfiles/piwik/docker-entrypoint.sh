#!/bin/bash
set -e

cd /var/www/html

if [ ! -e piwik.php ]; then
	cp -ax /usr/src/piwik/* .
	chown -R docker .
fi

exec "$@"

#!/bin/sh

if ! [ -f /data/.nodeinfo ]; then
	devpi-init --serverdir /data
fi

exec "$@"

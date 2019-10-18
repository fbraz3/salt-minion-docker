#!/bin/bash

if [ -n "$MINION_ID" ]; then
	echo "$MINION_ID" > /etc/salt/minion_id
	echo "$MINION_ID" > /etc/hostname
fi

if [ -n "$SALT_MASTER" ]; then
	sed -i '/^master/d' /etc/salt/minion
	echo "master: $SALT_MASTER" >> /etc/salt/minion
fi

/etc/init.d/salt-minion start

/bin/bash

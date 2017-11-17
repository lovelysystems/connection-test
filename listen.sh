#!/bin/sh


for up in $UDP_PORTS
do
 echo "listening on port $up UDP"
 sh -c "while true ; do nc -u -lk -p $up -e ./cmd.sh ; done" &
done

for tp in $TCP_PORTS
do
 echo "listening on port $tp TCP"
 sh -c "while true ; do nc -lk -p $tp -e ./cmd.sh ; done" &
done

tail -f /dev/null

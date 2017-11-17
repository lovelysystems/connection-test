#!/bin/sh

$CMD
echo "$(date): $(head -n 1)" > /dev/pts/0

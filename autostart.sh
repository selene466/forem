#!/bin/bash

echo -n "============="
echo -n "SERVER START"
echo -n "============="
(trap 'kill 0' SIGINT; bundle exec sidekiq & ./bin/startup & wait)

echo -n "==============="
echo -n "SERVER SHUTDOWN"
echo -n "==============="

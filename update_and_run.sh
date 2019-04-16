#!/bin/bash

# Runs the update script, moves server.cfg into the right place, then runs
# the server.

./update.sh
cp server.cfg tf2/tf/cfg/
./tf.sh

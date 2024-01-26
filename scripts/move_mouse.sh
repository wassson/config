#!/bin/bash

while true
do
  x=$((RANDOM % 1920))
  y=$((RANDOM % 1080))

  cliclick m:"$x","$y"

  sleep 5
done


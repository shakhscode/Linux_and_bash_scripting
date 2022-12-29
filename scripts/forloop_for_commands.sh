#!/bin/bash

for command_output in pwd date ls
do
  echo "------Output of $command_output---------------"
  $command_output
done
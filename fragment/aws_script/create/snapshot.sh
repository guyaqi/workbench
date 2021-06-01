#!/bin/bash

instances=$(cat ./aws-volumes.txt)

for item in ${instances[*]}; do
  aws ec2 create-snapshot --volume-id $item --description "Migration: Snapshot from aws-client"
done

#!/bin/bash

# snapshots=$(cat ./aws-snapshots.txt)
read snapshots

for item in ${snapshots[*]}; do
  res=$(./create/instance/by-snapshot/one.sh $item)
  instance_id=$(echo $res | jq -r '.Instances[0].InstanceId')
  echo "$item $instance_id"
done
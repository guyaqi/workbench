#!/bin/bash

instances=$(cat ./aws-instances.txt)

for item in ${instances[*]}; do
  aws ec2 describe-instances --instance-ids $item | jq -r '.Reservations[0].Instances[0].BlockDeviceMappings[0].Ebs.VolumeId'
done

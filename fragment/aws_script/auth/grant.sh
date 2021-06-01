#!/bin/bash

instances=$(cat ./aws-instances.txt)

for item in ${instances[*]}; do
  aws ec2 associate-iam-instance-profile \
    --instance-id $item \
    --iam-instance-profile Name="ec2-adminrole" \
    --region=ap-southeast-1
done

#!/bin/bash

snap_id=$1

if [[ "$snap_id" == "" ]]; then
  echo "usage: command snap_id"
  exit
fi

hdd_size=1300

aws ec2 run-instances \
  --image-id ami-0150db28ac47fe97d \
  --count 1 \
  --instance-type m5a.xlarge \
  --key-name gbt_mi \
  --security-group-ids sg-0d793079 \
  --subnet-id subnet-66994f00 \
  --block-device-mappings --block-device-mappings "[{ \"DeviceName\": \"/dev/sda1\", \"VirtualName\": \"string\", \"Ebs\": { \"DeleteOnTermination\": true, \"Iops\": 3000, \"SnapshotId\": \"snap-0249118bfef0c7693\", \"VolumeSize\": 8, \"VolumeType\": \"gp3\", \"Encrypted\": false } }, { \"DeviceName\": \"/dev/sdb\", \"VirtualName\": \"string\", \"Ebs\": { \"DeleteOnTermination\": true, \"SnapshotId\": \"snap-02a5c025fe19087cb\", \"VolumeSize\": $hdd_size, \"VolumeType\": \"st1\", \"Encrypted\": false } }]"


#!/usr/bin/env bash

token_expiration=$(aws configure get expiration)
now=$(date '+%Y-%m-%d %H:%M:%S')
if [[ $now < $token_expiration ]]
then
  aws_status='aws token active'
else
  aws_status='aws token expired'
fi
echo $aws_status

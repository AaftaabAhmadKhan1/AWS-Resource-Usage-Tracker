#!/bin/bash

####################
# Author: Aaftaab Ahmad Khan
# Date: 01/07/2024
#
# Version: v1
#
# This script will report the aws resource usage
####################
set -x
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "Print list of s3 buckets"
 aws s3 ls > resourceTracker

# list EC2 Instances
echo "Print list of ec2 instances"
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'> resourceTracker

# list lambda
 echo "Print list of lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of IAM Users"
aws iam list-users


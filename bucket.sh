#!/bin/bash
export AWS_DEFAULT_REGION=us-east-1
aws s3api create-bucket --bucket abdnikam2
aws s3api put-object --bucket abdnikam2 --key dev/eks-cluster/
aws s3api put-object --bucket abdnikam2 --key dev/aws-lbc/
aws s3api put-object --bucket abdnikam2 --key dev/aws-lbc-ingress/

aws dynamodb create-table \
    --table-name abdnikam-lbc \
    --attribute-definitions \
        AttributeName=LockID,AttributeType=S \
    --key-schema \
        AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5
        
aws dynamodb create-table \
    --table-name abdnikam \
    --attribute-definitions \
        AttributeName=LockID,AttributeType=S \
    --key-schema \
        AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5

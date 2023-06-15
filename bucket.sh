#!/bin/bash
aws s3api create-bucket --bucket abdnikam2
aws s3api put-object --bucket abdnikam2 --key dev/eks-cluster/
aws s3api put-object --bucket abdnikam2 --key dev/aws-lbc/
aws s3api put-object --bucket abdnikam2 --key dev/aws-lbc-ingress/

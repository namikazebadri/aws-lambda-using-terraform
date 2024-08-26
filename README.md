# AWS Lambda Golang using Terraform

This project consists of lambda functions which deployed to aws using terraform.

## Requirements

1. Go >= 1.20.5
2. AWS IAM Account access key with these permissions:
   - AmazonSQSFullAccess
   - AWSLambda_FullAccess
   - CloudWatchFullAccess
   - IAMFullAccess

## Terraform Init

```shell
terraform init
```

## Terraform Plan

```shell
TF_VAR_ENV=DEV terraform plan
```

## Terraform Apply

```shell
TF_VAR_ENV=DEV terraform apply
```
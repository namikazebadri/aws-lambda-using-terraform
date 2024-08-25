# AWS Lambda Golang using Terraform

This project consists of lambda functions which deployed to aws using terraform.

## Terraform Init

```shell
terraform init
```

## Terraform Plan

```shell
TF_VAR_LAMBDA_ENV=DEV terraform plan
```

## Terraform Apply

```shell
TF_VAR_LAMBDA_ENV=DEV terraform apply
```
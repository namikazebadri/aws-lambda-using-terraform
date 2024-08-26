terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    archive = {
      source = "hashicorp/archive"
    }
    null = {
      source = "hashicorp/null"
    }
  }

  required_version = ">= 1.3.7"
}

provider "aws" {
  region  = "ap-southeast-1"
}

module "cart_ping" {
  source = "./lambda/cart/ping"
  iam_role = aws_iam_role.lambda.arn
  ENV = var.ENV
}

module "order_ping" {
  source = "./lambda/order/ping"
  iam_role = aws_iam_role.lambda.arn
  ENV = var.ENV
}

module "product_ping" {
  source = "./lambda/product/ping"
  iam_role = aws_iam_role.lambda.arn
  ENV = var.ENV
}

module "user_ping" {
  source = "./lambda/user/ping"
  iam_role = aws_iam_role.lambda.arn
  ENV = var.ENV
}

output "status" {
  value = "Success"
}
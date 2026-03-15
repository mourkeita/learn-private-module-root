terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.21.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "git::https://github.com/mourkeita/terraform-aws-s3-webapp.git?ref=1.0.1"
  name   = var.name
  region = var.region
  prefix = var.prefix
}

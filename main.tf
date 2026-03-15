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
  source  = "git::https://github.com/mourkeita/terraform-s3-webapp.git?ref=v1.0.0"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}

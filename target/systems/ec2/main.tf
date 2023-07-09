terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "server" {
    source = "https://github.com/pretei45/base-iac/tree/main//modules/ec2"
    num = 5
}

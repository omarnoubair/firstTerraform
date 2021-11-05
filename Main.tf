terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# definition provider
provider "aws" {
  region = "${var.vpc-region}"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=1"
    }
  }

  backend "s3" {
    region = "eu-west-2"
    bucket = "kensko"
    key    = "kensko/dev/terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region
}
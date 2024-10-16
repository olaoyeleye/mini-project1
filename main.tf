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
eu-west-2   s3  kensko/kensko/dev/terraform.tfstate
eu-west-2   s3  kensko/kensko/prod/terraform.tfstate
eu-west-2   s3  kensko/kensko/test/terraform.tfstate

provider "aws" {
  region = var.aws_region
}
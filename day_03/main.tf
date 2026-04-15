terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# configure AWS provider 
provider "aws" {
  region = "us-east-1"
}

# create S3 bucket 
resource "aws_s3_bucket" "first_bucket" {
    bucket = "techtuts1"

    tags = {
        Name = "My bucket"
        Environment = "Dev"
    }
}

# first step in terminal will always be tf init
# if i wanna auto approve 
# tf apply --auto-approve 
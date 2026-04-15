# aws provider basic setup
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# create a VPC --> creating a resource
# aws_vpc is the resource type 
# example is the local name of the resource through which we will refer it internally within terraform
resource "aws_vpc" "example"{
    cidr_block = "10.0.0.0/16"
}

# multiple provider versions
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

# first command --> tf init

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "devopskk-remote-state"
    key    = "ec2-module-test"
    region = "us-east-1"
    dynamodb_table = "devopskk-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
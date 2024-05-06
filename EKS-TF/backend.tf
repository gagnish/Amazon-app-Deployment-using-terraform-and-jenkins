terraform {
  backend "s3" {
    bucket         = "terrabucket22"
    region         = "us-east-1"
    key            = "EKSterraform/terraform.tfstate"
    dynamodb_table = "lock-table"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
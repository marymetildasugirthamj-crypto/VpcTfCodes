terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "my-kops-state-greens-2025"
    key    = "devops/terraform.tfstate"
    region = "us-east-1"   
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}



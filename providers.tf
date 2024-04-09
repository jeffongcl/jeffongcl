terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }

 backend "s3" {
     region         = "us-west-1"
     bucket         = "terraform-jeffong-s3"
     key            = "terraform.tfstate"
     dynamodb_table = "terraform-jeffong-dynamotable"
    

}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  access_key = "your_access_key"
  secret_key = "your_secret_key"
  region = "us-east-1"
  skip_credentials_validation = true
}
# please do not skip credential validation for this is just for my own personal use and practice 

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  access_key = "AKIATYYNU3AJXBS5XYXA"
  secret_key = "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"
  region = "us-east-1"
  skip_credentials_validation = true
}

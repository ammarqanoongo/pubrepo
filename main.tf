terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  access_key = "AKIAZGTQYHDKEELNO322"
  secret_key = "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"
  region = "us-east-2"
}
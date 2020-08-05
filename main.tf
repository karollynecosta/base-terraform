provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  backend "s3" {
    bucket = "dev-terraform-karollyne"
    key = "terraform-init.tfstate"
    region = "us-east-1"
  }
}
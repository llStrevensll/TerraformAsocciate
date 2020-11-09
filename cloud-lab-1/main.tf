# Using a single workspace:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "strevens"

    workspaces {
      name = "TerraformAsocciate"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_s3_bucket" "test" {
    bucket_prefix = "test-"
}
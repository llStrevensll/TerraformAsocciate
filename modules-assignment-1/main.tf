provider "aws" {
    region = "us-east-1"
}

module "windows" {
    source = "./ec2-module/"
    availability_zone = "us-east-1a"
}
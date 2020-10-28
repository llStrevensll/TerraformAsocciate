provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example"{
    ami = "ami-0412e100c0177fb4b"
    instance_type = "t2.micro"
}
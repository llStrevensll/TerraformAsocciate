provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example1"{
    ami = "ami-0947d2ba12ee1ff75"
    instance_type = "t2.micro"
    tags = {
        Name = "test"
        environment = "dev"
    }
}
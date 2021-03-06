provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-0947d2ba12ee1ff75"
    instance_type = "t2.micro"
    tags = {
        Name = "testing-tag"
        environment = "dev"
        architecture = "microservices"
    }
}

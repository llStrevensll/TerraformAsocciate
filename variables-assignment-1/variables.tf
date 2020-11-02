variable "region" {
    type = string
    default = "us-east-1"
}

variable "ami_id" {
    type = string
    default = "ami-0947d2ba12ee1ff75"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "test_instance_1"
        environment = "test"
    }
}
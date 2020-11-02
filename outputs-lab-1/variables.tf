variable "region" {
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "image_id" {
    type = string
    default = "ami-0947d2ba12ee1ff75"
}
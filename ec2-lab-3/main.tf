provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "tags-test" {
    ami = "ami-0947d2ba12ee1ff75"
    instance_type = "t2.micro"
}

resource "aws_ebs_volume" "example" {
    availability_zone = "us-east-1c"
    size = 40
}

resource "aws_volume_attachment" "ebs_att" {
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.example.id
    instance_id = aws_instance.tags-test.id
}
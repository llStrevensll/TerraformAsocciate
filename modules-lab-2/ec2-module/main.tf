#AWS Instance
resource "aws_instance" "example" {
  ami               = data.aws_ami.windows.id
  availability_zone = var.availability_zone
  instance_type     = "t2.micro"

  tags = {
    Name = "ec2-module2"
  }
}

#AMI Filter for Windows Server 2019 Base
data "aws_ami" "windows" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["801119661308"] # Canonical
}

#EBS Volume and Attachment
resource "aws_ebs_volume" "example" {
  availability_zone = var.availability_zone
  size              = 40

  tags = {
    Name = "Data Volume Example"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.example.id
}
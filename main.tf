terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

resource "aws_instance" "my-ec2" {
  ami                     = "${var.ami_id}"
  instance_type           = "${var.instance_type}"
  availability_zone       = "${var.aws_region}"
  key_name                = "${var.key_pair}"
  security_groups         = "${var.security_groups}"
  subnet_id               = "${var.subnet_id}"
  iam_instance_profile    = "${var.iam_instance_profile}"

  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
    delete_on_termination = "${var.delete_on_termination}"
  }

  ephemeral_block_device {
    device_name = "${var.device_name}"
  }

  tags = {
    Name        = "${var.name}"
    Owner       = "${var.owner}"
    Description = "This is a demo description"
  }
}

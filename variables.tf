variable "aws_region" {
  description = "AWS region"
  default = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile used for provider connection"
  default = "default"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default = "ami-2e1ef954"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "Provisioned by Terraform"
}

variable "owner" {
  description = "Name to pass to the Owner tag"
  default = "Pizza-Pizza"
}

variable "description" {
  description = "So meta"
  default = "Foo"
}

variable "iam_instance_profile" {
  description = "The role to be attached"
  default = ""
}

variable "device_name" {
  description = "The Device Name"
  default = ""
}

variable "delete_on_termination" {
  description = "delete the volume on termination"
  default = "true"
}

variable "volume_size" {
  description = "volume size"
  default = ""
}

variable "subnet_id" {
  description = "subnet_ids"
  default = ""
}

variable "key_pair" {
  description = "key name"
  default = ""
}

variable "security_groups" {
  description = "security groups"
  default = []
  type = "list"
}

variable "volume_type" {
  description = "volume type"
  default = ""
}

variable "public_dns" {
  description = "public_dns"
  default = ""
}

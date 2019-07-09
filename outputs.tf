output "public_dns" {
  value = "${aws_instance.my-ec2.public_dns}"
}

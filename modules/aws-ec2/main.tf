resource "aws_instance" "ec2_instance" {
  ami                    = "${lookup(var.ami_devops, var.region)}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  monitoring             = true
  user_data              = "${var.user_data}"
  vpc_security_group_ids = [
    "${aws_security_group.instance_security_group.id}"
  ]
}




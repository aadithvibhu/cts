resource "aws_instance" "ec2_instance" {
  count                  = "${var.sg_default}"
  ami                    = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  monitoring             = true
  user_data              = "${var.user_data}"
  vpc_security_group_ids = [
    "${aws_security_group.instance_security_group.id}"
  ]
}




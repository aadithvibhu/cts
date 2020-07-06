resource "aws_instance" "ec2_devops" {
  count                   = 1
  ami                     = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type           = "t2.micro"
  iam_instance_profile    = "ec2admin"
  key_name                = "${aws_key_pair.income.key_name}"
  monitoring              = true
  subnet_id               = "${aws_subnet.wp-subnet-private-1.id}"
  user_data               = file("../scripts/bootstrap.sh")
  disable_api_termination = false
  vpc_security_group_ids  = [
    "${aws_security_group.wp-sg.id}"
  ]

  root_block_device {
    volume_type = "gp2"
    volume_size = 8
    delete_on_termination = true
  }

  tags = {
    Name                     = format("ec2_devops-%02d", count.index + 1)
    Type                     = "EC2 Instance"
    Monitoring               = "true"
 }
}


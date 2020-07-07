module "appserver" {
  source = "../modules/aws-ec2"
  count                   = 1
  instance_type           = "t2.micro"
  key_name                = "${aws_key_pair.kp_devops.key_name}"
  monitoring              = true
  subnet_id               = "${element(random_shuffle.random_linux_host.result,0)}"
  user_data               = file("../scripts/bootstrap.sh")
  disable_api_termination = false
  vpc_security_group_ids  = [
    "${aws_security_group.sg_devops.id}"
  ]

  root_block_device {
    volume_type = "gp2"
    volume_size = 8
    delete_on_termination = true
  }

  tags = {
    Name                     = format("webserver-%02d", count.index + 1)
    Type                     = "EC2 Instance"
    Monitoring               = "true"
 }
}


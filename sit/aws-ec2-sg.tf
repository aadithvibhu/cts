resource "aws_security_group" "sg_devops" {
  name        = "sg_devops"
  description = "Allow inbound traffic"
  vpc_id      = "${data.aws_vpc.vpc_devops.id}"

	tags {
		Name = "sg_devops"
	}

	ingress {
	  from_port   = 80
	  to_port     = 80
	  protocol    = "tcp"
	  cidr_blocks = [aws_vpc.vpc_devops.cidr_block]
	}

	ingress {
	  from_port   = 22
	  to_port     = 22
	  protocol    = "tcp"
	  cidr_blocks = [aws_vpc.vpc_devops.cidr_block]
	}

	egress {
	  from_port   = 0
	  to_port     = 0
	  protocol    = "-1"
	  cidr_blocks = ["0.0.0.0/0"]
	}
}

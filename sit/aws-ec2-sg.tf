resource "aws_security_group" "sg_devops" {
  name        = "sg_devops"
  description = "Allow inbound traffic"
  vpc_id      = "${vpc.id}"

	tags {
		Name = "sg_devops"
	}

	ingress {
	  from_port   = 80
	  to_port     = 80
	  protocol    = "tcp"
	  cidr_blocks = [vpc.cidr_block]
	}

	ingress {
	  from_port   = 22
	  to_port     = 22
	  protocol    = "tcp"
	  cidr_blocks = [vpc.cidr_block]
	}

	egress {
	  from_port   = 0
	  to_port     = 0
	  protocol    = "-1"
	  cidr_blocks = "${var.default_route}"
	}
}

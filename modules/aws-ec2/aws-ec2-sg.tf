resource "aws_security_group" "instance_security_group" {
  count       = "${var.sg_default}"
  name        = "${var.environment}-${lower(var.app_key)}-instance-sg"
  description = "Ingress from papi to instances"
  vpc_id      = "${var.vpc_id}"

  tags = "${merge(map("Type", "EC2 Security Group"), map("Name", "${var.app_name}-${var.environment}-instance-sg"), map("Attachment", var.app_description), var.tag_map)}"


  lifecycle {
    create_before_destroy = true
  }
}




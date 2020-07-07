output "instance_security_group_id" {
  value = "${element(concat(aws_security_group.instance_security_group.*.id, list("null")), 0)}"
}

variable "default_route" {
    default = "0.0.0.0/0"
}


variable "ami_devops" {
	default = "ami-0615132a0f36d24f4"
}

variable "region" {
  default = "ap-southeast-1"
}

variable "instance_type" { default = "" }

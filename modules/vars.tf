
variable "vpc_cidr" {
	default = "10.0.0.0/16"
}


variable "pub_subnet_cidr" {
	type = "list"
	default = ["10.0.1.0/27"]
}

variable "web_subnet_cidr" {
	type = "list"
	default = ["10.0.2.0/27","10.0.3.0/27"]
}


variable "default_route" {
    default = "0.0.0.0/0"
}


variable "ami_devops" {
	default = ""
}
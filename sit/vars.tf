
variable "vpc_cidr" {
	default = "10.0.0.0/16"
}


variable "sub_public_cidr" {
          type = list(string)
          default = ["10.0.1.0/27"]
}

variable "sub_private_cidr" {
	  type = list(string)
	  default = ["10.0.2.0/27", "10.0.3.0/27"]
}


variable "default_route" {
    default = "0.0.0.0/0"
}


variable "ami_devops" {
	default = "ami-0615132a0f36d24f4"
}

variable "region" {
       default =  "ap-southeast-1"
}

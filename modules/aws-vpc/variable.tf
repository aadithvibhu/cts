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


variable "region" {
       default =  "ap-southeast-1"
}



variable "sg_default" { default = true }
variable "environment" {
  description = "development | testing | staging | production"
}

variable "app_key" { default = "" }
variable "vpc_devops_id" {}
variable "app_name" { default = "" }


variable "user_data" { default = "" }



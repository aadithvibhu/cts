variable "sg_default" { default = true }
variable "environment" {
  description = "development | testing | staging | production"
}

variable "app_key" { default = "" }
variable "vpc_devops_id" {}
variable "app_name" { default = "" }


variable "amis" {
  type = "map"
  default = {
    linux_ami = "ami-0615132a0f36d24f4"
  }
}

variable "region" {
  default = "ap-southeast-1"
}

variable "user_data" { default = "" }
variable "ec2_default" { default = true }
variable "environment" {
  description = "development | testing | staging | production"
}

variable "app_key" { default = "" }
variable "vpc_devops_id" {}
variable "app_name" { default = "" }

variable "user_data" { default = "" }

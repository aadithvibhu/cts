provider "aws" {
	region = "${var.region}"
}

module "vpc" {
  source = "../modules/aws-vpc"
}

terraform {
  backend "s3" {
  }
}


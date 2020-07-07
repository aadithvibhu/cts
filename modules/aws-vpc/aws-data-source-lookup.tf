data "aws_vpc" "vpc_devops" {
  filter {
    name   = "isDefault"
    values = ["false"]
  }
}


data "aws_subnet" "sub_data_devops" {
  count = 3

  filter {
    name   = "tag:Name"
    values = ["*tier3-${element(var.array_list_1_to_3, count.index)}"]
  }
}

data "aws_subnet" "sub_private_devops" {
  count = 3

  filter {
    name   = "tag:Name"
    values = ["*tier2-${element(var.array_list_1_to_3, count.index)}"]
  }
}

data "aws_subnet" "sub_public_devops" {
  count = 3

  filter {
    name   = "tag:Name"
    values = ["*tier1-${element(var.array_list_1_to_3, count.index)}"]
  }
}


data "aws_subnet_ids" "sub_data_devops" {
  vpc_id = "${data.aws_vpc.vpc_devops.id}"

  tags {
    Name = "*tier3*"
  }
}

data "aws_subnet_ids" "sub_private_devops" {
  vpc_id = "${data.aws_vpc.vpc_devops.id}"

  tags {
    Name = "*tier2*"
  }
}

data "aws_subnet_ids" "sub_public_devops" {
  vpc_id = "${data.aws_vpc.vpc_devops.id}"

  tags {
    Name = "*tier1*"
  }
}


resource "random_shuffle" "random_linux_host" {
  input = ["$data.aws_subnet_ids.sub_private_devops.ids}"]
  result_count =1
}


data "aws_availability_zones" "azs_devops" {}
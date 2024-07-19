data "aws_vpc" "default_vpc" {
  filter {
    name   = "tag:Name"
    values = ["default_vpc"]
  }
}

data "aws_security_group" "prod_ec2_bastion_host_security_group" {
  filter {
    name   = "group-name"
    values = ["prod_ec2_bastion_host_security_group"]
  }
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc.id]
  }
}

data "aws_subnet" "default_vpc_public_subnet_1" {
  filter {
    name   = "tag:Name"
    values = ["default_vpc_public_subnet_1"]
  }
  vpc_id = data.aws_vpc.default_vpc.id
}

data "aws_key_pair" "prod_eks_ec2_ssh_key" {
  key_name = "prod_eks_ec2_ssh_key"
}

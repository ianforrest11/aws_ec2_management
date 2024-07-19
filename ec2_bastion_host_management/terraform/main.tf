module "prod_eks_ec2_bastion_host" {
  source                      = "git@github.com:ianforrest11/terraform_templates.git//aws//ec2_bastion_host?ref=main"
  ami_id                      = var.prod_ami_id
  instance_type               = var.prod_instance_type
  subnet_id                   = data.aws_subnet.default_vpc_public_subnet_1.id
  vpc_id                      = data.aws_vpc.default_vpc.id
  key_name                    = data.aws_key_pair.prod_eks_ec2_ssh_key.key_name
  associate_public_ip_address = var.prod_associate_public_ip_address
  instance_name               = var.prod_instance_name
  environment                 = var.prod_environment
  security_group_ids          = [data.aws_security_group.prod_ec2_bastion_host_security_group.id]
}


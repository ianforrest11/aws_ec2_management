module "eks_ec2_ssh_key_pair_secret" {
  source              = "git@github.com:ianforrest11/terraform_templates.git//aws//ec2_key_pair?ref=main"
  algorithm           = var.eks_ec2_ssh_algorithm
  key_name            = var.eks_ec2_ssh_key_name
  rsa_bits            = var.eks_ec2_ssh_rsa_bits
}
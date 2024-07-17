module "prod_eks_ec2_ssh_key_pair_secret" {
  source              = "git@github.com:ianforrest11/terraform_templates.git//aws//ec2_key_pair?ref=main"
  key_name            = var.prod_eks_ec2_ssh_key_name
  public_key          = trimspace(data.aws_secretsmanager_secret_version.prod_eks_ec2_ssh_key_public_version.secret_string)
}
module "eks_cluster_creation" {
  source              = "git@github.com:ianforrest11/terraform_templates.git//aws/general_key_pair?ref=main"
  key_name            = var.prod_ec2_ssh_key_name
  public_key          = var.prod_ec2_ssh_key
}

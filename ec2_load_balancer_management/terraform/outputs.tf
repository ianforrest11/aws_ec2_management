output "private_key_pem" {
  value     = module.prod_eks_ec2_ssh_key_pair_secret.private_key_pem
  sensitive = true
}
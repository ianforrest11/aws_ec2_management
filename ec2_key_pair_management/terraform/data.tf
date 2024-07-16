# Lookup the secret by name
data "aws_secretsmanager_secret" "prod_eks_ec2_ssh_key_public" {
  name = "prod_eks_ec2_ssh_key_public"
}

# Retrieve the public key from the secret
data "aws_secretsmanager_secret_version" "prod_eks_ec2_ssh_key_public_version" {
  secret_id = data.aws_secretsmanager_secret.prod_eks_ec2_ssh_key_public.id
}
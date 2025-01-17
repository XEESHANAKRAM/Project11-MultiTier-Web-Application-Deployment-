module "public_bastion_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "public-bastion-sg"
  description = "Public ec2 instance"
  vpc_id      = module.vpc.vpc_id

  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags         = local.common_tags
}
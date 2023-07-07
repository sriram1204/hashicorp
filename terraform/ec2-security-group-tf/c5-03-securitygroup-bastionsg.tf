module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"
  
  name = "public-bastion-sg"
  description = "security group with ssh port open for everybody and all egress port"

  vpc_id = module.vpc.vpc_id

  #Ingress Rule and CIDR Blocks
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = [ssh-tcp]

  #Egress
  egress_rules = ["all-all"]
  tags = local.common_tags

}

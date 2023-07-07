module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"
  
  name = "private_sg"
  description = "security group with ssh port open for everybody and all egress port"

  vpc_id = module.vpc.vpc_id

  #Ingress Rule and CIDR Blocks
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules = ["ssh-tcp","http-80-tcp"]

  #Egress
  egress_rules = ["all-all"]
  tags = local.common_tags

}

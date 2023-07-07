output "public_bastion_sg_group_id" {
  description = "The ID of the security group"
  value       = module.public_bastion_sg.security_group_id
}

output "public_bastion_sg_group_vpc_id" {
  description = "The VPC ID of public sg"
  value       = module.public_bastion_sg.security_group_vpc_id
}

output "public_bastion_sg_group_name" {
  description = "The owner ID of public sg"
  value       = module.private_sg.security_group_owner_id
}

output "private_sg_group_id" {
  description = "The ID of the private security group"
  value       = module.private_sg.security_group_id
}

output "private_sg_group_vpc_id" {
  description = "The VPC ID of private sg"
  value       = module.private_sg.security_group_vpc_id
}

output "private_sg_group_name" {
  description = "The owner ID of private sg"
  value       = module.private_sg.security_group_owner_id
}



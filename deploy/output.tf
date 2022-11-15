output "ip_address_ubuntu" {
  value="ssh -i ssh-key ubuntu@${module.ec2_1.public_ip_address}"
}

output "ip_address_amazon" {
  value="ssh -i ssh-key ec2-user@${module.ec2_2.public_ip_address}"
}
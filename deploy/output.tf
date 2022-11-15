output "ip_address_ubuntu" {
  value=module.ec2_1.public_ip_address
}

output "ip_address_amazon" {
  value=module.ec2_2.public_ip_address
}
output "sg_id" {
  value=aws_security_group.sgrules-instance.id
}

output "sg_arn" {
  value=aws_security_group.sgrules-instance.arn
}

output "sg_name" {
  value=aws_security_group.sgrules-instance.name
}

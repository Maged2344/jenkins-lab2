output vpc_module_id {
  value       = aws_vpc.myvpc.id
}
output subnet_public1 {
  value = aws_subnet.subnet_public1.id
}
output securityfroup_ssh {
  value = aws_security_group.allow_ssh.id
}


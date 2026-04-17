output "message" {
  value = "Terraform root setup ready"
}

output "alb_dns" {
  value = aws_lb.alb.dns_name
}

output "db_private_ip" {
  value = aws_instance.db.private_ip
}


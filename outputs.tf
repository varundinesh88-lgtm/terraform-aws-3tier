output "vpc_id" {
  value = aws_vpc.core.id
}

output "public_subnet_ids" {
  value = [for s in aws_subnet.public : s.id]
}

output "alb_dns" {
  value = aws_lb.alb.dns_name
}

output "tg_arn" {
  value = aws_lb_target_group.tg.arn
}

output "asg_name" {
  value = aws_autoscaling_group.asg.name
}

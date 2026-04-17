resource "aws_autoscaling_group" "asg" {
  desired_capacity = 2
  max_size         = 2
  min_size         = 1

  vpc_zone_identifier = [
    module.vpc.public_subnet_1_id,
    module.vpc.public_subnet_2_id
  ]

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }

  target_group_arns = [aws_lb_target_group.tg.arn]
}


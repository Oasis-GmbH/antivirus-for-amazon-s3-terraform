resource "aws_lb_listener_rule" "Rule" {
  listener_arn = var.alb_listener_https_arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.TargetGroup[0].arn
  }

  condition {
    host_header {
      values = [var.alb_domain]
    }
  }
}
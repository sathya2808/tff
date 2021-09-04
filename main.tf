resource "aws_alb" "main" {
  name = var.name
  internal                         = var.internal_lb_value
  security_groups                  = var.security_group
  enable_cross_zone_load_balancing = "true"
  enable_http2                     = "true"
  subnets                          = var.subnet_ids

  #proxy_protocol_v2                 = "false"

  access_logs {
    bucket  = var.log_bucket
    prefix  = "elb-logs/${var.name}-alb-logs"
    enabled = var.environment == "staging" ? true : false
  }
  timeouts {
    create = "20m"
    update = "20m"
    delete = "15m"
  }
  tags = {
    Environment           = var.environment
    Name                  = "${var.name}-alb"
    billing_unit          = "bill_unit_name"
    project_unit          = "project_unit_name"
    Date                  = "current_date"
    Email                 = "mailer_list"
    games24x7-cost-center = "bill_unit_name"
    games24x7-pod         = var.pod
    games24x7-environment = "perf"
  }
}


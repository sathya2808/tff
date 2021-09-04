variable "name" {
  description = "AWS ALB Name"
}

variable "internal_lb_value" {
  type = bool
}

variable "environment" {
  description = "Environment Name"
}

variable "subnet_ids" {
  description = "A list of subnet IDs"
  type        = list(string)
}

variable "security_group" {
  description = "A list of SG IDs"
  type        = list(string)
}

variable "log_bucket" {
  default = "rc-stage-lb-logs"
}

variable "pod" {
  default = "shared"
}


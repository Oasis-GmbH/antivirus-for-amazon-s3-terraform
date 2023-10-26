variable "alb_listener_https_arn" {
    description = "ARN des Listeners für die Console"
    type = string
}

variable "alb_domain" {
    description = "Host-Domain für den ALB"
    type = string
}
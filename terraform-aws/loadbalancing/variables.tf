# --- loadbalancing/variables.tf ---

variable "public_subnets" {
  type = list(any)
}
variable "public_sg" {
  type = string
}
variable "tg_port" {
  type = number
}
variable "tg_protocol" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "lb_healthy_threshold" {
  type = number
}
variable "lb_unhealthy_threshold" {
  type = number
}
variable "lb_timeout" {
  type = number
}
variable "lb_interval" {
  type = number
}
variable "listener_port" {
  type = number
}
variable "listener_protocol" {
  type = string
}


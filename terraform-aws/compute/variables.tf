# --- compute/variables.tf ---

variable "instance_count" {
  type = number
}
variable "instance_type" {
  type = string
}
variable "public_sg" {
  type = string
}
variable "public_subnets" {
  type = list(any)
}
variable "vol_size" {
  type = number
}
variable "key_name" {
  type = string
}
variable "public_key_path" {
  type = string
}
variable "user_data_path" {
  type = string
}
variable "db_endpoint" {
  type = string
}
variable "dbuser" {
  type = string
}
variable "dbpassword" {
  type = string
}
variable "dbname" {
  type = string
}
variable "lb_target_group_arn" {
  type = string
}
variable "tg_port" {
  type = number
}

variable "private_key_path" {
  type = string
}

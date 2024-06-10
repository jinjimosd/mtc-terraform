# --- database/variables.tf ---

variable "db_storage" {
  type = number
}
variable "db_engine_version" {
  type = string
}
variable "db_instance_class" {
  type = string
}
variable "dbname" {
  type = string
}
variable "dbuser" {
  type = string
}
variable "dbpassword" {
  type = string
}
variable "db_subnet_group_name" {
  type = string
}
variable "vpc_security_group_ids" {
  type = list(any)
}
variable "db_identifier" {
  type = string
}
variable "skip_db_snapshot" {
  type = bool
}




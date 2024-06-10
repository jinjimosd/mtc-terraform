variable "image" {
  type        = map(any)
  description = "Image for container."
  default = {
    nodered = {
      dev  = "nodered/node-red:latest"
      prod = "nodered/node-red:latest-minimal"
    }
    influxdb = {
      dev  = "influxdb:2.7.6-alpine"
      prod = "influxdb:2.7.6-alpine"
    }
    grafana = {
      dev  = "grafana/grafana:latest-ubuntu"
      prod = "grafana/grafana-enterprise:latest-ubuntu"
    }
  }
}

variable "ext_port" {
  type = map(any)
  # sensitive = true

  # validation {
  #   condition     = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) >= 1980
  #   error_message = "The external port must be in the valid port range 0 - 65536"
  # }

  # validation {
  #   condition     = max(var.ext_port["prod"]...) < 1980 && min(var.ext_port["prod"]...) >= 1880
  #   error_message = "The external port must be in the valid port range 0 - 65536"
  # }
}

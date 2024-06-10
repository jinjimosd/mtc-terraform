# output "ip_address" {
#   # value       = join(":", [docker_container.nodered_container[*].network_data[0].ip_address, docker_container.nodered_container[*].ports[0].external])
#   value       = [for i in docker_container.nodered_container[*] : join(":", i.network_data[*].ip_address, i.ports[*].external)]
#   description = "The IP address of the container"
#   # sensitive = true
# }

# output "container_name" {
#   value       = docker_container.nodered_container.name
#   description = "The name of the container"
# }

output "application_access" {
  value = { for x in docker_container.app_container[*] : x.name => join(":", x.network_data[*].ip_address, x.ports[*].external) }
}

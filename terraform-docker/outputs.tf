# output "IP_Address" {
#   # value       = join(":", [docker_container.nodered_container[*].network_data[0].ip_address, docker_container.nodered_container[*].ports[0].external])
#   value       = flatten(module.container[*].ip_address)
#   description = "The IP address of the container"
#   # sensitive = true
# }

# output "Container_Name" {
#   value       = module.container[*].container_name
#   description = "The name of the container"
# }

output "application_access" {
  value       = [for x in module.container[*] : x]
  description = "The name and socket for each application"
}

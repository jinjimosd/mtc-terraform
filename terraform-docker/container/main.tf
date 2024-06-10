resource "random_string" "random" {
  count   = var.count_in
  length  = 4
  special = false
  upper   = false
}

resource "docker_container" "app_container" {
  count        = var.count_in
  name         = join("-", [var.name_in, terraform.workspace, random_string.random[count.index].result])
  image        = var.image_in
  network_mode = "bridge"
  ports {
    internal = var.int_port_in
    external = var.ext_port_in[count.index]
  }
  dynamic "volumes" {
    for_each = var.volumes_in
    content {
      container_path = volumes.value["container_path_each"]
      volume_name    = module.volume[count.index].volume_output[volumes.key]
    }
  }
  provisioner "local-exec" {
    command = "echo ${self.name}: ${join(":", self.network_data[*].ip_address, self.ports[*].external)} >> ${path.cwd}/containers.txt"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "rm -f ${path.cwd}/containers.txt"
  }
}

module "volume" {
  source = "./volume"
  count = var.count_in
  volume_count = length(var.volumes_in)
  volume_name = "${var.name_in}-${terraform.workspace}-${random_string.random[count.index].result}-volume"
}

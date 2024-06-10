data "terraform_remote_state" "kubeconfig" {
  backend = "remote"
  config = {
    organization = "dsodiary"
    workspaces = {
      name = "mtc-dev"
    }
  }
}
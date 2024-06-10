terraform {
  backend "remote" {
    organization = "dsodiary"
    workspaces {
      name = "mtc-dev-repo"
    }
  }
}
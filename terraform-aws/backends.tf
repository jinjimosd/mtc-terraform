terraform {
  cloud {
    organization = "dsodiary"

    workspaces {
      name = "mtc-dev"
    }
  }
}

terraform {
  cloud {
    organization = "dsodiary"

    workspaces {
      name = "mtc-k8s"
    }
  }
}

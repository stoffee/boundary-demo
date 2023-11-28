terraform {
  required_version = ">= 1.0"
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.65.0"
      #version = "0.76.0"
    }
  }
  cloud {
    organization = "cdunlap"
    workspaces {
      name = "boundary-demo-init"
    }
  }
}

provider "hcp" {
  project_id = "f4cfade2-df28-47f2-a365-28cd5d95d9a0"
}

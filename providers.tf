terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.73.2"
    }
  }
}

provider "proxmox" {
  endpoint  = "https://192.168.1.58:8006/"
  api_token = "terraform-prov@pve!terraform-api=${var.api_token}"
  insecure  = true
  ssh {
    agent    = true
    username = "terraform-prov"
  }
}

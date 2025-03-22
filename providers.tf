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
  api_token = "${var.terraform_api_user}@pve!${var.api_token_name}=${var.api_token}"
  insecure  = true
  ssh {
    agent    = true
    username = "${var.terraform_api_user}"
  }
}

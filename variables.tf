variable "terraform_api_user" {
  description = "The Terraform API user"
  type = string
}

variable "api_token_name" {
  description = "The Terraform API token name"
  type=string
}

variable "api_token" {
  description = "The Terraform API token"
  type = string
  sensitive = true
}

variable "iso_storage" {
  description = "The storage used as iso bank"
  type = string
  default = "local:iso/alpine-extended-3.21.3x86_64.iso"
}

variable "storage_pool" {
  description = "The storage pool to use for the VM disk"
  type = string
  default = "local-lvm"
}

##variable "ssh_public_key_file" {
##  description = "Path to the SSH public key file"
##  type = string
##}

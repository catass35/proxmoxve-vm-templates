variable "terraform_api_user" {
  description = "The Terraform API user"
  type        = string
}

variable "api_token_name" {
  description = "The Terraform API token name"
  type=string
}

variable "api_token" {
  description = "The Terraform API token"
  type=string
}

variable "storage_pool" {
  description = "The storage pool to use for the VM disk"
  type        = string
}

##variable "ssh_public_key_file" {
##  description = "Path to the SSH public key file"
##  type        = string
##}

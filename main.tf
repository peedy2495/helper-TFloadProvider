terraform {
  required_version = ">= 1.5"

  required_providers {
    proxmox = {
      source = "bpg/proxmox"
    }
  }
}

variable "proxmox_endpoint" {
  type = string
}

variable "proxmox_api_token" {
  type      = string
  default   = null
  sensitive = true
}

variable "proxmox_username" {
  type    = string
  default = null
}

variable "proxmox_password" {
  type      = string
  default   = null
  sensitive = true
}

provider "proxmox" {
  endpoint  = var.proxmox_endpoint
  api_token = var.proxmox_api_token
  username  = var.proxmox_username
  password  = var.proxmox_password
  insecure  = true
}

data "proxmox_version" "target" {}

output "proxmox_version" {
  value = {
    release       = data.proxmox_version.target.release
    repository_id = data.proxmox_version.target.repository_id
    version       = data.proxmox_version.target.version
  }
}

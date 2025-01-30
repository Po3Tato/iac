variable "do_token" {
  description = "DigitalOcean API Token"
  type        = string
  sensitive   = true
}

variable "ssh_key_name" {
  description = "SSH key in DigitalOcean"
  type        = string
}

variable "ts_auth" {
  description = "Tailscale Auth Key"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
}

variable "droplet_count" {
  description = "Number of droplets to create"
  type        = number
}

variable "project_id" {
  description = "DigitalOcean project ID"
  type        = string
}

variable "droplet_tags" {
  description = "List of tags to apply to the droplets"
  type        = list(string)
  default     = []
}

variable admin_user {
  type        = string
  description = "admin user"
}

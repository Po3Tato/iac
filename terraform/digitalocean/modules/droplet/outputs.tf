output "public_ips" {
  value       = digitalocean_droplet.base_vm[*].ipv4_address
  description = "Public IP addresses of the droplets"
}

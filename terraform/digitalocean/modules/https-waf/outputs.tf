# modules/https-waf/outputs.tf
output "firewall_id" {
  value       = digitalocean_firewall.waf.id
  description = "The ID of the created firewall"
}

output "firewall_name" {
  value       = digitalocean_firewall.waf.name
  description = "The name of the created firewall"
}

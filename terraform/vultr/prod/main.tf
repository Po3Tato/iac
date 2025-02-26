terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.23.1"
    }
  }
}

provider "vultr" {
  api_key = var.api_key
  rate_limit = 100
  retry_limit = 3
}

resource "vultr_instance" "prod_instance" {
	plan = "vc2-1c-2gb"
	region = "ord" # can be a variable
	os_id = 2284 # can be a variable
	label = "prod" # change to dynamic naming
	tags = ["prod", "proxy"]
	hostname = "mn-prod-vps01-srv"
  ssh_key_ids = ""
	enable_ipv6 = false
	disable_public_ipv4 = false
	backups = "enabled"
	backups_schedule {
	        type = "daily"
	}
	ddos_protection = false
	activation_email = false
  firewall_group_id = "dfa09148-2204-405e-8914-01c70adfbfd7"
}

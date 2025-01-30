# IaC-playbooks

Personal Infrastructure as Code repository.

## Components
- Ansible for configuration management
- Terraform for infrastructure provisioning
- Cloud-init for initial server setup

## Prerequisites
- OpenTofu/Terraform
- Ansible
- DigitalOcean API token
- Tailscale auth key

## Usage
1. Copy and Configure variables in `terraform.tfvars.example`
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Apply configuration:
   ```bash
   terraform apply
   ```

## Security Notes
- All servers are configured with:
  - SSH key-only access through Tailscale VPN
  - Root login disabled
module "bastion" {
  source        = "git::https://github.com/cemdorst/terraform-modules.git//terraform-digitalocean-droplet?ref=droplet-v1.0.1"
  name          = "bastion"
  inbound_rules = [{ protocol = "tcp", port = "22", allowed_addresses = ["0.0.0.0/0"] }]
}

output "ip" {
  value = module.bastion.droplet_ipv4_address
}

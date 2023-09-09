module "bastion" {
  source = "git::https://github.com/cemdorst/terraform-modules.git//terraform-digitalocean-droplet?ref=droplet-v1.0.1"
  name   = "bastion"
}

output "ip" {
  value = module.bastion.droplet_ipv4_address
}

terraform {
  backend "s3" {
    bucket = "tfstate.caebrasa.demo"
    key    = "env/prod/services/bastion/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.29.0"
    }
  }
}

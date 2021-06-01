terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.8.0"
    }

    local = {
      source = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

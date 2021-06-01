variable "do_token" {
    description = "DO token"
    type = string
}

variable "key_name" {
    description = "Rebrrain SSH public key name"
    default = "REBRAIN.SSH.PUB.KEY"
    type = string
}

variable "pub_key_path" {
    description = "Path to my pulic key"
    default = "terraform.pub"
    type = string
}

variable "do_server_image" {
    description = "Image name of DO server"
    default = "ubuntu-20-04-x64"
    type = string
}

variable "do_server_region" {
    description = "Region of DO server"
    default = "LON1"
    type = string
}

variable "do_server_size" {
    description = "Size of DO server"
    default = "s-1vcpu-1gb"
    type = string
}

variable "do_module_tag" {
    description = "Tag module for DO server"
    default = "devops"
    type = string
}

variable "do_email_tag" {
    description = "Tag e-mail for DO server"
    default = "tyoma77_at_ya_ru"
    type = string
}

locals {
   do_ip_adress = data.digitalocean_droplet.do_server.*.ipv4_address
}

variable "devs" {
    description = "List of the virtual machines"
    type = list
    default = ["docker"]
}

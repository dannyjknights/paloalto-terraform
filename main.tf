terraform {

  backend "remote" {
    organization = "Natilik-Showcase"

    workspaces {
      name = "pa-showcase-test"
    }
  }

  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "1.8.3"
    }
  }
  required_version = ">= 0.14"
}

provider "panos" {
  hostname = "10.2.19.111"
  username = "admin"
  password = "Natilik123!"

}

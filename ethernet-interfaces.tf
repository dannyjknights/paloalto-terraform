resource "panos_ethernet_interface" "toWANswitch1" {
  name       = "ethernet1/1"
  vsys       = "vsys1"
  mode       = "layer2"
  mtu        = "9126"
  link_state = "down"
  comment    = "Provisioned by Terraform: To WAN switch 1"
}

resource "panos_ethernet_interface" "toWANswitch2" {
  name       = "ethernet1/2"
  vsys       = "vsys1"
  mode       = "layer2"
  mtu        = "9126"
  link_state = "down"
  comment    = "Provisioned by Terraform: To WAN switch 2"
}

resource "panos_ethernet_interface" "toCoreSwitch1" {
  name       = "ethernet1/3"
  vsys       = "vsys1"
  mode       = "layer3"
  static_ips = ["10.1.1.1/24"]
  mtu        = "9126"
  link_state = "down"
  comment    = "Provisioned by Terraform: To Core switch 1"
}

resource "panos_ethernet_interface" "toCoreSwitch2" {
  name       = "ethernet1/4"
  vsys       = "vsys1"
  mode       = "layer3"
  static_ips = ["10.1.1.3/24"]
  mtu        = "9126"
  link_state = "down"
  comment    = "Provisioned by Terraform: To Core switch 2"
}

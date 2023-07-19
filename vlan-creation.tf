resource "panos_vlan" "showcasevlans" {
  name           = "showcaseVLANs"
  vlan_interface = panos_vlan_interface.vli.name
}

resource "panos_vlan_interface" "vli" {
  name = "vlan.20"
  vsys = "vsys1"
}

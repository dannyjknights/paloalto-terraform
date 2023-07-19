#Palo Alto Zone Creation

resource "panos_zone" "dev" {
  name = var.dev_zone_name
  mode = "layer3"
}

resource "panos_zone" "dmz" {
  name = var.dmz_zone_name
  mode = "layer3"
}

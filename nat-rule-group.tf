resource "panos_nat_rule_group" "bot" {
  rule {
    name = "second"
    original_packet {
      source_zones          = [var.dev_zone_name]
      destination_zone      = var.dmz_zone_name
      destination_interface = var.wan_switch_1_name
      source_addresses      = ["any"]
      destination_addresses = ["any"]
    }
    translated_packet {
      source {}
      destination {
        static_translation {
          address = "10.2.3.1"
          port    = 5678
        }
      }
    }
  }
}

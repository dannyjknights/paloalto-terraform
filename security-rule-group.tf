resource "panos_security_rule_group" "devtodmz" {
  #  position_keyword = "above"
  #  position_reference = "deny everything else"
  rule {
    name                  = "allow dev to dmz"
    source_zones          = [panos_zone.dev.name]
    source_addresses      = ["10.1.1.0/24"]
    source_users          = ["dev"]
    hip_profiles          = ["any"]
    destination_zones     = [panos_zone.dmz.name]
    destination_addresses = ["10.1.2.0/24"]
    applications          = ["any"]
    services              = ["application-default"]
    categories            = ["any"]
    action                = "allow"
    description           = "Test"
  }
}

resource "panos_security_rule_group" "testdevtotestdmz" {
  rule {
    name                  = "allow testdev to testdmz"
    source_zones          = [panos_zone.dev.name]
    source_addresses      = ["10.1.3.0/24"]
    source_users          = ["dev"]
    hip_profiles          = ["any"]
    destination_zones     = [panos_zone.dmz.name]
    destination_addresses = ["10.1.4.0/24"]
    applications          = ["any"]
    services              = ["application-default"]
    categories            = ["any"]
    action                = "allow"
    description           = "Test"
  }
}

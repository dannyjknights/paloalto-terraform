resource "panos_general_settings" "natilikshowcase" {
  hostname              = "Natilik-Showcase-PA"
  dns_primary           = "8.8.8.8"
  ntp_primary_address   = "216.239.35.4"
  ntp_primary_auth_type = "none"
}

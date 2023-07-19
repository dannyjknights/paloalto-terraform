resource "panos_bgp" "showcasebgp" {
  virtual_router = panos_virtual_router.pvr.name
  router_id      = "2.2.2.2"
  as_number      = "65010"
}

resource "panos_virtual_router" "pvr" {
  name = "Showcase Virtual Router"
}

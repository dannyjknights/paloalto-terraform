resource "panos_static_route_ipv4" "routetoinet" {
    name = "inet"
    virtual_router = panos_virtual_router.vr1.name
    destination = ["10.1.7.0/32"]
    next_hop = ["10.1.7.4"]
}

resource "panos_virtual_router" "vr1" {
    name = "PA Virtual Router 1"
}

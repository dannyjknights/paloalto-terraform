resource "panos_application_group" "prodapps" {
  name = "ProductionApps"
  applications = [
    panos_application_object.natilikdevelopment.name,
    panos_application_object.natilikmanagement.name,
  ]
}

resource "panos_application_object" "natilikdevelopment" {
  name        = "natilikapp-appobject"
  description = "Natilik Internal Resource App - Made by Terraform"
  category    = "business-systems"
  subcategory = "office-programs"
  technology  = "browser-based"
  defaults {
    port {
      ports = [
        "tcp/80,443",
      ]
    }
  }
  risk = 2
  scanning {
    viruses = true
  }
}


resource "panos_application_object" "natilikmanagement" {
  name = "natilikphonesystem-appobject"
  description = "Natilik Management Application - Made by Terraform"
  category    = "business-systems"
  subcategory = "management"
  technology  = "client-server"
  defaults {
    port {
      ports = [
        "udp/2048-3329,16384-32787",
      ]
    }
  }
  risk = 2
  scanning {
    viruses = true
  }
}

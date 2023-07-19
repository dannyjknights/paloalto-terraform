variable "dev_zone_name" {
  description = "Name of the Dev zone"
  type        = string
  default     = "dev"
}

variable "dmz_zone_name" {
  description = "Name of the DMZ zone"
  type        = string
  default     = "dmz"
}

variable "wan_switch_1_name" {
  description = "Name of link to WAN switch 1"
  type        = string
  default     = "ethernet1/1"
}

variable "parent_domain" {
  description = "The parent domain to delegate from. Must already exist on DigitalOcean, managed by the same account"
}

variable "label" {
  description = "DNS label of the subdomain to create"
}

variable "glue_record_ttl" {
  description = "TTL (in seconds) of the glue records"
  default     = 3600
}

variable "nameservers" {
  default = [
    "ns1.digitalocean.com.",
    "ns2.digitalocean.com.",
    "ns3.digitalocean.com.",
  ]
}

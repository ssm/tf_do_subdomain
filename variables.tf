variable "parent_domain" {
  type        = string
  description = "The parent domain to delegate from. Must already exist on DigitalOcean, managed by the same account"
}

variable "label" {
  type        = string
  description = "DNS label of the subdomain to create"
}

variable "glue_record_ttl" {
  type        = number
  description = "TTL (in seconds) of the glue records"
  default     = 3600
}

variable "nameservers" {
  type        = list(string)
  description = "List of nameservers for delegation"
  default     = [
    "ns1.digitalocean.com.",
    "ns2.digitalocean.com.",
    "ns3.digitalocean.com.",
  ]
}

# Zone
resource "digitalocean_domain" "subdomain" {
  name = "${var.label}.${var.parent_domain}"
}

# Parent zone glue records
resource "digitalocean_record" "ns" {
  count  = length(var.nameservers)
  domain = var.parent_domain
  name   = var.label
  ttl    = var.glue_record_ttl
  type   = "NS"
  value  = var.nameservers[count.index]
}

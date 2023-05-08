module "dns" {
  source        = "./dns"
  ip-name       = var.ip
  region        = var.region
  dns-zone-name = var.domain
  dns-name      = var.dns-name
  project       = var.project-id
}


# Out put the value to provide it in ingress to create https load balancer
output "ip-adress" {
  value = module.dns.ip-adress
}

output "dns" {
  value = module.dns.dns-record-name
}

output "certificate" {
  value = module.dns.certificate-name
}
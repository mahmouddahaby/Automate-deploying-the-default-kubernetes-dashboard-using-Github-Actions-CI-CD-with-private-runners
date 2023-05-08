output "ip-adress" {
  value = google_compute_address.static-ip.address
}

output "dns-managed-zone" {
  value = google_dns_managed_zone.k8s-DNS.name
}

output "certificate-name" {
  value = google_compute_managed_ssl_certificate.k8s-Certificate.name
}
output "ip-adress" {
  value = google_compute_address.static-ip.address
}

output "dns-record-name" {
  value = google_dns_record_set.k8s-dashboard.name
}


output "certificate-name" {
  value = google_compute_managed_ssl_certificate.k8s-Certificate.name
}
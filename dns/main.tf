
#Reserve Static Ip
resource "google_compute_address" "static-ip" {
  name = var.ip-name
  region = var.region
}


#Reserve DNS
resource "google_dns_managed_zone" "k8s-DNS" {
  name     = var.dns-name
  dns_name = var.dns-zone-name
}


#Create Manged Certificate 
# resource "google_compute_managed_ssl_certificate" "k8s-Certificate" {
#   provider = google-beta
#   project  = var.project
#   name     = "k8s-d4board-com"

#   managed {
#     domains = ["k8s-d4board.com."]
#   }
# }


#Create A Record 
resource "google_dns_record_set" "k8s-dashboard" {
  name         = "k8sdashboard.${google_dns_managed_zone.k8s-DNS.dns_name}"
  type         = "A"
  ttl          = 300
  managed_zone = google_dns_managed_zone.k8s-DNS.name

  rrdatas = [google_compute_address.static-ip.address]
}

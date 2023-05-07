module "dns" {
  source = "./dns"
  ip-name = "dashboard"
  region = var.region
  dns-zone-name = "firstone"
  dns-name = "k8s-dashboard"
  
}
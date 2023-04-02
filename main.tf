module "kube" {
  source = "./modules/kube-prometheus"
  kube-version = "45.8.0"
}

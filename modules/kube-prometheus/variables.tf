variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}
variable "namespace" {
  type    = string
  default = "monitoring"
}
variable "kube-version" {
  type = string
  default = "45.8.0"
}
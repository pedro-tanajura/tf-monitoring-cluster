variable "kube_config" {
  type    = string
  default = "/home/pedro/Projects/desafio/tf-azure-cluster/kubeconfig"
}

variable "namespace" {
  type    = string
  default = "monitoring"
}
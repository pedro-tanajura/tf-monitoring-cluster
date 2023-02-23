variable "kube_config" {
  type    = string
  default = "/home/pedro/Projects/desafio/tf-azure-cluster/kubeconfig"
}

variable "namespace" {
  type    = string
  default = "monitoring"
}

variable "loki_chart_version" {
  default     = "2.6.1"
  type        = string
  description = "Version of the loki helm chart to use, the chart come from the repo https://grafana.github.io/helm-charts"
}
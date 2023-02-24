resource "helm_release" "loki" {
  name             = "grafana-loki"
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "loki-stack"
  version          = var.loki_chart_version
  namespace        = var.namespace
  create_namespace = false
  replace          = false
  recreate_pods    = true
  lint             = true
  wait_for_jobs    = true
  values           = [templatefile("${path.module}/templates/loki-values.yaml", {})]
}
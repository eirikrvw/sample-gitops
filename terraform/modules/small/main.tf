variable "namespace" {
  type = string
}

resource "kubernetes_resource_quota" "small" {
  metadata {
    name = "small"
    namespace = var.namespace
  }
  spec {
    hard = {
      "requests.cpu" = 2
      "requests.memory" = "8Gi"
      "limits.cpu" = 2
      "limits.memory" = "8Gi"
    }
    scopes = ["NotTerminating"]
  }
}

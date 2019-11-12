
resource "kubernetes_resource_quota" "core-object-count" {
  metadata {
    name = "core-object-count"
    namespace = var.namespace
  }
  spec {
    hard = {
      persistentvolumeclaims = "0"
      replicationcontrollers = "5"
      secrets = "10"
      services = "5"
      configmaps = "10"
    }
  }
}


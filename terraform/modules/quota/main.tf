variable "namespace" {
  type = string
}

variable "quota" {
  type = string
  default = "small"
}
 
variable "custom" {
  type = map
  default = {}
}

locals { 
  tshirt-sizes = {
    "small"= {
      "requests.cpu" = "2"
      "requests.memory" = "8Gi"
      "limits.cpu" = "2"
      "limits.memory" = "8Gi"
    }
    "medium" = {
      "requests.cpu" = "4"
      "requests.memory" = "16Gi"
      "limits.cpu" = "4"
      "limits.memory" = "16Gi"
    }
    "large" = {
      "requests.cpu" = "8"
      "requests.memory" = "32Gi"
      "limits.cpu" = "8"
      "limits.memory" = "32Gi"
    }
  }
  choice = lookup(local.tshirt-sizes, var.quota, var.custom)
}


resource "kubernetes_resource_quota" "small" {
  metadata {
    name = "small"
    namespace = var.namespace
  }
  spec {
    hard = local.choice
    scopes = ["NotTerminating"]
  }
}

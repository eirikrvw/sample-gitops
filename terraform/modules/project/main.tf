provider "kubernetes" {
}

variable "namespace" {
  type = string
}

resource "kubernetes_namespace" "new-project" {
  metadata {
    name = var.namespace
  }
}

module "small" {
  source = "./../small"
  namespace = var.namespace
}


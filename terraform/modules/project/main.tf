provider "kubernetes" {
}

resource "kubernetes_namespace" "new-project" {
  metadata {
    name = var.namespace
    annotations = {
      "openshift.io/description" = var.project_description
      "openshift.io/display-name" = var.project_displayname
      "openshift.io/requester" = var.project_requester
      "openshift.io/admin" = var.project_admin
    }
  }
}

module "quota" {
  source = "./../quota"
  namespace = var.namespace
  quota = var.quota
  custom = var.custom
}


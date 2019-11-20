resource "k8s_projects_v1_Project" "this" {
  metadata {
    labels = {
      "istio-injection" = "disabled"
    }

    name = "this"
  }
}

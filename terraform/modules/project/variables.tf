variable "namespace" {
  type = string
}

variable "quota" {
  type = string
  default = "small"
  description = "Namespace quota if custom is provided a custom object must also be provided"
}
 
variable "custom" {
  type = map
  default = {}
  description = "Custom quota definition that can be used for namespaces that defiate"
}

variable "project_description" {
  type = string
}

variable "project_displayname" {
  type = string
}

variable "project_requester" {
  type = string
}

variable "project_admin" {
  type = string
}

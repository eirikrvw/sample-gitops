module "project01" {
  source = "./modules/project"
  namespace = "project01"
  quota = "medium"
  project_requester = "aa499994"
  project_description = "Project01"
  project_admin = "aa499994"
  project_displayname = "Project01"
}
module "project02" {
  source = "./modules/project"
  namespace = "project02"
  project_requester = "aa499994"
  project_description = "Project01"
  project_admin = "aa499994"
  project_displayname = "Project01"
}

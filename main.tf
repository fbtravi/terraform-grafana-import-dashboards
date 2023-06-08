provider "grafana" {
  alias  = "my_org"
  url    = var.grafana_url
  auth   = var.grafana_auth
  org_id = var.grafana_org_id
}

resource "grafana_folder" "folder" {
  provider = grafana.my_org
  title    = var.grafana_folder
}

resource "grafana_dashboard" "dashboard" {
  for_each    = var.dashboards
  provider    = grafana.my_org
  org_id      = var.grafana_org_id
  folder      = grafana_folder.folder.uid
  config_json = file(each.key)
}

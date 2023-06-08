locals {
  grafana_url    = "http://localhost:3000"
  grafana_auth   = "admin:grafana"
  grafana_org_id = 1
  dashboards     = ["dashboards/dash.json", "dashboards/dash2.json"]
}


module "import-dashboards" {
  source         = "fbtravi/import-dashboards/grafana"
  grafana_url    = local.grafana_url
  grafana_auth   = local.grafana_auth
  grafana_org_id = local.grafana_org_id
  grafana_folder = "Folder 1"
  dashboards     = local.dashboards
}

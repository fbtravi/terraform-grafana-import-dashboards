# terraform-grafana-import-dashboards

This module create one folder and import at list at files dashboards json.

## Usage

```hcl
locals {
  grafana_url    = "http://localhost:3000" #example URL
  grafana_auth   = "admin:grafana" #example user:password
  grafana_org_id = 1
  dashboards     = ["dashboards/dash.json", "dashboards/dash2.json"]
}

module "import-dashboards" {
  source  = "fbtravi/import-dashboards/grafana"
  version = "0.0.1"
  grafana_url    = local.grafana_url
  grafana_auth   = local.grafana_auth
  grafana_org_id = local.grafana_org_id
  grafana_folder = "Folder 1"
  dashboards     = local.dashboards
}
```

* Find org_id in your Grafana, search in URL/admin/orgs.

[Provider Grafana](https://registry.terraform.io/providers/grafana/grafana/latest)

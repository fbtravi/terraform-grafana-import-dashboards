variable "grafana_url" {
  description = "URL Grafana"
  type        = string
}

variable "grafana_auth" {
  description = "User and pass login Grafana"
  type        = string
}

variable "grafana_folder" {
  description = "Folder create in to Grafana"
  type        = string
}

variable "grafana_org_id" {
  description = "Grafana org id"
  type        = number
}

variable "dashboards" {
  description = "String dashboard file"
  type        = set(string)
}

//google_app_engine_application
resource "google_app_engine_application" "app-engine-application" {

  project        = var.project
  location_id    = var.location_id
  auth_domain    = var.auth_domain
  database_type  = var.database_type
  serving_status = var.serving_status
  feature_settings {
    split_health_checks = var.split_health_checks
  }
  iap {
    oauth2_client_id     = var.oauth2_client_id
    oauth2_client_secret = var.oauth2_client_secret
  }
}

//google_app_engine_firewall_rule

resource "google_app_engine_firewall_rule" "rule_app_engine" {
  source_range = var.source_range
  action       = var.action
  description  = var.description
  priority     = var.priority
  project      = var.project

}
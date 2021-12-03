//required variables

variable "project" {
  description = "The project ID to create the application under."
  type        = string
}

variable "location_id" {
  description = "The location to serve the app from."
  type        = string
}

variable "auth_domain" {
  description = "The domain to authenticate users with when using App Engine's User API."
  type        = string
  default     = ""
}

variable "split_health_checks" {
  description = " Set to false to use the legacy health check instead of the readiness and liveness checks."
  type        = bool
  default     = false
}

variable "oauth2_client_id" {
  description = "OAuth2 client ID to use for the authentication flow."
  type        = string
  default     = ""
}

variable "oauth2_client_secret" {
  description = "OAuth2 client secret to use for the authentication flow. "
  type        = string

}

variable "action" {
  description = "IP address or range, defined using CIDR notation, of requests that this rule applies to."
  type        = string
}

variable "source_range" {
  description = "The action to take if this rule matches."
  type        = string
}

//optional variables

variable "database_type" {
  description = "The type of the Cloud Firestore or Cloud"
  type        = string
  default     = "CLOUD_DATASTORE"
}

variable "serving_status" {
  description = "The serving status of the app."
  type        = string
  default     = "SERVING"
}

variable "description" {
  description = "An optional string description of this rule."
  type        = string
  default     = "Rule to App-engine-create"
}

variable "priority" {
  description = "A positive integer that defines the order of rule evaluation."
  type        = number
  default     = 32
}
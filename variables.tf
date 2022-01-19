//required variables

variable "project_id" {
  description = "The project ID to create the application under."
  type        = string
}

variable "location" {
  description = "The location to serve the app from."
  type        = string
}


variable "auth_domain" {
  description = "The domain to authenticate users with when using App Engine's User API."
  type        = string
  default     = null
}

variable "database_type" {
  description = "The type of the Cloud Firestore or Cloud"
  type        = string
  default     = null
  validation {
    condition     = var.database_type == null || contains(["CLOUD_FIRESTORE", "CLOUD_DATASTORE_COMPATIBILITY"], var.database_type == null ? "" : var.database_type)
    error_message = "The database type shall be one of the [CLOUD_FIRESTORE, CLOUD_DATASTORE_COMPATIBILITY]."
  }
}

variable "serving_status" {
  description = "The serving status of the app."
  type        = string
  default     = null
  validation {
    condition     = var.serving_status == null || contains(["UNSPECIFIED", "SERVING", "USER_DISABLED", "SYSTEM_DISABLED"], var.serving_status == null ? "" : var.serving_status)
    error_message = "The serving status shall be one of the [UNSPECIFIED, SERVING, USER_DISABLED, SYSTEM_DISABLED]."
  }
}
variable "feature_settings" {
  description = "A block of optional settings to configure split health checks"
  type = object({
    split_health_checks = bool
  })
  default = null
}
variable "iap" {
  description = "Settings for enabling Cloud Identity Aware Proxy"
  type = object({
    oauth2_client_id     = string,
    oauth2_client_secret = string
  })
  default = null
}

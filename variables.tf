//required variables

variable "project" {
  description = "The project ID to create the application under."
  type        = string
}

variable "location_id" {
  description =  <<-EOT
    {
   "type": "json",
   "purpose": "autocomplete",
   "data":[ "asia-east1",
        "asia-east2",
        "asia-northeast1",
        "asia-northeast2",
        "asia-northeast3",
        "asia-south1",
        "asia-south2",
        "asia-southeast1",
        "asia-southeast2",
        "australia-southeast1",
        "australia-southeast2",
        "europe-central2",
        "europe-north1",
        "europe-west1",
        "europe-west2",
        "europe-west3",
        "europe-west4",
        "europe-west6",
        "northamerica-northeast1",
        "northamerica-northeast2",
        "southamerica-east1",
        "southamerica-west1",
        "us-central1",
        "us-east1",
        "us-east4",
        "us-west1",
        "us-west2",
        "us-west3",
        "us-west4"
    ],
   "description": "The location to serve the app from."
}
  EOT
  type        = string
}

variable "split_health_checks" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [
        "true",
        "false"
   ],
   "default":true,
   "description":"Set to false to use the legacy health check instead of the readiness and liveness checks."
}
EOT 
  type        = bool
}

variable "oauth2_client_id" {
  description = "OAuth2 client ID to use for the authentication flow."
  type        = string
}

variable "oauth2_client_secret" {
  description = "OAuth2 client secret to use for the authentication flow. "
  type        = string

}

variable "action" {
  description = "The action to take if this rule matches."
  type        = string
}

variable "source_range" {
  description = "IP address or range, defined using CIDR notation, of requests that this rule applies to."
  type        = string
}

//optional variables


variable "auth_domain" {
  description = "The domain to authenticate users with when using App Engine's User API."
  type        = string
  default     = ".com"
}

variable "database_type" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [  "CLOUD_FIRESTORE",
              "CLOUD_DATASTORE_COMPATIBILITY"
   ],
   "description": "The type of the Cloud Firestore or Cloud"
}
EOT 
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

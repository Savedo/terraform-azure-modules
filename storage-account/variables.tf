variable "access_tier" {
  type = string

  default = "Hot"
}

variable "account_kind" {
  type = string

  default = "StorageV2"
}

variable "account_replication_type" {
  type = string

  default = "LRS"
}

variable "account_tier" {
  type = string

  default = "Standard"
}

variable "enable_advanced_threat_protection" {
  type = bool

  default = true
}

variable "enable_https_traffic_only" {
  type = bool

  default = true
}

variable "ip_rules" {
  type = list(string)
}

variable "location" {
  type = string
}

variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tags" {
  type = map(string)
}

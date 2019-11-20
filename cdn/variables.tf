variable "cdn_endpoint_name" {
  type = string
}

variable "cdn_profile_name" {
  type = string
}

variable "host_name" {
  type = string
}

variable "is_http_allowed" {
  type = bool

  default = false
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sku" {
  type = string

  default = "Standard_Microsoft"
}

variable "tags" {
  type = map(string)
}

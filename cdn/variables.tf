variable "_count" {
  type = integer

  default = 1
}

variable "host_name" {
  type = string
}

variable "https_port" {
  type = string

  default = "443"
}

variable "is_http_allowed" {
  type = bool

  default = false
}

variable "location" {
  type = string
}

variable "name" {
  type = string
}

variable "optimization_type" {
  type = string

  default = "GeneralWebDelivery"
}

variable "querystring_caching_behaviour" {
  type = string

  default = "IgnoreQueryString"
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

resource "azurerm_cdn_profile" "this" {
  name = var.cdn_profile_name

  location            = var.location
  resource_group_name = var.resource_group_name

  sku = var.sku

  tags = var.tags
}

resource "azurerm_cdn_endpoint" "this" {
  name = var.cdn_endpoint_name

  location            = var.location
  resource_group_name = var.resource_group_name

  is_http_allowed = var.is_http_allowed
  profile_name    = azurerm_cdn_profile.this.name

  origin {
    host_name = var.host_name
    name      = var.cdn_endpoint_name
  }

  origin_host_header = var.host_name

  tags = var.tags
}

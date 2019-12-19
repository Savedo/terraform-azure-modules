# CDN Profile

resource "azurerm_cdn_profile" "this" {
  count = var._count

  name = "${var.name}-cdn-profile"

  location            = var.location
  resource_group_name = var.resource_group_name

  sku = var.sku

  tags = var.tags
}

# CDN Endpoint

resource "azurerm_cdn_endpoint" "this" {
  count = var._count

  name = "${var.name}-cdn-endpoint"

  location            = var.location
  resource_group_name = var.resource_group_name

  is_http_allowed = var.is_http_allowed

  optimization_type  = var.optimization_type
  origin_host_header = var.host_name
  profile_name       = azurerm_cdn_profile.this[count.index].name

  querystring_caching_behaviour = var.querystring_caching_behaviour

  tags = var.tags

  origin {
    name = var.name

    host_name  = var.host_name
    https_port = var.https_port
  }
}

resource "azurerm_storage_account" "this" {
  name = var.name

  resource_group_name = var.resource_group_name
  location            = var.location

  access_tier              = var.access_tier
  account_kind             = var.account_kind
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier

  enable_advanced_threat_protection = var.enable_advanced_threat_protection
  enable_https_traffic_only         = var.enable_https_traffic_only

  network_rules {
    default_action = "Deny"

    ip_rules = var.ip_rules
  }

  tags = var.tags
}

# Temporary workaround until static-website PR is accepted by HashiCorp
#   @ref https://github.com/terraform-providers/terraform-provider-azurerm/issues/1903
resource "null_resource" "static_website" {
  depends_on = [azurerm_storage_account.this]

  provisioner "local-exec" {
    command = "az storage blob service-properties update --account-name ${azurerm_storage_account.this.name} --static-website --index-document index.html --404-document index.html"
  }
}

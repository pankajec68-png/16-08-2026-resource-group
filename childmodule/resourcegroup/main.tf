variable "resource" {
}

resource "azurerm_resource_group" "family" {
    for_each = var.resource
  name     = each.value.name
  location = each.value.location
}
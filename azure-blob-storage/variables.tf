variable "azurem_resource_group-name" {
	type = string
	default = "Wiktoria75911"
}
variable "azurem_resource_group_location" {
	type = string
	default = "North Europe"
}
variable "account_kind" {
  type = string
  default = "Storage"
}
variable "account_tier" {
	type = string
  default = "Standard"
}
variable "account_replication_type" {
	type = string
	default = "LRS"
}
variable "azurerm_storage_container_kontener" {
    type = string
    default = "nazwaKontenera"
}
variable "container_access_type" {
    type = string
    default = "blob"
}
variable "azurerm_storage_blob_skladzik" {
    type = string
    default = "nazwaSkladzika"
}
variable "azurerm_storage_blob_type" {
    type = string
    default = "Block"
  
}

variable "azurem_resource_group-name" {
	type = string
	default = "Wiktoria75911"
}
variable "azurem_resource_group_location" {
	type = string
	default = "North Europe"
}
variable "os_type" {
	type = string
	default = "Linux"
}
variable "sku_name" {
	type = string
	default = "FREE"
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
variable "sku_tier" {
  type = string
  default = "Standard"
}
variable "sku_size" {
  type = string
  default = "S1"
}
variable "azurerm_service_ {
	type = string
	default = ""
  
}
variable "azurerm_linux_function_app_name" {
	type = string
	default = "Linix_app"
}

variable "cosmosdb_account_name" {
  type        = string
  description = "Name cosmos account"
}

variable "cosmosdb_database_name" {
  type        = string
  description = "Name cosmos database"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Resource location"
}

variable "tags" {
  type        = map(string)
  description = "Resource tags"
}

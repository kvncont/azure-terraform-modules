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

variable "ip_range_filter" {
  type = string
  description = "Specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IP's for a given database account."
}

variable "tags" {
  type        = map(string)
  description = "Resource tags"
}

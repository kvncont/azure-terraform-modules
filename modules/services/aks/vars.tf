# Network Security Group
variable "nsg_aks_name" {
  type    = string
  default = "nsg-akskratos"
}

# Virtual Network
variable "vnet_aks_name" {
  type    = string
  default = "vnet-akskratos"
}

variable "vnet_aks_address_space" {
  type    = list(string)
  default = ["10.0.0.0/8"]
}

variable "vnet_aks_dns_server" {
  type    = list(string)
  default = ["10.0.0.4", "10.0.0.5"]
}

# Subnet
variable "subnet_aks_name" {
  type    = string
  default = "subnet-akskratos"
}

variable "subnet_aks_address" {
  type    = list(string)
  default = ["10.240.0.0/16"]
}

# Log Analytics
variable "law_aks_name" {
  type    = string
  default = "law-akskratos"
}

# AKS
variable "aks_name" {
  type    = string
  default = "akskratos"
}

variable "aks_kubernetes_version" {
  type    = string
  default = "1.18.14"
}

variable "aks_default_node_pool_name" {
  type    = string
  default = "agentpool"
}

variable "aks_enable_auto_scaling" {
  type    = bool
  default = false
}

variable "aks_node_count_default" {
  type    = number
  default = 1
}

variable "aks_node_max_count" {
  type        = number
  description = "Si el enable_auto_scaling es false, esta variable debe ser nula, de lo contrario debe ir la cantidad deseada"
  default     = null
}

variable "aks_node_min_count" {
  type        = number
  description = "Si el enable_auto_scaling es false, esta variable debe ser nula, de lo contrario debe ir la cantidad deseada"
  default     = null
}

# Standard_D2_v2, Standard_B2s
variable "aks_vm_size" {
  type    = string
  default = "Standard_B2s"
}

# Alerts
variable "amag_email_receiver_list" {
  type = list(object({
    name          = string
    email_address = string
  }))
  default = [
    {
      name          = "Kevin Contreras"
      email_address = "kvncont@gmail.com"
    },
    {
      name          = "Dario Contreras"
      email_address = "monedaplay@gmail.com"
    }
  ]
}

# Diagnostic Settings
variable "diagnostic_setting_name" {
  type    = string
  default = "ds-akskratos"
}

variable "diagnostic_setting_log_categories" {
  type = list(string)
  default = [
    "AzureActivity",
    "AzureMetrics",
    "ContainerImageInventory",
    "ContainerInventory",
    "ContainerLog",
    "ContainerNodeInventory",
    "ContainerServiceLog",
    "Heartbeat",
    "InsightsMetrics",
    "KubeEvents",
    "KubeHealth",
    "KubeMonAgentEvents",
    "KubeNodeInventory",
    "KubePodInventory",
    "KubeServices",
    "Perf"
  ]
}
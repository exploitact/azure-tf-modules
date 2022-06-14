variable "azure_region" {
  description = "Azure region to use."
  type        = string
  default     = "West US"
}

variable "client_name" {
  description = "Client name/account used in naming"
  type        = string
  default     = "sampledev"
}

variable "environment" {
  description = "Project environment"
  type        = string
  default     = "dev"
}

variable "stack" {
  description = "Project stack name"
  type        = string
  default     = "dev"
}

/*
variable "subnet_id" {
  description = "Subnet ID to define as additional location"
  type        = string
  default     = "dev"
}
*/
# variables.tf defines the variables that need to be initialized. terraform.tfvars provides values for those variables.
# enter default or provide the value in the tfvars file. 
variable "name" {
  description = "Project name"
  type        = string
  default     = "sample"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "West US"
}

variable "environment" {
  description = "Environment (dev / stage / prod)"
  type        = string
  default     = "dev"
}

variable "b2c_sku_name" {
  description = "B2C sku name"
  type        = string
  default     = "PremiumP1"
}

# APIM variables


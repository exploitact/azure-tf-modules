# variables.tf defines the variables that need to be initialized. terraform.tfvars provides values for those variables.
# enter default or provide the value in the tfvars file.
variable "resource_group_name" {
  description = "Name for the resource group"
  type        = string
  default     = "terraform-container"
}

variable "generic" {
  description = "Generic naming conventation"
  type        = string
  default     = "test"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "West-Europe"
}



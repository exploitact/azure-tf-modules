# Defualt just defualt to the value when you define a value in main.tf 
# where var.name would be equal to "sample"
# where var.storage_account_name would be equal to "sampletest"
variable "name" {
  description = "Defualt name"
  type        = string
  default     = "sample"
}

variable "storage_account_name" {
  description = "Storage account name"
  type        = string
  default     = "sampletest"
# Doesn't matter, it can be sample, sampletest, etc as long as terraform likes it. You will know when the pipeline breaks or with terraform plan/apply. 
}

variable "service_plan_name" {
  description = "Service plan name"
  type        = string
  default     = "sample"
}

variable "function_resource_group" {
  description = "Function resource group name"
  type        = string
  default     = "sample"
# No resource group in this module because I have a seperate resource group module that I built in a different folder. 
# This is just here so I can define it value in the parent module. 
}

variable "function_location" {
  description = "Defualt location for all resources in main.tf in the module current directory (main.tf)"
  type        = string
  default     = "eastus"
  # or change the default to anything you like with westus, westus2, etc. you get the point. 
}

variable "function_account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "function_account_replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
}

variable "function_os_type" {
  description = "Service plan os type"
  type        = string
  default     = "Linux"
}

variable "function_sku_name" {
  description = "Service plan sku name"
  type        = string
  default     = "Y1"
}


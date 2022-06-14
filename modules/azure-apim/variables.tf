variable "name" {
  description = "APIM name; Changing this forces a new resource to be created."
  type        = string
  default     = "sample"
}

variable "apim_resource_group" {
  description = "Resource Group in which the API Management Service"
  type        = string
  default     = "sample"
}

variable "apim_location" {
  description = "APIM location where the API Management Service exists"
  type        = string
  default     = "sample"
}

variable "apim_publisher_name" {
  description = "APIM The name of publisher/company"
  type        = string
  default     = "My Company"
}

variable "apim_publisher_email" {
  description = "APIM The email of publisher/company"
  type        = string
  default     = "company@terraform.io"
}

variable "apim_sku_name" {
  description = "APIM type of an accountType"
  type        = string
  default     = "Developer_1"
}



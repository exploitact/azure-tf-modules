# Some output values so you can see your resources when you run terraform output or apply. 
# Ongoing process where I will use resource values to pipeline their values in the parent module.  
output "storage_account_name_out" {
    value = azurerm_storage_account.azstorage.name
}

output "service_plan_id_out" {
    value = azurerm_service_plan.azservice.id
}
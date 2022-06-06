# variables.tf defines the variables that need to be initialized. terraform.tfvars provides values for those variables.

/* *.tfvars is just one way of defining values for your variables; 
the others being environment variables, command line flags, interactively prompted for during an apply, and as input to a module.
*/
resource_group_name = "containerapp"

location = "West US 2"

generic = "example"

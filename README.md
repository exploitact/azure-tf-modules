# Proof of Concept Terraform

Defining best practices and documentation.
![alt text](https://globalpricing.com/wp-content/uploads/2022/01/Agile.png)
<img src="https://user-images.githubusercontent.com/link-to-your-image.png" width="200" />

## Getting Started

https://www.terraform.io/

### Prerequisites

Installation of terraform:
https://learn.hashicorp.com/tutorials/terraform/install-cli

Using Azure CLI on your local machine or on Web Console: 
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli

If using a CI/CD there is no need to install the items above.

### Best Practices

1. Implement GitOps practices. Git repo is the source of truth.
2. Run terraform from a centralized location. Pipeline job/VM such as CircleCI. (By default, Terraform stores state locally in a file named terraform.tfstate. When working with Terraform in a team, use of a local file makes Terraform usage complicated because each user must make sure they always have the latest state data before running Terraform and make sure that nobody else runs Terraform at the same time.)
3. Store the remote state on either AWS s3 or azure blob for team collaboration. 
3. And add a required review for applying changes to prod, as two pair of eyes will catch more potential issues.
https://www.runatlantis.io/
4. Best practices are not needed if all we need are 3 EC2 instances or simple services.


## Ideas and thoughts

1. Sepearate Terraform With Multiple Environments such as development, stage, testing, and production. Different ways to do by using Terraform workspaces, folders, etc; https://www.codurance.com/publications/2020/04/28/terraform-with-multiple-environments
2. Place to store our env variables? Hashicorp vault or Azure key vault.
3. Break up your root modules into the following:
Network (VPC + Subnets)
Data Tier (Databases)
App Tier (EC2 Instances, ECS Cluster, EKS Cluster, etc.)

## Testing
Basic Circle CI script for Terraform
https://github.com/hashicorp/learn-terraform-circleci

## Common commands 
All common commands: 
https://acloudguru.com/blog/engineering/the-ultimate-terraform-cheatsheet

The terraform fmt command is used to rewrite Terraform configuration files to a canonical format and style. 
```
terraform fmt
```
## Running the tests

Add unit tests?

### Helpful resources

Add docuemntation to our Terraform modules:
https://github.com/terraform-docs/terraform-docs

Terraform Module to define a consistent naming convention by (namespace, stage, name, [attributes])
https://registry.terraform.io/search/modules?q=Cloud%20Posse

## Questions:

1. Is there is a way to speed up your terraform script.


## Built With

* [Terraform](https://www.terraform.io/) - IaC
* [Markdown](https://www.markdownguide.org/) - Markdown

## Authors

* **Andy** 

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## Acknowledgments

* The Internet

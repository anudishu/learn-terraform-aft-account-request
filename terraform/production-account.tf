module "production-account01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "prdsandbox@gmail.com"
    AccountName               = "prd-prd01"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "prdsandbox@gmail.com"
    SSOUserFirstName          = "prd"
    SSOUserLastName           = "prd01"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "prd team"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "production-customization"
}

module "developmet_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "developmentbox2022@gmail.com"
    AccountName               = "dev-box01"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "developmentbox2022@gmail.com"
    SSOUserFirstName          = "dev"
    SSOUserLastName           = "box"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Dev Team"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "development-customizations"
}

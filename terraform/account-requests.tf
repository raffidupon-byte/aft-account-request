module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "{{ACCOUNT EMAIL}}"
    AccountName               = "{{ACCOUNT NAME}}"
    ManagedOrganizationalUnit = "{{OU NAME}}" 
    SSOUserEmail              = "{{ACCOUNT SSO EMAIL}}"
    SSOUserFirstName          = "{{ACCOUNT SSO FIRST NAME}}"
    SSOUserLastName           = "{{ACCOUNT SSO LAST NAME}}"
  }

  account_tags = {
    "ABC:Owner"       = "sam1983fr+fortest@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
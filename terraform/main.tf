# Test Account - Simplest possible example 1
module "test_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sam1983fr@gmail.com"  # CHANGE THIS - Must be unique
    AccountName               = "Test-Account-001"
    ManagedOrganizationalUnit = "Sandbox"                     # Must exist in your Control Tower
    SSOUserEmail              = "ghazoo@live.com"          # Your email for SSO access
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "User"
  }

  account_tags = {
    Environment = "Test"
    ManagedBy   = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "dumbbel dupond"
    change_reason       = "Testing AFT account provisioning"
  }

  custom_fields = {}

  account_customizations_name = ""  # No customizations - just basic account
}

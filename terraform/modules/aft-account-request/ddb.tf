resource "aws_dynamodb_table_item" "aft_account_request" {
  table_name = "aft-request"
  hash_key   = "id"
  item = jsonencode({
    id = {
      S = var.control_tower_parameters.AccountEmail
    }
    control_tower_parameters = {
      M = {
        AccountEmail = {
          S = var.control_tower_parameters.AccountEmail
        }
        AccountName = {
          S = var.control_tower_parameters.AccountName
        }
        ManagedOrganizationalUnit = {
          S = var.control_tower_parameters.ManagedOrganizationalUnit
        }
        SSOUserEmail = {
          S = var.control_tower_parameters.SSOUserEmail
        }
        SSOUserFirstName = {
          S = var.control_tower_parameters.SSOUserFirstName
        }
        SSOUserLastName = {
          S = var.control_tower_parameters.SSOUserLastName
        }
      }
    }
    account_tags = {
      M = {
        for key, value in var.account_tags : key => { S = value }
      }
    }
    change_management_parameters = {
      M = {
        change_requested_by = {
          S = var.change_management_parameters.change_requested_by
        }
        change_reason = {
          S = var.change_management_parameters.change_reason
        }
      }
    }
    custom_fields = {
      M = {
        for key, value in var.custom_fields : key => { S = value }
      }
    }
    account_customizations_name = {
      S = var.account_customizations_name
    }
  })
}


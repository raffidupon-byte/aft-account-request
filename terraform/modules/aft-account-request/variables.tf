variable "control_tower_parameters" {
  description = "Control Tower account parameters"
  type = object({
    AccountEmail              = string
    AccountName               = string
    ManagedOrganizationalUnit = string
    SSOUserEmail              = string
    SSOUserFirstName          = string
    SSOUserLastName           = string
  })
}

variable "account_tags" {
  description = "Tags to apply to the account"
  type        = map(string)
  default     = {}
}

variable "change_management_parameters" {
  description = "Change management metadata"
  type = object({
    change_requested_by = string
    change_reason       = string
  })
}

variable "custom_fields" {
  description = "Custom metadata fields"
  type        = map(string)
  default     = {}
}

variable "account_customizations_name" {
  description = "Name of customizations folder to apply"
  type        = string
  default     = ""
}


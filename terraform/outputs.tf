# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "auth_method_id" {
  value = boundary_auth_method.password.id
}

output "username" {
  value = { for k, v in boundary_account_password.user : k => v.login_name }
}

output "password" {
  value     = { for k, v in boundary_account_password.user : k => v.password }
  sensitive = true
}

#Route table name
module "pip_name" {
  source      = "git::https://dev.azure.com/innersource/Merlion/_git/tf-module-az-naming-convention?ref=main"
  name_format = "res_type|-|project_code|-|env|zone|tier|-|name"
  naming_convention_info = {
    "${var.naming_convention_info.name}" = {
      name_info = var.naming_convention_info
      tags      = var.tags
    }
  }
  resource_type = "pip"
}
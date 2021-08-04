
output "resource_group_prefixes" {
  value = [lower(local.location_code_safe), lower(var.client), lower(var.project), local.environment_code_safe, local.area_safe]
  description = "Resource group name prefixes for CAF module."
}

output "resource_prefixes" {
  value = [lower(var.client), lower(var.project), local.environment_code_safe, local.area_safe]
    description = "Resource name prefixes for CAF module."
}

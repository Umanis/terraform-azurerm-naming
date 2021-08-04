locals {
  location_map_codes = {
    "France Central" = "a010"
    "France South"   = "a011"
    "West Europe"    = "a020"
    "North Europe"   = "a021"
  }

  environment_map_codes = {
    "lab" = "l"
    "dev" = "d"
    "tst" = "t"
    "rec" = "r"
    "oat" = "o"
    "prd" = "p"
  }

  location_code_safe = lower(local.location_map_codes[var.location])
  environment_safe   = lower(var.environment)

  area_safe             = format("%02d", var.area)
  environment_code_safe = lower(local.environment_map_codes[local.environment_safe])
  project_safe          = lower(var.project)
}

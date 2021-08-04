variable "location" {
  type        = string
  description = "Azure region were resources are deployed"
  default     = "France Central"
}

variable "environment" {
  type        = string
  description = "Environment code (LAB, DEV, TST, REC, OAT, PRD)."
  default     = "DEV"
  validation {
    condition     = contains(["lab", "dev", "tst", "rec", "oat", "prd"], lower(var.environment))
    error_message = "Must be LAB, DEV, TST, REC, OAT, PRD."
  }
}

variable "client" {
  type        = string
  description = "Code name of the client. Must have 3 alphanumeric chars."
  validation {
    condition     = length(var.client) == 3
    error_message = "Must be a 3 alphanumeric code."
  }
}

variable "project" {
  type        = string
  description = "Code name of the subproject. Must have 4 digits."
  validation {
    condition     = length(var.project) == 4
    error_message = "Must be a 4 dights code."
  }
}

variable "area" {
  type        = number
  description = "Subproject index (2 digits)."
  validation {
    condition     = var.area > 0 && var.area < 100
    error_message = "Must be a 2 dights code."
  }
}

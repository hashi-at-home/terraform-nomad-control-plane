# variables.tf
# Use this file to declare the variables that the module will use.
variable "alloy_version" {
  type        = string
  default     = "1.8.3"
  description = "Version of Grafana Alloy to be used in monitoring"
}

# Use this file to declare the terraform configuration
# Add things like:
# - required version
# - required providers
# Do not add things like:
# - provider configuration
# - backend configuration
# These will be declared in the terraform document which consumes the module.

terraform {
  required_version = ">1.12.0"
  required_providers {
    nomad = {
      source  = "hashicorp/nomad"
      version = "2.5.0" # Add your required providers here.
    }
  }
}

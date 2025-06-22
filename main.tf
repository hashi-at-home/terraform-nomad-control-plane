# Main definition

# Auth with Vault OIDC


# Quotas only available in Enterprise :(
# resource "nomad_quota_specification" "ops" {
#   name = "ops"
#   description = "Quota for the ops namespace"
#   limits {
#     region = "global"
#     region_limit {
#       cpu = 0
#       memory_mb = 0
#     }
#   }
# }

resource "nomad_namespace" "ops" {
  name        = "ops"
  description = "Cluster Control Plane namespace"
  # quota = nomad_quota_specification.ops.name
}

# Policies

# Roles

# Dynamic Host Volumes


# System jobs

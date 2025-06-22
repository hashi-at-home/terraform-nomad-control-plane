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
  capabilities {
    enabled_task_drivers = ["raw_exec", "docker", "exec"]
  }
}

# Policies

# Roles

# Dynamic Host Volumes



# System jobs
data "nomad_datacenters" "deployed" {
}

data "local_file" "alloy_config" {
  filename = "${path.module}/jobspec/templates/alloy.config"
}

resource "nomad_job" "agent_alloy" {
  jobspec = templatefile("${path.module}/jobspec/alloy.nomad.hcl.tmpl", {
    alloy_config  = data.local_file.alloy_config.content,
    alloy_version = var.alloy_version,
    namespace     = nomad_namespace.ops.name,
    datacenters   = data.nomad_datacenters.deployed.datacenters
  })
  hcl2 {
    allow_fs = true
  }
}

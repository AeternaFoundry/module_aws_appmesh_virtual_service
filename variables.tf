variable "appmesh_virtual_services" {
  description = <<EOT
Map of appmesh_virtual_services, attributes below
Required:
    - mesh_name
    - name
    - spec (block):
        - provider (optional, block):
            - virtual_node (optional, block):
                - virtual_node_name (required)
            - virtual_router (optional, block):
                - virtual_router_name (required)
Optional:
    - mesh_owner
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    mesh_name  = string
    name       = string
    mesh_owner = optional(string)
    region     = optional(string)
    tags       = optional(map(string))
    tags_all   = optional(map(string))
    spec = object({
      provider = optional(object({
        virtual_node = optional(object({
          virtual_node_name = string
        }))
        virtual_router = optional(object({
          virtual_router_name = string
        }))
      }))
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.appmesh_virtual_services : (
        length(v.mesh_name) >= 1 && length(v.mesh_name) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appmesh_virtual_services : (
        v.spec.provider == null || (v.spec.provider.virtual_node == null || (length(v.spec.provider.virtual_node.virtual_node_name) >= 1 && length(v.spec.provider.virtual_node.virtual_node_name) <= 255))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appmesh_virtual_services : (
        v.spec.provider == null || (v.spec.provider.virtual_router == null || (length(v.spec.provider.virtual_router.virtual_router_name) >= 1 && length(v.spec.provider.virtual_router.virtual_router_name) <= 255))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


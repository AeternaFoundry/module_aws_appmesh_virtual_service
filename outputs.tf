output "appmesh_virtual_services_id" {
  description = "Map of id values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appmesh_virtual_services_arn" {
  description = "Map of arn values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appmesh_virtual_services_created_date" {
  description = "Map of created_date values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "appmesh_virtual_services_last_updated_date" {
  description = "Map of last_updated_date values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.last_updated_date if v.last_updated_date != null && length(v.last_updated_date) > 0 }
}
output "appmesh_virtual_services_mesh_name" {
  description = "Map of mesh_name values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.mesh_name if v.mesh_name != null && length(v.mesh_name) > 0 }
}
output "appmesh_virtual_services_mesh_owner" {
  description = "Map of mesh_owner values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.mesh_owner if v.mesh_owner != null && length(v.mesh_owner) > 0 }
}
output "appmesh_virtual_services_name" {
  description = "Map of name values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appmesh_virtual_services_region" {
  description = "Map of region values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appmesh_virtual_services_resource_owner" {
  description = "Map of resource_owner values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.resource_owner if v.resource_owner != null && length(v.resource_owner) > 0 }
}
output "appmesh_virtual_services_spec" {
  description = "Map of spec values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}
output "appmesh_virtual_services_tags" {
  description = "Map of tags values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appmesh_virtual_services_tags_all" {
  description = "Map of tags_all values across all appmesh_virtual_services, keyed the same as var.appmesh_virtual_services"
  value       = { for k, v in aws_appmesh_virtual_service.appmesh_virtual_services : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}


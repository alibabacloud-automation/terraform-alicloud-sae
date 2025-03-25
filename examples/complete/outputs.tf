output "name_space_id" {
  description = "The NameSpace ID"
  value       = module.sae.namespace_id
}

output "app_name" {
  description = "The App Name"
  value       = module.sae.app_name
}

output "app_cpu" {
  description = "The App CPU"
  value       = module.sae.app_cpu
}

output "app_mem" {
  description = "The App MEM"
  value       = module.sae.app_mem
}

output "replicas" {
  description = "The App Replicas"
  value       = module.sae.replicas
}

output "package_type" {
  description = "The App Package Type"
  value       = module.sae.package_type
}


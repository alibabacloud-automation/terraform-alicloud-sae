output "namespace_id" {
  description = "The NameSpace ID"
  value       = concat(alicloud_sae_namespace.namespace[*].id, [""])[0]
}

output "app_cpu" {
  description = "The CPU required for each instance, in millicores, cannot be 0. Valid values: 1000, 16000, 2000, 32000, 4000, 500, 8000"
  value       = concat(alicloud_sae_application.application[*].cpu, [""])[0]
}

output "app_mem" {
  description = "The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU. Valid values: 1024, 131072, 16384, 2048, 32768, 4096, 65536, 8192"
  value       = concat(alicloud_sae_application.application[*].memory, [""])[0]
}

output "vpc_id" {
  description = "The vpc id."
  value       = concat(alicloud_sae_application.application[*].vpc_id, [""])[0]
}

output "vswitch_id" {
  description = "The vswitch id."
  value       = concat(alicloud_sae_application.application[*].vswitch_id, [""])[0]
}

output "replicas" {
  description = "Initial number of instances."
  value       = concat(alicloud_sae_application.application[*].replicas, [""])[0]
}

output "status" {
  description = "Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic."
  value       = concat(alicloud_sae_application.application[*].status, [""])[0]
}

output "app_name" {
  description = "Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters"
  value       = concat(alicloud_sae_application.application[*].app_name, [""])[0]
}

output "package_type" {
  description = "Application package type. Support FatJar, War and Image. Valid values: FatJar, Image, War."
  value       = concat(alicloud_sae_application.application[*].package_type, [""])[0]
}
output "image_url" {
  description = "Mirror address. Only Image type applications can configure the mirror address."
  value       = concat(alicloud_sae_application.application[*].image_url, [""])[0]
}
output "package_url" {
  description = "Deployment package address. Only FatJar or War type applications can configure the deployment package address."
  value       = concat(alicloud_sae_application.application[*].package_url, [""])[0]
}

output "jdk" {
  description = "The JDK version that the deployment package depends on. Image type applications are not supported"
  value       = concat(alicloud_sae_application.application[*].jdk, [""])[0]
}

output "web_container" {
  description = "The version of tomcat that the deployment package depends on. Image type applications are not supported."
  value       = concat(alicloud_sae_application.application[*].web_container, [""])[0]
}

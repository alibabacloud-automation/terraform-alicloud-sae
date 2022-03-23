variable "create_namespace" {
  type        = bool
  description = "Whether to create the namespace"
  default     = false
}

variable "create_config_map" {
  type        = bool
  description = "Whether to create the config_map"
  default     = false
}

variable "create_application" {
  type        = bool
  description = "Whether to create the application"
  default     = false
}

variable "name" {
  type        = string
  description = "The specification of module name."
  default     = null
}
#####################
# alicloud_sae_namespace
#####################
variable "region" {
  type        = string
  description = "The Alicloud Region"
  default     = null
}

variable "namespace_name" {
  type        = string
  description = "The Name of Namespace"
  default     = null
}

variable "namespace_description" {
  type        = string
  description = "The Description of Namespace"
  default     = null
}

variable "namespace_id" {
  type        = string
  description = "The Id of the NameSpace"
  default     = ""
}

#####################
# alicloud_sae_config_map
#####################
variable "config_map_data" {
  type        = string
  description = "ConfigMap instance data"
  default     = null
}
variable "config_map_description" {
  type        = string
  description = "The Description of ConfigMap"
  default     = null
}


#####################
# alicloud_sae_application
#####################
variable "app_description" {
  type        = string
  description = "Application description information. No more than 1024 characters"
  default     = null
}

variable "app_name" {
  type        = string
  description = "Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters"
  default     = null
}

variable "auto_config" {
  type        = bool
  description = "The auto config. Valid values: false, true"
  default     = null
}
variable "auto_enable_application_scaling_rule" {
  type        = bool
  description = "The auto enable application scaling rule. Valid values: false, true"
  default     = null
}

variable "batch_wait_time" {
  type        = number
  description = "The batch wait time."
  default     = null
}

variable "change_order_desc" {
  type        = string
  description = "The change order desc."
  default     = null
}

variable "command" {
  type        = string
  description = "Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid"
  default     = null
}

variable "command_args" {
  type        = string
  description = "Mirror startup command parameters. The parameters required for the above start command. For example: 1d"
  default     = null
}

variable "config_map_mount_desc" {
  type        = string
  description = "ConfigMap mount description"
  default     = null
}

variable "cpu" {
  type        = number
  description = "The CPU required for each instance, in millicores, cannot be 0. Valid values: 1000, 16000, 2000, 32000, 4000, 500, 8000"
  default     = null
}

variable "custom_host_alias" {
  type        = string
  description = "Custom host mapping in the container. For example: [{hostName:samplehost,ip:127.0.0.1}]"
  default     = null
}

variable "deploy" {
  type        = bool
  description = "The deploy. Valid values: false, true"
  default     = null
}

variable "edas_container_version" {
  type        = string
  description = "The operating environment used by the Pandora application"
  default     = null
}

variable "enable_ahas" {
  type        = string
  description = "The enable ahas"
  default     = null
}

variable "envs" {
  type        = string
  description = "he virtual switch where the elastic network card of the application instance is located. The switch must be located in the aforementioned VPC. The switch also has a binding relationship with the SAE namespace. If it is left blank, the default is the vSwitch ID bound to the namespace"
  default     = null
}

variable "image_url" {
  type        = string
  description = "Mirror address. Only Image type applications can configure the mirror address."
  default     = null
}

variable "jar_start_args" {
  type        = string
  description = "The JAR package starts application parameters."
  default     = null
}

variable "jar_start_options" {
  type        = string
  description = "The JAR package starts the application option."
  default     = null
}

variable "jdk" {
  type        = string
  description = "The JDK version that the deployment package depends on. Image type applications are not supported"
  default     = null
}

variable "liveness" {
  type        = string
  description = "Container health check. Containers that fail the health check will be shut down and restored. Currently, only the method of issuing commands in the container is supported"
  default     = null
}

variable "memory" {
  type        = number
  description = "The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU. Valid values: 1024, 131072, 16384, 2048, 32768, 4096, 65536, 8192"
  default     = null
}

variable "mount_desc" {
  type        = string
  description = "Mount description."
  default     = null
}

variable "mount_host" {
  type        = string
  description = "Mount point of NAS in application VPC."
  default     = null
}

variable "nas_id" {
  type        = string
  description = "ID of the mounted NAS, Must be in the same region as the cluster. It must have an available mount point creation quota, or its mount point must be on a switch in the VPC. If it is not filled in and the mountDescs field is present, a NAS will be automatically purchased and mounted on the switch in the VPC by default"
  default     = null
}

variable "oss_ak_id" {
  type        = string
  description = "OSS AccessKey ID."
  default     = null
}

variable "oss_ak_secret" {
  type        = string
  description = "OSS AccessKey Secret."
  default     = null
}

variable "oss_mount_descs" {
  type        = string
  description = "OSS mount description information."
  default     = null
}

variable "package_type" {
  type        = string
  description = "Application package type. Support FatJar, War and Image. Valid values: FatJar, Image, War."
  default     = null
}

variable "package_url" {
  type        = string
  description = "Deployment package address. Only FatJar or War type applications can configure the deployment package address."
  default     = null
}

variable "php_arms_config_location" {
  type        = string
  description = "The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file."
  default     = null
}

variable "php_config" {
  type        = string
  description = "PHP configuration file content."
  default     = null
}


variable "post_start" {
  type        = string
  description = "Execute the script after startup."
  default     = null
}

variable "pre_stop" {
  type        = string
  description = "Execute the script before stopping."
  default     = null
}

variable "readiness" {
  type        = string
  description = "Application startup status checks, containers that fail multiple health checks will be shut down and restarted. Containers that do not pass the health check will not receive SLB traffic."
  default     = null
}

variable "replicas" {
  type        = number
  description = "Initial number of instances."
  default     = null
}

variable "security_group_id" {
  type        = string
  description = "Security group ID."
  default     = null
}

variable "sls_configs" {
  type        = string
  description = "SLS configuration."
  default     = null
}

variable "termination_grace_period_seconds" {
  type        = number
  description = "Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60. Valid values: [1,60]."
  default     = 30
}

variable "timezone" {
  type        = string
  description = "Time zone, the default value is Asia/Shanghai."
  default     = "Asia/Shanghai"
}

variable "tomcat_config" {
  type        = string
  description = "Tomcat file configuration, set to `{}` means to delete the configuration: useDefaultConfig: Whether to use a custom configuration, if it is true, it means that the custom configuration is not used; if it is false, it means that the custom configuration is used. If you do not use custom configuration, the following parameter configuration will not take effect. contextInputType: Select the access path of the application. war: No need to fill in the custom path, the access path of the application is the WAR package name. root: No need to fill in the custom path, the access path of the application is /. custom: You need to fill in the custom path in the custom path below. contextPath: custom path, this parameter only needs to be configured when the contextInputType type is custom. httpPort: The port range is 1024~65535. Ports less than 1024 need Root permission to operate. Because the container is configured with Admin permissions, please fill in a port greater than 1024. If not configured, the default is 8080. maxThreads: Configure the number of connections in the connection pool, the default size is 400. uriEncoding: Tomcat encoding format, including UTF-8, ISO-8859-1, GBK and GB2312. If not set, the default is ISO-8859-1. useBodyEncoding: Whether to use BodyEncoding for URL. Valid values: contextInputType, contextPath, httpPort, maxThreads, uriEncoding, useBodyEncoding, useDefaultConfig."
  default     = null
}

variable "package_version" {
  type        = string
  description = "The version number of the deployment package. Required when the Package Type is War and FatJar."
  default     = null
}


variable "php_config_location" {
  type        = string
  description = "PHP application startup configuration mount path, you need to ensure that the PHP server will start using this configuration file."
  default     = null
}


variable "update_strategy" {
  type        = string
  description = "The update strategy."
  default     = null
}

variable "vswitch_id" {
  type        = string
  description = "The vswitch id."
  default     = null
}

variable "vpc_id" {
  type        = string
  description = "The vpc id."
  default     = null
}

variable "version_id" {
  type        = string
  description = "Application version id."
  default     = null
}

variable "war_start_options" {
  type        = string
  description = "WAR package launch application option. Application default startup command: java $JAVA_OPTS $CATALINA_OPTS [-Options] org.apache.catalina.startup.Bootstrap `$@` start."
  default     = null
}

variable "web_container" {
  type        = string
  description = "The version of tomcat that the deployment package depends on. Image type applications are not supported."
  default     = null
}

variable "min_ready_instances" {
  type        = number
  description = "The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be."
  default     = null
}

#####################
# alicloud_sae_grey_tag_route
#####################
variable "grey_tag_route_description" {
  type        = string
  description = "The description of GreyTagRoute."
  default     = null
}

variable "grey_tag_route_name" {
  type        = string
  description = "The name of GreyTagRoute."
  default     = null
}
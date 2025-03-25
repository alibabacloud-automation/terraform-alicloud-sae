# alicloud_sae_namespace
variable "namespace_description" {
  type        = string
  description = "The Description of Namespace"
  default     = "description"
}

# alicloud_sae_config_map
variable "config_map_description" {
  type        = string
  description = "The Description of ConfigMap"
  default     = "description"
}

variable "config_map_data" {
  type        = string
  description = "ConfigMap instance data"
  default     = "{\"env.home\":\"/root\",\"envtest.shell\":\"/bin/sh\"}"
}


# alicloud_sae_application
variable "replicas" {
  type        = number
  description = "Initial number of instances."
  default     = 2
}

variable "auto_enable_application_scaling_rule" {
  type        = bool
  description = "The auto enable application scaling rule. Valid values: false, true"
  default     = false
}

variable "cpu" {
  type        = number
  description = "The CPU required for each instance, in millicores, cannot be 0. Valid values: 1000, 16000, 2000, 32000, 4000, 500, 8000"
  default     = 500
}

variable "memory" {
  type        = number
  description = "The memory required for each instance, in MB, cannot be 0. One-to-one correspondence with CPU. Valid values: 1024, 131072, 16384, 2048, 32768, 4096, 65536, 8192"
  default     = 2048
}

variable "pre_stop" {
  type        = string
  description = "Execute the script before stopping."
  default     = "{\"exec\":{\"command\":[\"cat\",\"/etc/group\"]}}"
}

variable "image_url" {
  type        = string
  description = "Mirror address. Only Image type applications can configure the mirror address."
  default     = "registry-vpc.cn-hangzhou.aliyuncs.com/sae-demo-image/consumer:1.0"
}

variable "min_ready_instances" {
  type        = number
  description = "The Minimum Available Instance. On the Change Had Promised during the Available Number of Instances to Be."
  default     = 2
}

variable "timezone" {
  type        = string
  description = "Time zone, the default value is Asia/Shanghai."
  default     = "Asia/Beijing"
}

variable "php_arms_config_location" {
  type        = string
  description = "The PHP application monitors the mount path, and you need to ensure that the PHP server will load the configuration file of this path. You don't need to pay attention to the configuration content, SAE will automatically render the correct configuration file."
  default     = "/usr/local/etc/php/conf.d/arms.ini"
}

variable "change_order_desc" {
  type        = string
  description = "The change order desc"
  default     = "change_order_desc"
}

variable "command" {
  type        = string
  description = "Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid"
  default     = "sleep"
}

variable "command_args" {
  type        = string
  description = "Mirror startup command parameters. The parameters required for the above start command. For example: 1d"
  default     = "[\"1d\"]"
}

variable "package_version" {
  type        = string
  description = "The version number of the deployment package. Required when the Package Type is War and FatJar."
  default     = "module_test"
}

variable "termination_grace_period_seconds" {
  type        = number
  description = "Graceful offline timeout, the default is 30, the unit is seconds. The value range is 1~60. Valid values: [1,60]."
  default     = 60
}

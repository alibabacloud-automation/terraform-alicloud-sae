provider "alicloud" {
  region = "cn-hangzhou"
}
data "alicloud_zones" "default" {
}

data "alicloud_vpcs" "default" {
  name_regex = "default-NODELETING"
}
data "alicloud_vswitches" "default" {
  vpc_id = data.alicloud_vpcs.default.ids.0
}

module "sae" {
  source = "../.."
  #  alicloud_sae_namespace
  create_namespace      = true
  namespace_name        = "tftestacc"
  region                = "cn-hangzhou"
  namespace_description = var.namespace_description

  #  alicloud_sae_config_map
  create_config_map      = true
  name                   = "tftestacc"
  config_map_description = var.config_map_description
  config_map_data        = var.config_map_data

  #  alicloud_sae_application
  create_application                   = true
  app_description                      = "app_description"
  app_name                             = "appname"
  package_type                         = "Image"
  image_url                            = var.image_url
  package_version                      = var.package_version
  replicas                             = var.replicas
  cpu                                  = var.cpu
  memory                               = var.memory
  vpc_id                               = data.alicloud_vpcs.default.vpcs[0].id
  vswitch_id                           = data.alicloud_vswitches.default.vswitches[0].id
  min_ready_instances                  = var.min_ready_instances
  pre_stop                             = var.pre_stop
  timezone                             = var.timezone
  php_arms_config_location             = var.php_arms_config_location
  auto_enable_application_scaling_rule = var.auto_enable_application_scaling_rule
  change_order_desc                    = var.change_order_desc
  command                              = var.command
  command_args                         = var.command_args
}

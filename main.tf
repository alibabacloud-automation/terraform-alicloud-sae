locals {
  namespace_id = var.namespace_id != "" ? var.namespace_id : concat(alicloud_sae_namespace.namespace[*].id, [""])[0]
}

#####################
# alicloud_sae_namespace
#####################
resource "alicloud_sae_namespace" "namespace" {
  count                 = var.create_namespace ? 1 : 0
  namespace_id          = format("%s:%s", var.region, var.namespace_name)
  namespace_name        = var.namespace_name
  namespace_description = var.namespace_description
}

#####################
# alicloud_sae_config_map
#####################
resource "alicloud_sae_config_map" "config_map" {
  count        = var.create_config_map ? 1 : 0
  namespace_id = local.namespace_id
  name         = var.name
  description  = var.config_map_description
  data         = var.config_map_data
}

#####################
# alicloud_sae_application
#####################
resource "alicloud_sae_application" "application" {
  count                                = var.create_application ? 1 : 0
  app_description                      = var.app_description
  app_name                             = var.app_name
  auto_config                          = var.auto_config
  auto_enable_application_scaling_rule = var.auto_enable_application_scaling_rule
  batch_wait_time                      = var.batch_wait_time
  change_order_desc                    = var.change_order_desc
  command                              = var.command
  command_args                         = var.command_args
  config_map_mount_desc                = var.config_map_mount_desc
  cpu                                  = var.cpu
  custom_host_alias                    = var.custom_host_alias
  deploy                               = var.deploy
  edas_container_version               = var.edas_container_version
  enable_ahas                          = var.enable_ahas
  envs                                 = var.envs
  image_url                            = var.image_url
  jar_start_args                       = var.jar_start_args
  jar_start_options                    = var.jar_start_options
  jdk                                  = var.jdk
  liveness                             = var.liveness
  memory                               = var.memory
  min_ready_instances                  = var.min_ready_instances
  mount_desc                           = var.mount_desc
  mount_host                           = var.mount_host
  namespace_id                         = local.namespace_id
  nas_id                               = var.nas_id
  oss_ak_id                            = var.oss_ak_id
  oss_ak_secret                        = var.oss_ak_secret
  oss_mount_descs                      = var.oss_mount_descs
  package_type                         = var.package_type
  package_url                          = var.package_url

  package_version                  = var.package_version
  php_arms_config_location         = var.php_arms_config_location
  php_config                       = var.php_config
  php_config_location              = var.php_config_location
  post_start                       = var.post_start
  pre_stop                         = var.pre_stop
  readiness                        = var.readiness
  replicas                         = var.replicas
  security_group_id                = var.security_group_id
  sls_configs                      = var.sls_configs
  termination_grace_period_seconds = var.termination_grace_period_seconds
  timezone                         = var.timezone
  tomcat_config                    = var.tomcat_config
  update_strategy                  = var.update_strategy
  vswitch_id                       = var.vswitch_id
  vpc_id                           = var.vpc_id
  version_id                       = var.version_id
  war_start_options                = var.war_start_options
  web_container                    = var.web_container
}

resource "alicloud_sae_grey_tag_route" "default" {
  count               = var.create_application && var.create_sae_grey_tag_route ? 1 : 0
  app_id              = alicloud_sae_application.application[0].id
  grey_tag_route_name = var.grey_tag_route_name
  description         = var.grey_tag_route_description
}
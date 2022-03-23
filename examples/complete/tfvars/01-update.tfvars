# namespace
namespace_description = "description_update"

# config_map
config_map_description = "description_update"
config_map_data        = "{\"env.home\":\"/root\",\"env.shell\":\"/bin/sh\"}"

# application
app_description            = "app_description_update"
replicas                   = 3
min_ready_instances        = 2
cpu                        = 1000
memory                     = 4096
edas_container_version     = "3.5.3"
image_url                  = "registry-vpc.cn-hangzhou.aliyuncs.com/google_containers/etcd:3.4.3-0"
custom_host_alias          = "[{\"hostName\":\"samplehost\",\"ip\":\"127.0.0.1\"}]"
command                    = "sleep"
command_args               = "[\"2d\"]"
pre_stop                   = "{\"exec\":{\"command\":[\"cat\",\"/etc/group/update\"]}}"
timezone                   = "Asia/Shanghai"
php_arms_config_location   = "/usr/local/etc/php/conf.d/arms_update.ini"
change_order_desc          = "change_order_desc_update"
grey_tag_route_description = "grey_tag_route_description_update"
grey_tag_route_name        = "grey_tag_route_name_update"
package_version            = "module_test_update"
terraform-alicloud-sae
======================

Terraform模块用于在阿里云上添加新的 sae 命名空间,配置列表,应用。

支持以下类型的资源：

* [alicloud_sae_namespace](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/sae_namespace)
* [alicloud_sae_config_map](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/sae_config_map)
* [alicloud_sae_application](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/sae_application)


## 用法

创建一个NameSpace并在该NameSpace下配置: 配置列表,应用。

```hcl
module "example" {
  source                 = "terraform-alicloud-modules/sae/alicloud"
  namespace_name         = "tftestacc"
  region                 = "cn-hangzhou"
  name                   = "tftestacc"
  config_map_description = "description"
  config_map_data        = "map_data"
  app_name               = "name"
  package_type           = "Image"
  vswitch_id             = "your_vswitch_id"
  vpc_id                 = "your_vpc_id"
  image_url              = "your_image_url"
  replicas               = 2
  cpu                    = 500
  memory                 = 2048
}
```


## 示例

* [SAE 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-sae/tree/master/examples/complete)


## Terraform 版本

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.67.0 |

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)

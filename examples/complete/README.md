# SAE example

Configuration in this directory creates `alicloud_sae_namespace`,`alicloud_sae_config_map` and `alicloud_sae_application`.


# Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs
| Name | Description |
|------|-------------|
| name_space_id | The Name of Namespace |
| app_name | Application Name |
| app_cpu | The CPU required for each instance |
| app_mem | The memory required for each instance |
| replicas | Initial number of instances |
| package_type | Application package type |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

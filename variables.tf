variable "server_groups" {
  description = "List of server groups to provision EC2 instances"
  type = list(object({
    name                 = string
    ami_id               = string            # Added AMI ID per group
    instance_names       = list(string)
    instance_type        = string
    subnet_id            = string
    key_name             = string
    security_group_ids   = list(string)
    iam_instance_profile = string
    env                  = string
    os                   = string
    patching             = string
    patch_group          = string
    new_relic_api_key    = string
    new_relic_account_id = string
    hostname             = string
    environment          = string
  }))
}


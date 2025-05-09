variable "hostname" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_name" {}
variable "security_group_ids" { type = list(string) }
variable "iam_instance_profile" {}
variable "ami_id" {}
variable "environment" {}
variable "os" {}
variable "patching" {}
variable "patch_group" {}
variable "new_relic_api_key" {}
variable "new_relic_account_id" {}


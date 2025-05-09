variable "server_groups" {
  description = "List of server groups to provision EC2 instances"
  type = list(object({
    name                 = string
    instance_names       = list(string)    # Added support for multiple instance names
    instance_type        = string
    subnet_id            = string
    key_name             = string
    security_group_ids   = list(string)
    iam_instance_profile = string
    env                  = string          # Environment type (dev/test/prod)
    os                   = string          # OS type (linux/windows)
    patching             = string          # Whether patching is required
    patch_group          = string          # Patch group
    new_relic_api_key    = string          # New Relic API Key
    new_relic_account_id = string          # New Relic Account ID
    hostname            = string          # Hostname of the instance (newly added)
    environment         = string          # Environment (dev, test, prod) (newly added)
  }))
}

# Other variables for the module
variable "new_relic_api_key" {
  description = "New Relic API Key"
  type        = string
}

variable "new_relic_account_id" {
  description = "New Relic Account ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key name for EC2 instance SSH access"
  type        = string
}

variable "security_group_ids" {
  description = "Security group IDs for EC2 instance"
  type        = list(string)
}

variable "iam_instance_profile" {
  description = "IAM instance profile for EC2 instance"
  type        = string
}

variable "env" {
  description = "Environment variable (dev, test, prod)"
  type        = string
}

variable "os" {
  description = "Operating system (linux/windows)"
  type        = string
}

variable "patching" {
  description = "Whether the server requires patching"
  type        = string
}

variable "patch_group" {
  description = "Patch group for the instance"
  type        = string
}

variable "hostname" {
  description = "Hostname for the EC2 instance"
  type        = string
}

variable "environment" {
  description = "Environment for the EC2 instance (dev, test, prod)"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for EC2 instances"
  type        = string
}


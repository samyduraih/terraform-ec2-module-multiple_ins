resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip
  iam_instance_profile        = var.iam_instance_profile

  tags = {
    Name        = var.hostname
    env         = var.environment
    os          = var.os
    patching    = "Yes"
    PatchGroup  = var.patch_group
  }

  user_data = templatefile("${path.module}/userdata.sh", {
    hostname             = var.hostname
    new_relic_api_key    = var.new_relic_api_key
    new_relic_account_id = var.new_relic_account_id
  })
}


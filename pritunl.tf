data "aws_ami" "ubuntu" {

  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

data "template_file" "user_data" {
  template = file("${path.module}/userdata.sh")
}

resource "aws_instance" "ec2" {
  count       = !var.create_aws_vpn && var.create_aws_ec2_pritunl ? 1: 0
  ami                     = data.aws_ami.ubuntu.id
  instance_type           = var.instance_type
  subnet_id               = var.subnet_id
  security_groups        = [var.security_group_id == "" ? aws_security_group.default[0].id : var.security_group_id]
  key_name                = var.key_name
  ebs_optimized           = var.ebs_optimized
  disable_api_termination = var.disable_api_termination
  disable_api_stop        = var.disable_api_stop
  user_data_base64        = base64encode(data.template_file.user_data.rendered)
  source_dest_check       = var.source_dest_check
  iam_instance_profile    = var.iam_instance_profile
  volume_tags             = merge(var.common_tags, tomap({ "Name" : "${var.project_name_prefix}-vpn" }))
  tags                    = merge(var.common_tags, tomap({ "Name" : "${var.project_name_prefix}-vpn" }))

  root_block_device {
    delete_on_termination = var.delete_on_termination
    encrypted             = var.encrypted
    volume_size           = var.root_volume_size
    volume_type           = var.volume_type
  }
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("/home/username/key.pem")
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    when = destroy
    inline = [
      "aws ssm delete-parameter --name 'pritunl-username'",
      "aws ssm delete-parameter --name 'pritunl-password'"
    ]
  }
}

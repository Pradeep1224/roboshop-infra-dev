resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  subnet_id = local.public_subnet_id
  vpc_security_group_ids = [local.bastion_sg_id]
  iam_instance_profile = aws_iam_instance_profile.bastion.name


  user_data = templatefile("${path.module}/bastion.sh.tftpl", {
  
    partition_number = 4
    extra_disk  = 20
  })
  user_data_replace_on_change = true 






#we are going to run terraform commands from thi instance, so it need more disk
    root_block_device {
    volume_size           = 50      # Size in GiB (must be >= AMI snapshot size)
    volume_type           = "gp3"   # Recommended default (gp2, gp3, io1, io2)
    tags = local.common_tags

}

  tags = local.common_tags
  }

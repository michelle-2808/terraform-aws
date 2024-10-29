resource "aws_instance" "main" {
  count = var.instance_count
  ami = var.ami_id
  instance_type = "t3.xlarge"
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "${var.environment}-ec2-${var.environment}-00${count.index + 1}" 
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = data.aws_availability_zones.available.names[0]
  size = 30
  type = "gp3"

  tags = {
    Name = "${var.environment}-ebs-${var.environment}-001"
  }
}
resource "aws_launch_template" "lt" {
  name_prefix   = "my-lt"
  image_id      = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = "my-key-sg"

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = base64encode(file("${path.module}/userdata.txt"))

  tags = {

    Name = "ec2-public-server"
  }


}


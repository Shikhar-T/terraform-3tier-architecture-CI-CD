resource "aws_instance" "db" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  subnet_id = module.vpc.private_subnet_id

  vpc_security_group_ids = [aws_security_group.db_sg.id]

  user_data = file("${path.module}/userdata-db.txt")

  tags = {
    Name = "db-server"
  }
}


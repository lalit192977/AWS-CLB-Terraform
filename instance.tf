# ================================= create AWS instance ============================
resource "aws_instance" "web_a" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  availability_zone      = "ap-south-1a"
  key_name = "${aws_key_pair.tf-key.key_name}"

  user_data = file("${path.module}/script.sh")

  tags = {
    Name = "web-a"
  }
}


resource "aws_instance" "web_b" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  availability_zone      = "ap-south-1b"
  key_name = "${aws_key_pair.tf-key.key_name}"

  user_data = file("${path.module}/script.sh")


  tags = {
    Name = "web-b"
  }
}



resource "aws_instance" "web_c" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  availability_zone      = "ap-south-1c"
  key_name = "${aws_key_pair.tf-key.key_name}"

  user_data = file("${path.module}/script.sh")




  tags = {
    Name = "web-c"
  }
}
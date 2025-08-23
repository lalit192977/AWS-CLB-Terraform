# ================================= security group for classic load balancer ==========================


resource "aws_security_group" "classic_sg" {
  name        = var.sg_classic
  description = "this is the security group for classic load balancer"


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



# ========================== security group for instance =========================================

resource "aws_security_group" "instance_sg" {
  name        = var.sg_instance
  description = "This is the security group for instances"

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.classic_sg.id]
  }

ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.classic_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
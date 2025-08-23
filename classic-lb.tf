resource "aws_elb" "classic_lb" {
  name               = "my-classic-lb"
  availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  security_groups    = [aws_security_group.classic_sg.id]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    target              = "HTTP:80/"
    timeout             = 5
    interval            = 10
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  instances = [
    aws_instance.web_a.id,
    aws_instance.web_b.id,
    aws_instance.web_c.id
  ]
}
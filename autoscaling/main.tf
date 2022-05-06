locals {
    instance_ami = "ami-0022f774911c1d690"
}

resource "aws_launch_template" "website_lt" {
  name = "website_launch_template"

  image_id = local.instance_ami

  instance_type = "t2.micro"

  key_name = "upbKeyPair"

  network_interfaces {
    associate_public_ip_address = true
    security_groups = [aws_security_group.website_sg.id]
  }

#   vpc_security_group_ids = 

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "asg-instance"
    }
  }

  user_data = filebase64("${path.module}/user_data.sh")
}

resource "aws_security_group" "website_sg" {
  name        = "website_sg-2"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

  ingress {
    description      = "htpp traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "http"
  }
  
  ingress {
    description      = "ssh traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "ssh"
  }
  tags = {
    Name = "website_sg"
  }
}

resource "aws_autoscaling_group" "website_asg" {
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  desired_capacity   = 2
  max_size           = 3
  min_size           = 1
  
  target_group_arns  = [
    aws_lb_target_group.website_tg.arn
  ]

  launch_template {
    id      = aws_launch_template.website_lt.id
    version = "$Latest"
  }
}

resource "aws_lb_target_group" "website_tg" {
  name        = "website_tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_ssm_parameter.vpc_id.value
}

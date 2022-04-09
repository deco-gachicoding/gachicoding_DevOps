#resource "aws_subnet" "lb-Subnet-1" {
#  vpc_id     = aws_vpc.vpc.id
#  cidr_block = "10.0.2.0/24"
#  availability_zone = "ap-northeast-2a"
#
#  tags = {
#    Name    = "lb-Subnet"
#    Service = "gachi"
#  }
#}
#
#resource "aws_subnet" "lb-Subnet-2" {
#  vpc_id     = aws_vpc.vpc.id
#  cidr_block = "10.0.3.0/24"
#  availability_zone = "ap-northeast-2b"
#
#  tags = {
#    Name    = "lb-Subnet"
#    Service = "gachi"
#  }
#}
#
#resource "aws_lb" "gachi-front-lb" {
#  name               = "gachi-front-lb"
#  internal           = false
#  load_balancer_type = "application"
#  security_groups    = [aws_security_group.gachi-front-lb-sg.id]
#  subnets            = [aws_subnet.lb-Subnet-1.id, aws_subnet.lb-Subnet-2.id]
#
#  enable_deletion_protection = true
#}
#
#resource "aws_lb_target_group" "gachi-lb-tg" {
#  name     = "gachi-lb-tg"
#  port     = 80
#  protocol = "HTTP"
#  vpc_id   = aws_vpc.vpc.id
#}
#
#resource "aws_lb_target_group_attachment" "gachi-front-tg-att01" {
#  target_group_arn = aws_lb_target_group.gachi-lb-tg.arn
#  target_id = aws_instance.nginx_instance_1.id
#  port = 80
#}
#
#resource "aws_lb_target_group_attachment" "gachi-front-tg-att02" {
#  target_group_arn = aws_lb_target_group.gachi-lb-tg.arn
#  target_id = aws_instance.nginx_instance_2.id
#  port = 80
#}
#
#resource "aws_lb_listener" "gachi-front-alb-listen" {
#  load_balancer_arn = aws_lb.gachi-front-lb.arn
#  port = 80
#  protocol = "HTTP"
#
#  default_action {
#    type = "forward"
#    target_group_arn = aws_lb_target_group.gachi-lb-tg.arn
#  }
#}
#
#resource "aws_security_group" "gachi-front-lb-sg" {
#  name        = "gachi-front-lb-sg"
#  vpc_id      = aws_vpc.vpc.id
#
#  ingress {
#    from_port   = 80
#    to_port     = 80
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  ingress {
#    from_port   = 443
#    to_port     = 443
#    protocol    = "tcp"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#
#  egress {
#    from_port       = 0
#    to_port         = 0
#    protocol        = "-1"
#    cidr_blocks     = ["0.0.0.0/0"]
#    prefix_list_ids = []
#  }
#
#  tags = {
#    Name    = "gachi-FrontEnd-ALB-SG"
#    Service = "gachi"
#  }
#}

resource "aws_instance" "nginx_instance_1" {
  ami                     = var.base_ami
  instance_type           = "t3.micro"
  subnet_id               = aws_subnet.public_subnet.id
  key_name                = "gachicoding-front-key"
  vpc_security_group_ids  = ["${aws_security_group.webserversg.id}"]

  tags = {
    Name = "gachicoding_front_lb1"
  }

  depends_on = ["aws_internet_gateway.igw"]
}

resource "aws_instance" "nginx_instance_2" {
  ami = var.base_ami
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet.id
  key_name = "gachicoding-front-key"
  vpc_security_group_ids = ["${aws_security_group.webserversg.id}"]

  tags = {
    Name = "gachicoding_front_lb2"
  }

  depends_on = ["aws_internet_gateway.igw"]
}

resource "aws_security_group" "webserversg" {
  name        = "webserversg"
  description = "allow 22, 80"
  vpc_id      = aws_vpc.vpc.id
}

resource "aws_security_group_rule" "websg_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.webserversg.id
  description       = "ssh"
}

resource "aws_security_group_rule" "websg_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.webserversg.id
  description       = "http"
}

resource "aws_security_group_rule" "websg_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.webserversg.id
  description       = "outbound"
}
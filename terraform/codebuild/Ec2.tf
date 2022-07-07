# front
resource "aws_instance" "frontend_instance" {
  ami                     = var.base_ami
  instance_type           = "t3.micro"
  subnet_id               = aws_subnet.public_subnet.id
  key_name                = "gachicoding-front-key"
  vpc_security_group_ids  = [aws_security_group.webserversg.id]

  tags = {
    Name = "gachicoding_front"
  }

  depends_on = ["aws_internet_gateway.igw"]
}

resource "aws_ebs_volume" "front_app_volume" {
  availability_zone = var.availability_zones
  type = "gp3"
  size = 5

  tags = {
    Name = "front_app_volume"
  }
}

resource "aws_volume_attachment" "front_ebs_att" {
  device_name = "/dev/sdf"
  instance_id = aws_instance.frontend_instance.id
  volume_id   = aws_ebs_volume.front_app_volume.id
}

resource "aws_eip" "front_ip" {
  vpc      = true
  instance = aws_instance.frontend_instance.id
}

# back
resource "aws_instance" "backend_instance" {
  ami                     = var.base_ami
  instance_type           = "t3.micro"
  subnet_id               = aws_subnet.public_subnet.id
  key_name                = "gachicoding-backend-test-key"
  vpc_security_group_ids  = [aws_security_group.webserversg.id]

  tags = {
    Name = "gachicoding_back"
  }

  depends_on = ["aws_internet_gateway.igw"]
}

resource "aws_ebs_volume" "back_app_volume" {
  availability_zone = var.availability_zones
  type = "gp3"
  size = 5

  tags = {
    Name = "back_app_volume"
  }
}


resource "aws_volume_attachment" "back_ebs_att" {
  device_name = "/dev/sdf"
  instance_id = aws_instance.backend_instance.id
  volume_id   = aws_ebs_volume.back_app_volume.id
}

# security
resource "aws_security_group" "backend_sg" {
  name = "backend_sg"
  description = "allow : 22, frontend 80"
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

resource "aws_security_group_rule" "back_http" {
  from_port         = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.backend_sg.id
  to_port           = 80
  type              = "ingress"
  cidr_blocks = ["15.165.119.39/32"]
}

resource "aws_security_group_rule" "back_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.backend_sg.id
  description       = "ssh"
}
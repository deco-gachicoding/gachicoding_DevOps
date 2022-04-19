variable "aws_region" {}
variable "availability_zones" {}
variable "base_ami" {}
variable "alb_account_id" {}
variable "targets" {
  default = [
    {
      name = "user1"
      port = 1010
      path = "/user"
    },
    {
      name = "user2"
      port = 2020
      path = "/v2/user"
    }
  ]
}

variable "maintenance-mode" {
  default = {
    user = {
      ec2 = 0
      alb = 0
    },
    web = {
      ec2 = 0
      alb = 0
    }
#    (...)
  }
}

variable "maintenance-instance" {
  default     = 0
}
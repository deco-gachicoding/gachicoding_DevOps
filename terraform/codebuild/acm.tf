#resource "aws_acm_certificate" "gachicoding_shop" {
#  domain_name       = "gachicoding.shop"
#  subject_alternative_names = [ "*.gachicoding.shop" ]
#  validation_method = "DNS"
#  lifecycle {
#    create_before_destroy = true
#  }
#  tags = {
#    Name                = "gachicoding_shop"
#    Env                 = "stg"
#    CreateUser          = "bjy502@gmail.com"
#    Owner               = "iac"
#    Role                = "alb"
#    Service             = "acm"
#  }
#}
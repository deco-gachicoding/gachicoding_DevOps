## AWS Route53 Zone
#resource "aws_route53_zone" "gachicoding_shop" {
#  name = "gachicoding.shop"
#}
#
## MX Record for CNAME
#resource "aws_route53_record" "gachicoding_shop_cname" {
#  zone_id = aws_route53_zone.gachicoding_shop.zone_id
#  name    = "_28f1dea56f364f6f98c8fb5c45ac1788"
#  type    = "CNAME"
#  ttl     = "300"
#
#  records        = ["_3ae8176b66aa0557a690b0a954c47937.qvwhjqbvbg.acm-validations.aws."]
#}

#resource "aws_route53_record" "frontend_A" {
#  zone_id = aws_route53_zone.gachicoding_shop.zone_id
#  name    = "gachicoding.shop"
#  type    = "A"
#
#  alias {
#    name     = aws_lb.gachi-front-lb.dns_name
#    zone_id  = aws_lb.gachi-front-lb.zone_id
#    evaluate_target_health = true
#  }
#}
resource "aws_route53_zone" "gachicoding" {
  name = "gachicoding.com"
}

resource "aws_route53_record" "nginx_a" {
  zone_id = aws_route53_zone.gachicoding.zone_id
  name    = "gachicoding.com"
  type    = "A"

  alias {
    name     = aws_alb.frontend.dns_name
    zone_id  = aws_alb.frontend.zone_id
    evaluate_target_health = true
  }
}
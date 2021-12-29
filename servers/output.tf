# //Outputs de Norte Virginia
# output "ip_address-virginia" {
#     value = aws_instance.web.public_ip
#     description = "IP Publico de virginia"
# }

# output "dns_address-virginia" {
#     value = aws_instance.web_ohio.public_dns
#     description = "DNS de virginia"
# }

//Outputs de Ohio
# output "ip_address-ohio" {
#     value = aws_instance.web.public_ip
#     description = "x-------------------------x"
# }

# output "dns_address-ohio" {
#     value = aws_instance.web_ohio.public_dns
#     description = "-------------------------"  
#     sensitive = true
# }

output "ip_address" {
  value = "${aws_instance.web[*].public_ip}"
}
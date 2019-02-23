# Output file
output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "subnet_id_private_a" {
  value = "${aws_subnet.subnet_private_a.id}"
}

output "subnet_id_private_b" {
  value = "${aws_subnet.subnet_private_b.id}"
}

output "subnet_id_private_c" {
  value = "${aws_subnet.subnet_private_c.id}"
}

output "subnet_id_public_a" {
  value = "${aws_subnet.subnet_public_a.id}"
}

output "subnet_id_public_b" {
  value = "${aws_subnet.subnet_public_b.id}"
}

output "subnet_id_public_c" {
  value = "${aws_subnet.subnet_public_c.id}"
}

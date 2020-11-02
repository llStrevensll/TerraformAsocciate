output "private_ip" {
    value = aws_instance.test_instance.private_ip
    description = "private ip for test_instance"
}

output "private_ip_2" {
    value = aws_instance.test_instance_2.private_ip
    description = "private ip for test_instance_2"
}
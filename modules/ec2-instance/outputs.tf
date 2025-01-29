output "instance_id" {
description = "The ID of the EC2 instance"
value = [for instance in aws_instance.sample_app : instance.id]
}
output "security_group_id" {
description = "The ID of the security group"
value = aws_security_group.sample_app.id
}
output "public_ip" {
description = "The public IP of the EC2 instance"
value = [for instance in aws_instance.sample_app : instance.public_ip]
}

resource "aws_security_group" "three" {
  name        = "terraform-sg"
  description = "It has ssh and all traffic"

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  // Add an egress rule if needed; otherwise, it defaults to allowing all outbound traffic.
}

variable "ports" {
  type    = list(number)
  default = [22, 80, 443, 3306]
}

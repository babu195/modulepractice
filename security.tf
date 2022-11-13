resource "aws_security_group" "asuslapi" {
    description = "aws vpc security group has been created"
    vpc_id = module.vpc.vpc_id   

    ingress {
      cidr_blocks = [ local.anyware ]
      description = "open ssh"
      from_port = local.ssh_port
      protocol = local.tcp
      to_port = local.ssh_port
    }
    ingress {
      cidr_blocks = [ local.anyware ]
      description = "open http"
      from_port = local.http_port
      protocol = local.tcp
      to_port = local.http_port
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = {
      "Name" = "asuslapi11"
    }
    
    depends_on = [
      module.vpc
    ]

}
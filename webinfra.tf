resource "aws_instance" "instanceterraform" {
    ami = var.ami_id
    associate_public_ip_address = true
    instance_type = "t2.micro"
    key_name = "id_rsapublic"
    vpc_security_group_ids = [ aws_security_group.asuslapi.id]
    subnet_id = module.vpc.public_subnet[0]

    depends_on = [
      module.vpc,
      aws_security_group.asuslapi
    ]
    tags = {
      "Name" = "dell1234"
    }
  
}

resource "null_resource" "thisisterraform" {
    triggers = {
      running_time = var.web_trriger
    }

    provisioner "remote_exec" {
        connection {
          type = "ssh"
          user = "ubuntu"
          private_key = file("~/.ssh/id_rsa")
          host = aws_instance.instanceterraform.public.ip

        }

        inline = [
            "sudo apt update",
            "sudo apt install nginx -y",
            "sudo apt-get install tree -y"
        ]
      
    }
    depends_on = [
      aws_instance.thisisterraform
    ]
  
}
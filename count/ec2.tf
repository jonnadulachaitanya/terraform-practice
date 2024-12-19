resource "aws_security_group" "allow_ssh_terraform" {
    description = "allow port number 22 for ssh"
    name = "allow_ssh"
    
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags  = {
        Name = "allow_ssh"
    }
}

resource "aws_instance" "terraform" {
    count = 3
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.instance_types[count.index]
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

    tags = {
        Name = var.instance_names[count.index]    # count[0],[1],[2]
    }
    
}
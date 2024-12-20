data "aws_ami" "join-devops" {
    most_recent = true
    owners = ["973714476881"]

    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]

    }

    filter {
        name = "root-device-type"
        values = ["ebs"]
    }
}
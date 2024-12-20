data "aws_ami" "join-devops" {
    most_recent = true
    owners = ["973714476881"]

    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name = "virtualization_type"
        values = ["hvm"]

    }

    filter {
        name = "Root device type"
        values = ["EBS"]
    }
}
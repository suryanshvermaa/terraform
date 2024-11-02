terraform{
        required_providers{
                aws = {
                        source = "hashicorp/aws"
                        version = "5.74.0"
                }
        }
        required_version = "1.9.8"
}

provider "aws" {
        region = "ap-south-1"
}

resource "aws_instance" "my_terraform_ec2_instance"{
        ami = "ami-0dee22c13ea7a9a67"
        instance_type = "t2.micro"
        tags = {
                Name = "TerraformInstance"
        }
}

output "aws_intance_output"{
        value = aws_instance.my_terraform_ec2_instance.public_ip
}
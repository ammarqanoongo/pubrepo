module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = "your_ami"
  instance_type          = "your_instance_type"
  key_name               = "your_key_pair"
  monitoring             = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

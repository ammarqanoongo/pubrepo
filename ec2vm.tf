module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "machine-${each.key}"

  ami                    = "ami-0cc87e5027adcdca8"
  instance_type          = "t2.micro"
  key_name               = "Terraform"
  monitoring             = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = "ami-0dfcb1ef8550277af"
  instance_type          = "t2.micro"
  key_name               = "pipeline"
  monitoring             = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

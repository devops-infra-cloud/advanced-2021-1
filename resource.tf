resource "aws_instance" "server" {
  ami = "ami-0996d3051b72b5b2c"
  instance_type = "t2.micro"
  tags = {
    "Name" = "thinknyx-kul-self"
  }
}

resource "aws_security_group" "secGroup" {
  name = "thinknyx-kul-self"
  description = "Managed by Terraform"
  vpc_id = data.aws_vpc.defaultVPC.id
  tags = {
    "Name" = "thinknyx-kul-self"
  }
}

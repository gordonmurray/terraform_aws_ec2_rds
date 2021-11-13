resource "aws_key_pair" "pem-key" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_key_pair" "mumbai_key" {
  provider   = aws.mumbai
  key_name   = "mumbai-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_key_pair" "virginia_key" {
  provider   = aws.virginia
  key_name   = "virginia-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

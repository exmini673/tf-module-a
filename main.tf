resource "aws_instance" "terra_instance" {
  # for_each          = tomap({ "1" = "${var.aws_region}a", "2" = "${var.aws_region}b" })
  instance_type     = "t3.micro"
  # availability_zone = each.value
  availability_zone = var.az
  ami               = "ami-0770b99ae78aaa58f"
  # subnet_id         = aws_subnet.terra_public_subnet[tonumber(each.key) - 1].id
  subnet_id = var.subnet_id
  key_name = var.key_pair
  tags = {
    Name      = "terra_instance13"
    createdBy = "terraform"
  }
}

data "aws_ssm_parameter" "vpc_id" {
  name = "/vpc/vpc_id"
}
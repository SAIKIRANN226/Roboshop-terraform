data "aws_ssm_parameter" "vpc_id" {  # we have stored the vpc in ssm parameter, now we need to read it.thats why this data.tf
  name = "/${var.project_name}/${var.environment}/vpc_id"
}

data "aws_vpc" "default" {
  default = true
}
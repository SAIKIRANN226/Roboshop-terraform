data "aws_ssm_parameter" "vpc_id" {  # We have stored the vpc in ssm parameter, now we need to read it.thats why this data.tf, search in google "data source ssm parameter"
  name = "/${var.project_name}/${var.environment}/vpc_id"
}

data "aws_vpc" "default" {
  default = true
}
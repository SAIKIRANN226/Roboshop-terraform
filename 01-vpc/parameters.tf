resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name}/${var.environment}/vpc_id"  # It is name which is nothing but key and value will also be there
    type = "String"
    value = module.roboshop.vpc_id  # Ouput --> It should be there inside the module outputs,module should output then only is is used
}

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/public_subnet_ids"
    type = "StringList"
    value = join(",", module.roboshop.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/private_subnet_ids"
    type = "StringList"
    value = join(",", module.roboshop.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/database_subnet_ids"
    type = "StringList"
    value = join(",", module.roboshop.database_subnet_ids)
}


# output "public_subnet_ids" {
#   value = module.roboshop.public_subnet_ids
# }  
# just to know the ouput of the above subnets how it is printing
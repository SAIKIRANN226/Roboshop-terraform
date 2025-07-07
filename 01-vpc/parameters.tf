resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name}/${var.environment}/vpc_id"  # It is a naming convention for better organization, because we have different projects, which may lead to confuse, which is nothing but a key-value pair
    type = "String"
    value = module.roboshop.vpc_id  # Output block should be there inside the module. If module is not printing output, we cannot get the value
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
# Just to know how the ouput of the above subnets is printing
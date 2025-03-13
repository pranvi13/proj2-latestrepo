module "myec2" {
    source                 = "../../modules/Ec2/v0"
    count                  = length(var.unique_ids)
    ami                    = var.ami
    instance_type          = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids 
    key_name               = var.key_name
    name                   = "${var.project_name}-${var.unique_ids[count.index]}"
    project_name           = var.project_name
    env                    = var.env
    user_data              = var.user_data
}
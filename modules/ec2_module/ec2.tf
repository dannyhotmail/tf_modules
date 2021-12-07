
# You are not to intitalize this folder
# this resources inside of a modules folder are not be created by the module
# Because they are not be created by the module, you cannot do a terraform init in this modules folder
# and you cannot do a terraform init in any subdirectory of the modules folder as well.

# only the caller of this module  or ("modules" if there mutiple modules in the modules folder) 
# only the caller of this module will run terraform init, plan and apply to create the sources,
# the caller of this module will initiate the creating of all resources in this module.

# what this means is, when this module is called from the outside, 
# it will trigger a terraform apply on all the resouces in the entire folder of this module.
# the module will now use the information provided by the caller of the module
# and together with the defaults set inside the module, it will create all the resources inside that module. 

# The module will inherit all the information passed down to it by the caller of the module.
# The caller can choose to override any default value declared or defined in the module, 
# by just defining that value again when the module is called that way values can be dynamic.

# so here when this module is called, the aws_instance resource is created.
resource "aws_instance" "myec2_forwebapp" {
  ami = var.ami

  instance_type = var.instance_type

  # If you do not specify the security_groups, it will automatically choose the default one if one exist
  # So in reality this statement is not neccessary
  security_groups = ["default"]
  
  tags = {
      Name = var.ec2_name
  }

   # If you do not specify the availability_zone, it will automatically choose the default one if one exist
  availability_zone = var.availability_zone
}



#This is how you call outside dependencies using the module keyword
#the modules folder in this case only has one module with ec2 instance created in it.

# so here it will be an an ec2 resource that this module block will inherit.
# remember nothing in the modules folder has been created yet at all, all your doing is importing that code
# and you can create dynmaic varibles by declaring the variables in var.tf file
# and then defining those variables in the various places where the modules will be used
module "my_ec2" {
  # give the relative path of the modules folder you want to use.
  # because in this particular case there is no folder within the the modules folder, when the source
  # can simply be the the modules folder and it will use all the files in there as the source.

  # so it will use the 
  source        = "../modules/ec2_module"
  instance_type = "t2.large"

  /*Over in our modules folder, inside of var.tf file we declared this variable but did not define it
# we declare the variable name here in var.tf but we do not define it
# we have not given it a default value so it is not yet defined.
# we do this intentionally so any outside file can call it with a different name.
# In this case we will let the folder prod and dev call this module and pass custom names for this variable
variable "ec2_name" {
  default = ""
}
   */

  #we declare this variable name here in var.tf in the modules folder but we do not define it 
  # here we define it by giving it a value
  ec2_name = "my_dev_EC2"


  # In another module for example you could define this variable differently as
  #  ec2_name = "my_prod_EC2"
}



module "my_ec2_1" {

  source        = "../modules/ec2_module"

  instance_type = "t2.small"

  ec2_name = "my_dev_EC2_small"

  availability_zone = "us-east-1a"
}



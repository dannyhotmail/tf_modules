
# This is the var.tf file inside the modules folder. It partains to only one particular module.

# we declare the variables that will be used by the resources in this module here in this var.tf file.
# This var.tf file will live in the same folder as the module that it is intended for..

# If you want the caller of this module to be able to modify the value of a variable,
# this variable has to be at least declared even if it has no default value or an empty string default value.

# The caller can choose to override any default value define in the module, 
# by just defining that value again when the module is called that way values can be dynamic



# This variable is declared and defined so we intend for this to remain the same for all callers of this module
# but this value can be overriden by the caller if the caller so chooses to. 
variable "ami" {
  default = "ami-0b898040803850657"
}

variable "instance_type" {
  default = "t2.nano"
}


variable "ec2_name" {
  default = "default_name"
}

variable "availability_zone" {
  default = "us-east-1e"
}



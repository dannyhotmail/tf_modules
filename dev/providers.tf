
provider "aws" {

  # when creating ec2 from console, which ever region you choose at the 
  # top right of the screen before you begin and during the ec2 set up,
  # is what will be selected as your region.

  region = "us-east-1"

  /* when creating ec2 from the terminal or from terraform 
  when you coinfigure AWS CLI with your credentials on your machine, 
  after that you do not need to provide terraform with credentials.
  It will automatically detect and use your credentials from AWS CLI */

}

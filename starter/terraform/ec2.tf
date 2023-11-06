  module "project_ec2" {
   source             = "./modules/ec2"
   name               = local.name
   account            = data.aws_caller_identity.current.account_id
  #  us-east-2
   aws_ami            = "ami-0526ceebfdc7e5bc6" # get from second cloudshell command
   private_subnet_ids = module.vpc.private_subnet_ids
   vpc_id             = module.vpc.vpc_id
 }

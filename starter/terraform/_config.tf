terraform {
   backend "s3" {
     bucket = "udacity-sre-cloud-observation-terraform"
    #  bucket = "udacity-sre-cloud-observation-ami"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-2"

   default_tags {
     tags = local.tags
   }
 }

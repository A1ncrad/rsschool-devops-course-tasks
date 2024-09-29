terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.18.0"
        }
  }

  backend "s3" {
    bucket = var.bucket 
    region = var.region 
    key = "state/terraform.tfstate"
    encrypt = true
  }
}

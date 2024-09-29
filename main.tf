terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.18.0"
        }
  }

  backend "s3" {
    bucket = "a1ncrad-tfstate"
    region = "eu-north-1" 
    key = "state/terraform.tfstate"
    encrypt = true
  }
}

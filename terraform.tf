terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }

    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }

  backend "s3" {
    bucket = "demo-state-bucket"
    key = "terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "my_dynamo_db"
}
}
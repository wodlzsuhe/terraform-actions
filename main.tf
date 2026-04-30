terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://127.0.0.1:4566"
  }
}

resource "aws_s3_bucket" "bucket_inicial" {
  bucket = "mi-bucket-t1-wodlzsuhe"
}

resource "aws_s3_bucket" "bucket_tarea_2" {
  bucket = "mi-bucket-t2-wodlzsuhe"

  tags = {
    entorno = "desarrollo"
    version = "1.1"
  }
}

module "mi_recurso" {
  source	= "./modules/mi-recurso"
  bucket_name	= "mi-bucket-modulo-wodlzsuhe"
  tags = {
    entorno = "dev"
    version = "1.0"
  }
}

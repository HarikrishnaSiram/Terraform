terraform {
  backend "s3" {
    bucket = "hari.flm"
    key    = "backup_folder/terraform.tfstate"
    region = "us-east-1"
  }
}

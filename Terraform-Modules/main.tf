module "bucket-module" {
  source      = "./modules/bucket"
  bucket_name = "hari.flm"
}

module "instance-module" {
  source = "./modules/instance"
  ami_id = "ami-02c21308fed24a8ab"
  itype  = "t2.micro"
  iname  = "instance-1"
}

module "user-module" {
  source = "./modules/user"
  uname  = "user-1"
}

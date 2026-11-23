module "vpc"{
    source = "git::https://github.com/Pradeep1224/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment= var.environment
}
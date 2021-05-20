module "network" {
  source  = "app.terraform.io/mc1-training/network/google"
  version = "2.5.0"
  project_id = var.project_id
  subnets = [
    {
      subnet_name   = "mariusc-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}
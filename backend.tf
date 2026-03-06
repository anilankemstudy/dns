terraform {
  backend "local" {
    path = "terraform_state/terraform-dns/terraform.tfstate"
  }
}

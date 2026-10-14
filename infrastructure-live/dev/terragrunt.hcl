include "root" { 
  path = find_in _parent_folders("root.hcl")
}

terraform {
  source = "../../../infrastructure-modules/vpc"
}

input = {
  vpc_cidr = "10.1.0.0/16"
  subnet_cidr = "10.1.0.0/24"
  vpc_tags = {
   "Name" = "Test"
  }
  subnet_tags = { 
    "Name" = "Test"
  }
}

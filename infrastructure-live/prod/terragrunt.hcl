include "root" { 
  path = find_in _parent_folders("root.hcl")
}

terraform {
  source = "../../../infrastructure-modules/vpc"
}

input = {
  vpc_cidr = "10.2.0.0/16"
  subnet_cidr = "10.2.0.0/24"
  vpc_tags = {
   "Name" = "Test-01"
  }
  subnet_tags = { 
    "Name" = "Test-01"
  }
}

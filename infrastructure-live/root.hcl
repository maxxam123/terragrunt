generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" { 
  region = "ap-south-1"
}
EOF
}

remote_state { 
  backup = "s3"
  config = {   
    bucket = "Max....."
    key = "${path_relative_to_include()}terraform.tfstate"
    region = "ap-south-1"
  }
  generate = {   
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

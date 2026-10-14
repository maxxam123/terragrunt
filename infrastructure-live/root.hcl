generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" { 
  region = "ap-south-1"
}
EOF
}

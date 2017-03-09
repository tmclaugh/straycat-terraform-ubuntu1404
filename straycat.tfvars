terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt = "true"
      bucket  = "straycat-dhs-org-straycat-terraform"
      key     = "ubuntu1404.tfstate"
      region  = "us-east-1"
    }
  }
}

/*
* aws vars for Terraform
*/
aws_s3_prefix           = "straycat-dhs-org"
aws_account             = "straycat"  # AWS credentials profile name
aws_profile             = "straycat"
aws_region              = "us-east-1"
instance_key_name       = "straycat-tmclaugh-threatstack"

svc_name = "ubuntu1404"
ami_id = "ami-a95044be"
instance_type = "t1.micro"

asg_min_size            = 0
asg_max_size            = 0
asg_desired_capacity    = 0

subnet_type = "public"

security_group_service_ingress = {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_block = "0.0.0.0/0"
}

# Does not yet work.
github_organization     = "tmclaugh"

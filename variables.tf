variable "hostname" {}

variable "token" {}

variable "org" {}

variable "secret" {}

variable "access_key" {}

variable "aws_regions" {
    type = list
    default = ["us-east-1", "us-west-1"]
}

variable "vcs_oauth_key" {}

variable "vcs_repo" {}

variable "email" {}

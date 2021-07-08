variable "token" {}
variable "secret" {}
variable "access_key" {}
variable "vcs_oauth_key" {}
variable "inst_size" {}
variable "inst_key_name" {}
variable "inst_name" {}
variable "inst_common_tags" {}

variable "hostname" {
    default = "app.terraform.io"
}

variable "org" {
    default = "my-demo-account"
}

variable "aws_regions" {
    type = list
    default = ["us-east-1", "us-west-1"]
}

variable "vcs_repo" {
    default = "wallacepf/demo-multi-region"
}
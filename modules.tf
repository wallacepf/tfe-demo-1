resource "tfe_registry_module" "demo-ec2-module" {
  vcs_repo {
    display_identifier = "wallacepf/terraform-aws-demo-ec2-module"
    identifier         = "wallacepf/terraform-aws-demo-ec2-module"
    oauth_token_id     = var.vcs_oauth_key
  }
}
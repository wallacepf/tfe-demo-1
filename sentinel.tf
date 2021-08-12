resource "tfe_policy_set" "test" {
  name          = "my-policy-set"
  description   = "A brand new policy set"
  organization  = var.org
  workspace_ids = [tfe_workspace.reg1.id, tfe_workspace.reg2.id]

  vcs_repo {
    identifier         = "wallacepf/sentinel-demo"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = var.vcs_oauth_key
  }
}
resource "tfe_workspace" "reg1" {
    name = "wrk-reg1"
    organization = var.org
    auto_apply = false
    queue_all_runs = false

    vcs_repo {
        identifier = "wallacepf/demo-multi-region"
        branch = "region1"
        oauth_token_id = var.vcs_oauth_key
    }

}

resource "tfe_variable" "aws_region_1" {
    key = "aws_region"
    value = var.aws_regions[0] 
    workspace_id = tfe_workspace.reg1.id
    category = "terraform"
    description = ""
}

resource "tfe_variable" "aws_access_key_id_1" {
    key = "AWS_ACCESS_KEY_ID"
    value = var.access_key
    category = "env"
    workspace_id = tfe_workspace.reg1.id
    description = ""
}

resource "tfe_variable" "aws_secret_access_key_1" {
    key = "AWS_SECRET_ACCESS_KEY"
    value = var.secret
    category = "env"
    workspace_id = tfe_workspace.reg1.id
    sensitive = true
    description = ""
}

resource "tfe_variable" "cidr_1" {
    key = "cidr_block"
    value = "10.0.0.0/16"
    category = "terraform"
    workspace_id = tfe_workspace.reg1.id
    description = ""
}

resource "tfe_variable" "subnet_dev_1" {
    key = "subnet_dev"
    value = "10.0.1.0/24"
    category = "terraform"
    workspace_id = tfe_workspace.reg1.id
    description = ""
}

resource "tfe_variable" "subnet_stage_1" {
    key = "subnet_staging"
    value = "10.0.2.0/24"
    category = "terraform"
    workspace_id = tfe_workspace.reg1.id
    description = ""
}

resource "tfe_variable" "subnet_prod_1" {
    key = "subnet_prod"
    value = "10.0.3.0/24"
    category = "terraform"
    workspace_id = tfe_workspace.reg1.id
    description = ""
}

resource "tfe_workspace" "reg2" {
    name = "wrk-reg2"
    organization = var.org
    auto_apply = false
    queue_all_runs = false

    vcs_repo {
        identifier = "wallacepf/demo-multi-region"
        branch = "region2"
        oauth_token_id = var.vcs_oauth_key
    }
}

resource "tfe_variable" "aws_region_2" {
    key = "aws_region"
    value = var.aws_regions[1] 
    category = "terraform"
    workspace_id = tfe_workspace.reg2.id
    description = ""
}

resource "tfe_variable" "aws_access_key_id_2" {
    key = "AWS_ACCESS_KEY_ID"
    value = var.access_key
    category = "env"
    workspace_id = tfe_workspace.reg2.id
    description = ""
}

resource "tfe_variable" "aws_secret_access_key_2" {
    key = "AWS_SECRET_ACCESS_KEY"
    value = var.secret
    category = "env"
    workspace_id = tfe_workspace.reg2.id
    sensitive = true
    description = ""
}

resource "tfe_variable" "cidr_2" {
    key = "cidr_block"
    value = "10.0.0.0/16"
    category = "terraform"
    workspace_id = tfe_workspace.reg2.id
    description = ""
}

resource "tfe_variable" "subnet_dev_2" {
    key = "subnet_dev"
    value = "10.0.10.0/24"
    category = "terraform"
    workspace_id = tfe_workspace.reg2.id
    description = ""
}

resource "tfe_variable" "subnet_stage_2" {
    key = "subnet_staging"
    value = "10.0.11.0/24"
    category = "terraform"
    workspace_id = tfe_workspace.reg2.id
    description = ""
}

resource "tfe_variable" "subnet_prod_2" {
    key = "subnet_prod"
    value = "10.0.12.0/24"
    category = "terraform"
    workspace_id = tfe_workspace.reg2.id
    description = ""
}
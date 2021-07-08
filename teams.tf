resource "tfe_team" "team_network" {
    name = "network"
    organization = var.org
}

resource "tfe_team" "application" {
    name = "application"
    organization = var.org
}

resource "tfe_team" "database" {
    name = "database"
    organization = var.org
}

resource "tfe_team_access" "reg1_network" {
  access       = "admin"
  team_id      = tfe_team.team_network.id
  workspace_id = tfe_workspace.reg1.id
}

resource "tfe_team_access" "reg2_network" {
  access       = "admin"
  team_id      = tfe_team.team_network.id
  workspace_id = tfe_workspace.reg2.id
}

resource "tfe_team_access" "reg1_application" {
  access       = "read"
  team_id      = tfe_team.application.id
  workspace_id = tfe_workspace.reg1.id
}

resource "tfe_team_access" "reg2_application" {
  access       = "read"
  team_id      = tfe_team.application.id
  workspace_id = tfe_workspace.reg2.id
}

resource "tfe_team_access" "reg1_database" {
  access       = "read"
  team_id      = tfe_team.database.id
  workspace_id = tfe_workspace.reg1.id
}

resource "tfe_team_access" "reg2_database" {
  access       = "read"
  team_id      = tfe_team.database.id
  workspace_id = tfe_workspace.reg2.id
}
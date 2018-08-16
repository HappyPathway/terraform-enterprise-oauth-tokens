data "external" "oauth_token" {
  program = ["python", "${path.module}/scripts/oauth_tokens.py"]

  query = {
    # arbitrary map from strings to strings, passed
    # to the external program as the data query.
    username = "${var.repo_user}"

    tfe_org     = "${var.tfe_org}"
    atlas_token = "${var.tfe_token}"
  }
}



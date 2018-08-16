output "oauth_id" {
    value = "${data.external.oauth_token.result.oauth_id}"
}
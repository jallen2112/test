include {
  path = "${find_in_parent_folders()}"
}

iam_role = "arn:aws:iam::774051255656:role/Administrator"

inputs = {
  root_zone_name = "sandbox.liatr.io"

  cert_issuer_server = "https://acme-staging-v02.api.letsencrypt.org/directory"

  enable_gitlab = false
  enable_xray   = false

  product_version        = "master"              // git commit (branch/tag/commitid) - points to a commit in github
  sdm_version            = "v0.4.0-203-g420d2db" // helm chart in artifactory - version number is determined by `git describe` - version is used for helm chart version
  dashboard_version      = "0.2.2-8-g05baf8a"    // helm chart in artifactory - version number is determined by `git describe` - version is used for helm chart version
  builder_images_version = "v1.0.15-16-g7756246" // docker image in artifactory - version number is determined by `git describe` - version is used for docker image tag
  jenkins_image_version  = "v1.0.15-16-g7756246" // docker image in artifactory- version number is determined by `git describe` - version is used for docker image tag
}
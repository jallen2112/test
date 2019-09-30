include {
  path = "${find_in_parent_folders()}"
}

iam_role = ""

inputs = {
  testing     = "FREE"
  sdm_version = "v0.4.0-203-g420d2db" // helm chart in artifactory - version number is determined by `git describe` - version is used for helm chart version
}
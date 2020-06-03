# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_codecommit_repository.this

resource aws_codecommit_repository this {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_aws_cc_aws_cc_repo
  ) > 0 ? local.he_aws_tf_mod_aws_cc_aws_cc_repo : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  default_branch  = local.he_aws_tf_mod_aws_cc_aws_cc_repo_default_branch
  description     = local.he_aws_tf_mod_aws_cc_aws_cc_repo_description
  repository_name = local.he_aws_tf_mod_aws_cc_aws_cc_repo_repository_name
  tags            = local.he_aws_tf_mod_aws_cc_aws_cc_repo_tags

}

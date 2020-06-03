# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_iam_role.this

resource aws_iam_role this {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle
  ) > 0 ? local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  assume_role_policy    = local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_assume_role_policy
  description           = local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_description
  force_detach_policies = local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_force_detach_policies
  max_session_duration  = local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_max_session_duration
  name                  = local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_name
  path                  = local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_path
  tags                  = local.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_tags

}

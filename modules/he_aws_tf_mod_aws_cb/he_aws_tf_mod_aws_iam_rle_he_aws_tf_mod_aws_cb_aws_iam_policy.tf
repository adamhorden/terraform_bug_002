# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_iam_policy.this_he_aws_tf_mod_aws_iam_rle_aws_cb

resource aws_iam_policy this_he_aws_tf_mod_aws_iam_rle_aws_cb {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol
  ) > 0 ? local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  description = local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_des
  name        = local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_nm
  path        = local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_pth
  policy      = local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_policy

}

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_iam_policy.this_he_aws_tf_mod_aws_iam_rle_amz_sns_pub

resource aws_iam_policy this_he_aws_tf_mod_aws_iam_rle_amz_sns_pub {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_pol
  ) > 0 ? local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_pol : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  description = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_pol_description
  name        = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_pol_name
  path        = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_pol_path
  policy      = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_pol_policy

}

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_iam_role_policy_attachment.this_he_aws_tf_mod_aws_iam_rle_amz_sns_pub

resource aws_iam_role_policy_attachment this_he_aws_tf_mod_aws_iam_rle_amz_sns_pub {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att
  ) > 0 ? local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att : {}

  # --------------------------------------------------------------------------------------
  # Depends:
  # --------------------------------------------------------------------------------------

  depends_on = [
    aws_iam_policy.this_he_aws_tf_mod_aws_iam_rle_amz_sns_pub,
    module.he_aws_tf_mod_aws_iam_rle_amz_sns_pub,
  ]

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  policy_arn = format(
    "%s",
    lookup(
      aws_iam_policy.this_he_aws_tf_mod_aws_iam_rle_amz_sns_pub[
        each.key
      ],
      "arn",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  role = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att_role

}

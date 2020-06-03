# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_sns_topic.this

resource aws_sns_topic this {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_amz_sns_pub_aws_sns_top
  ) > 0 ? local.he_aws_tf_mod_amz_sns_pub_aws_sns_top : {}

  # --------------------------------------------------------------------------------------
  # Depends:
  # --------------------------------------------------------------------------------------

  depends_on = [
    module.he_aws_tf_mod_aws_iam_rle_amz_sns_pub,
  ]

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  kms_master_key_id = local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_kms_master_key_id
  name              = local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_name
  policy            = local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_policy
  tags              = local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_tags

}

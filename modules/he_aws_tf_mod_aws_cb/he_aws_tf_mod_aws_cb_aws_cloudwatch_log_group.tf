# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_cloudwatch_log_group.this_he_aws_tf_mod_aws_kms

resource aws_cloudwatch_log_group this_he_aws_tf_mod_aws_kms {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_aws_cb_aws_cw_log_grp
  ) > 0 ? local.he_aws_tf_mod_aws_cb_aws_cw_log_grp : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  kms_key_id        = local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_kms_key_id
  name              = local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_name
  retention_in_days = local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_retention_in_days
  tags              = local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_tags

}

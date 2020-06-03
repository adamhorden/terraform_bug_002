# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.he_aws_tf_mod_he_aws_tf_app_itf_stk_be

module he_aws_tf_mod_he_aws_tf_app_itf_stk_be {

  # --------------------------------------------------------------------------------------
  # Source:
  # --------------------------------------------------------------------------------------

  source = "../../../modules/he_aws_tf_mod_he_aws_tf_app_itf_stk"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  he_aws_tf_app_acc_id                = var.he_aws_tf_app_acc_id
  he_aws_tf_app_rgn_eu                = var.he_aws_tf_app_rgn_eu
  he_aws_tf_app_rgn_us                = var.he_aws_tf_app_rgn_us
  he_aws_tf_app_itf_stk_he_aws_tf_mod = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_tf_mod

  # --------------------------------------------------------------------------------------
  # Providers:
  # --------------------------------------------------------------------------------------

  providers = {
    aws.he_aws_tf_app_rgn_eu = aws.he_aws_tf_app_rgn_eu
    aws.he_aws_tf_app_rgn_us = aws.he_aws_tf_app_rgn_us
  }

}

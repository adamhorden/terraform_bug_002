# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.he_aws_tf_mod_he_aws_tf_app_itf

module "he_aws_tf_mod_he_aws_tf_app_itf" {

  # --------------------------------------------------------------------------------------
  # Source:
  # --------------------------------------------------------------------------------------

  source = "./he_aws_tf_mod_he_aws_tf_app_itf"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  he_aws_tf_app_acc_id = data.aws_caller_identity.current.account_id
  he_aws_tf_app_rgn_eu = var.he_aws_tf_app_rgn_eu
  he_aws_tf_app_rgn_us = var.he_aws_tf_app_rgn_us
  he_aws_tf_mod        = var.he_aws_tf_mod

  # --------------------------------------------------------------------------------------
  # Providers:
  # --------------------------------------------------------------------------------------

  providers = {
    aws.he_aws_tf_app_rgn_eu = aws.he_aws_tf_app_rgn_eu
    aws.he_aws_tf_app_rgn_us = aws.he_aws_tf_app_rgn_us
  }

}

data "aws_caller_identity" "current" {

  provider = aws.he_aws_tf_app_rgn_eu

}

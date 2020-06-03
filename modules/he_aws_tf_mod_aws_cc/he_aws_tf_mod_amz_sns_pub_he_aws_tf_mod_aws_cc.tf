# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Module:
# ----------------------------------------------------------------------------------------

# module.he_aws_tf_mod_amz_sns_pub_aws_cc

module he_aws_tf_mod_amz_sns_pub_aws_cc {

  # --------------------------------------------------------------------------------------
  # Source:
  # --------------------------------------------------------------------------------------

  source = "../../modules/he_aws_tf_mod_amz_sns/he_aws_tf_mod/he_aws_tf_mod_amz_sns_pub"

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  he_aws_tf_app_acc_id                    = var.he_aws_tf_app_acc_id
  he_aws_tf_app_rgn                       = var.he_aws_tf_app_rgn
  he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod = local.he_aws_tf_mod_amz_sns_pub_aws_cc_he_aws_tf_mod

  # --------------------------------------------------------------------------------------
  # Providers:
  # --------------------------------------------------------------------------------------

  providers = {
    aws.he_aws_tf_app = aws.he_aws_tf_app
  }

}

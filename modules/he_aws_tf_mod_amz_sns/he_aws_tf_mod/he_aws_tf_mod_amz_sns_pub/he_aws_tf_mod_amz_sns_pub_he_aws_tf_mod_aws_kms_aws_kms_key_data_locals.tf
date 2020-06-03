# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms_aws_kms_key

  he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms_aws_kms_key = {
    for
    he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms_aws_kms_key_val
    in
    [
      {
        "app_env" = join(
          "_",
          lookup(
            local.he_aws_tf_app,
            "app_env",
            [],
          ),
        )
      },
    ] :
    lookup(
      he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms_aws_kms_key_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms_aws_kms_key_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

}

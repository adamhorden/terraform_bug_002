# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att = {
    for
    he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att_val
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
      he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att_role

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_pol_att_role = format(
    "%s",
    lookup(
      module.he_aws_tf_mod_aws_iam_rle_amz_sns_pub.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_name[
        format(
          "%s",
          local.he_aws_tf_app_env,
        )
      ],
      "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_name",
      "",
    ),
  )

}

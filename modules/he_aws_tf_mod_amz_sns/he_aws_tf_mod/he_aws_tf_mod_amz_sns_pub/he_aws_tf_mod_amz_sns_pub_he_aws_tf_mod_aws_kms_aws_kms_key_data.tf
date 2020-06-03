# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Data:
# ----------------------------------------------------------------------------------------

# data.aws_kms_key.this_he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms

data aws_kms_key this_he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms_aws_kms_key
  ) > 0 ? local.he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms_aws_kms_key : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  key_id = format(
    "%s:%s:%s:%s:%s:%s/%s",
    "arn",
    "aws",
    "kms",
    local.he_aws_tf_app_rgn,
    local.he_aws_tf_app_acc_id,
    "alias",
    upper(
      join(
        lookup(
          local.he_aws_tf_app,
          "app_pck_lbl_sep",
          "-",
        ),
        compact(
          concat(
            [
              join(
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_lbl_sep",
                  "-",
                ),
                lookup(
                  local.he_aws_tf_app,
                  "app",
                  [],
                ),
              ),
              join(
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_lbl_sep",
                  "-",
                ),
                lookup(
                  local.he_aws_tf_app,
                  "app_pck",
                  [],
                ),
              ),
              join(
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_lbl_sep",
                  "-",
                ),
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_attr",
                  [],
                ),
              ),
              join(
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_lbl_sep",
                  "-",
                ),
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_mod",
                  [],
                ),
              ),
              join(
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_lbl_sep",
                  "-",
                ),
                lookup(
                  local.he_aws_tf_app,
                  "app_env",
                  [],
                ),
              ),
            ],
          )
        ),
      )
    ),
  )

}

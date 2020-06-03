# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub = merge(
    local.he_aws_tf_mod.he_aws_tf_mod_aws_iam_rle.he_aws_tf_mod_amz_sns_pub.aws_iam_policy,
    local.he_aws_tf_mod.he_aws_tf_mod_aws_iam_rle.he_aws_tf_mod_amz_sns_pub.aws_iam_role,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle = [
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
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_assume_role_policy

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_assume_role_policy = format(
    "%s",
    data.aws_iam_policy_document.this_he_aws_tf_mod_aws_iam_rle_amz_sns_pub[
      format(
        "%s",
        local.he_aws_tf_app_env,
      )
    ].json,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_force_detach_policies

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_force_detach_policies = lookup(
    local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub,
    "aws_iam_role_force_detach_policies",
    false,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_max_session_duration

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_max_session_duration = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub,
      "aws_iam_role_max_session_duration",
      3600,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_tags

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_tags = lookup(
    local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub,
    "aws_iam_role_tags",
    {},
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app = formatlist(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app",
      [],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_env

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_env = formatlist(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_env",
      [],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_ver

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_ver = formatlist(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_ver",
      [],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck = formatlist(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_pck",
      [],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_attr

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_attr = formatlist(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_pck_attr",
      [],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_mod

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_mod = formatlist(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_pck_mod",
      [],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_mod_attr

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_mod_attr = formatlist(
    "%s",
    join(
      lookup(
        local.he_aws_tf_app,
        "app_pck_lbl_sep",
        "-",
      ),
      concat(
        lookup(
          local.he_aws_tf_app,
          "app_pck_mod_attr",
          [],
        ),
        [
          "sns",
          "pub",
        ],
      ),
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_lbl_sep

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_lbl_sep = format(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_pck_lbl_sep",
      "-",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_pth_sep

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_pth_sep = format(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_pck_pth_sep",
      "_",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_tf_mod

  he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_tf_mod = {
    "he_aws" = {
      "he_aws_tf_app" = {
        "app" = {
          "app"     = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app
          "app_env" = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_env
          "app_ver" = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_ver
        }
        "app_pck" = {
          "app_pck"          = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck
          "app_pck_attr"     = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_attr
          "app_pck_mod"      = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_mod
          "app_pck_mod_attr" = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_mod_attr
        }
        "app_pck_fmt" = {
          "app_pck_lbl_sep" = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_lbl_sep
          "app_pck_pth_sep" = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_he_aws_he_aws_tf_app_app_pck_pth_sep
        }
      }
      "he_aws_tf_mod" = {
        "he_aws_tf_mod_aws_iam_rle" = {
          "aws_iam_role" = {
            "aws_iam_role"                       = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle
            "aws_iam_role_assume_role_policy"    = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_assume_role_policy
            "aws_iam_role_force_detach_policies" = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_force_detach_policies
            "aws_iam_role_max_session_duration"  = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_max_session_duration
            "aws_iam_role_tags"                  = local.he_aws_tf_mod_aws_iam_rle_amz_sns_pub_aws_iam_rle_tags
          }
        }
      }
    }
  }

}

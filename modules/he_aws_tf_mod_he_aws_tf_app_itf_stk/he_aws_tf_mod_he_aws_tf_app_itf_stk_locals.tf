# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app

  he_aws_tf_app = merge(
    var.he_aws_tf_app_itf_stk_he_aws_tf_mod.he_aws.he_aws_tf_app.app,
    var.he_aws_tf_app_itf_stk_he_aws_tf_mod.he_aws.he_aws_tf_app.app_pck,
    var.he_aws_tf_app_itf_stk_he_aws_tf_mod.he_aws.he_aws_tf_app.app_pck_fmt,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app_acc_id

  he_aws_tf_app_acc_id = format(
    "%d",
    var.he_aws_tf_app_acc_id,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app_env

  he_aws_tf_app_env = format(
    "%s",
    join(
      lookup(
        local.he_aws_tf_app,
        "app_pck_pth_sep",
        "_",
      ),
      lookup(
        local.he_aws_tf_app,
        "app_env",
        [],
      ),
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app_itf_stk

  he_aws_tf_app_itf_stk = merge(
    var.he_aws_tf_app_itf_stk_he_aws_tf_mod.he_aws.he_aws_tf_app_itf_stk,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app_rgn_eu

  he_aws_tf_app_rgn_eu = format(
    "%s",
    join(
      lookup(
        local.he_aws_tf_app,
        "app_pck_lbl_sep",
        "-",
      ),
      var.he_aws_tf_app_rgn_eu,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app_rgn_us

  he_aws_tf_app_rgn_us = format(
    "%s",
    join(
      lookup(
        local.he_aws_tf_app,
        "app_pck_lbl_sep",
        "-",
      ),
      var.he_aws_tf_app_rgn_us,
    ),
  )

}

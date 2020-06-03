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
    var.he_aws_tf_mod_aws_cb_he_aws_tf_mod.he_aws.he_aws_tf_app.app,
    var.he_aws_tf_mod_aws_cb_he_aws_tf_mod.he_aws.he_aws_tf_app.app_pck,
    var.he_aws_tf_mod_aws_cb_he_aws_tf_mod.he_aws.he_aws_tf_app.app_pck_fmt,
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

  # local.he_aws_tf_app_rgn

  he_aws_tf_app_rgn = format(
    "%s",
    join(
      lookup(
        local.he_aws_tf_app,
        "app_pck_lbl_sep",
        "-",
      ),
      var.he_aws_tf_app_rgn,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod

  he_aws_tf_mod = merge(
    var.he_aws_tf_mod_aws_cb_he_aws_tf_mod.he_aws.he_aws_tf_mod,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb

  he_aws_tf_mod_aws_cb = merge(
    local.he_aws_tf_mod.he_aws_tf_mod_aws_cb.aws_cloudwatch_log_group,
    local.he_aws_tf_mod.he_aws_tf_mod_aws_cb.aws_codebuild_project,
  )

}

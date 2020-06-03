# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cw_log_grp

  he_aws_tf_mod_aws_cb_aws_cw_log_grp = {
    for
    he_aws_tf_mod_aws_cb_aws_cw_log_grp_val
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
      he_aws_tf_mod_aws_cb_aws_cw_log_grp_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_cb_aws_cw_log_grp_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_kms_key_id

  he_aws_tf_mod_aws_cb_aws_cw_log_grp_kms_key_id = format(
    "%s:%s:%s:%s:%s:%s/%s",
    "arn",
    "aws",
    "kms",
    local.he_aws_tf_app_rgn,
    local.he_aws_tf_app_acc_id,
    "key",
    lookup(
      data.aws_kms_key.this_he_aws_tf_mod_aws_cb_aws_kms[
        format(
          "%s",
          local.he_aws_tf_app_env,
        )
      ],
      "id",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_name

  he_aws_tf_mod_aws_cb_aws_cw_log_grp_name = format(
    "/%s/%s/%s/",
    "aws",
    "codebuild",
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
                  "app_pck_mod_attr",
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

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_retention_in_days

  he_aws_tf_mod_aws_cb_aws_cw_log_grp_retention_in_days = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_cloudwatch_log_group_retention_in_days",
      90,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cw_log_grp_tags

  he_aws_tf_mod_aws_cb_aws_cw_log_grp_tags = merge(
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_cloudwatch_log_group_tags",
      {},
    ),
    {
      "Environment" = format(
        "%s",
        upper(
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
          )
        ),
      )
      "Name" = format(
        "%s",
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
                      "app_pck_mod_attr",
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
                ]
              )
            )
          )
        ),
      )
      "Version" = format(
        "%s%s",
        lower(
          join(
            ".",
            [
              "v",
            ],
          )
        ),
        upper(
          join(
            ".",
            lookup(
              local.he_aws_tf_app,
              "app_ver",
              [],
            ),
          )
        ),
      )
    },
  )

}

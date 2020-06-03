# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj

  he_aws_tf_mod_aws_cb_aws_cb_prj = {
    for
    he_aws_tf_mod_aws_cb_aws_cb_prj_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project",
      [],
    ) :
    lookup(
      he_aws_tf_mod_aws_cb_aws_cb_prj_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_cb_aws_cb_prj_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_artifacts

  he_aws_tf_mod_aws_cb_aws_cb_prj_artifacts = [
    for
    he_aws_tf_mod_aws_cb_aws_cb_prj_artifacts_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project_artifacts",
      [],
    )
    :
    he_aws_tf_mod_aws_cb_aws_cb_prj_artifacts_val
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_badge_enabled

  he_aws_tf_mod_aws_cb_aws_cb_prj_badge_enabled = lookup(
    local.he_aws_tf_mod_aws_cb,
    "aws_codebuild_project_badge_enabled",
    false,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_build_timeout

  he_aws_tf_mod_aws_cb_aws_cb_prj_build_timeout = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project_build_timeout",
      15,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_description

  he_aws_tf_mod_aws_cb_aws_cb_prj_description = format(
    "%s%s",
    ": ",
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

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_enc_key

  he_aws_tf_mod_aws_cb_aws_cb_prj_enc_key = format(
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

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_environment

  he_aws_tf_mod_aws_cb_aws_cb_prj_environment = [
    for
    he_aws_tf_mod_aws_cb_aws_cb_prj_environment_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project_environment",
      [],
    )
    :
    he_aws_tf_mod_aws_cb_aws_cb_prj_environment_val
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_logs_config

  he_aws_tf_mod_aws_cb_aws_cb_prj_logs_config = [
    for
    he_aws_tf_mod_aws_cb_aws_cb_prj_logs_config_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project_logs_config",
      [],
    )
    : {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "aws_codebuild_project_logs_cnf_cw_logs" = [
        for
        he_aws_tf_mod_aws_cb_aws_cb_prj_logs_cnf_cw_logs_val
        in
        lookup(
          he_aws_tf_mod_aws_cb_aws_cb_prj_logs_config_val,
          "aws_codebuild_project_logs_cnf_cw_logs",
          [],
        )
        : {

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "aws_codebuild_project_logs_cnf_cw_logs_group_name" = format(
            "%s",
            lookup(
              aws_cloudwatch_log_group.this_he_aws_tf_mod_aws_kms[
                format(
                  "%s",
                  local.he_aws_tf_app_env,
                )
              ],
              "name",
              "",
            ),
          )

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "aws_codebuild_project_logs_cnf_cw_logs_status" = format(
            "%s",
            lookup(
              he_aws_tf_mod_aws_cb_aws_cb_prj_logs_cnf_cw_logs_val,
              "aws_codebuild_project_logs_cnf_cw_logs_status",
              "ENABLED",
            ),
          )

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "aws_codebuild_project_logs_cnf_cw_logs_stream_name" = format(
            "%s",
            lookup(
              aws_cloudwatch_log_stream.this[
                format(
                  "%s",
                  local.he_aws_tf_app_env,
                )
              ],
              "name",
              "",
            ),
          )

        }
      ]

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "aws_codebuild_project_logs_cnf_s3_logs" = [
        for
        he_aws_tf_mod_aws_cb_aws_cb_prj_logs_cnf_s3_logs_val
        in
        lookup(
          he_aws_tf_mod_aws_cb_aws_cb_prj_logs_config_val,
          "aws_codebuild_project_logs_cnf_s3_logs",
          [],
        )
        : {

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "aws_codebuild_project_logs_cnf_s3_logs_location" = format(
            "%s/%s",
            lookup(
              module.he_aws_tf_mod_amz_s3_bkt_aws_cb.he_aws_tf_mod_amz_s3_bkt_aws_s3_bkt_arn[
                format(
                  "%s",
                  local.he_aws_tf_app_env,
                )
              ],
              "he_aws_tf_mod_amz_s3_bkt_aws_s3_bkt_arn",
              "",
            ),
            lower(
              join(
                lookup(
                  local.he_aws_tf_app,
                  "app_pck_pth_sep",
                  "_",
                ),
                compact(
                  concat(
                    [
                      join(
                        lookup(
                          local.he_aws_tf_app,
                          "app_pck_pth_sep",
                          "_",
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
                          "app_pck_pth_sep",
                          "_",
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
                          "app_pck_pth_sep",
                          "_",
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
                          "app_pck_pth_sep",
                          "_",
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
                          "app_pck_pth_sep",
                          "_",
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
                          "app_pck_pth_sep",
                          "_",
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
              ),
            ),
          )

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "aws_codebuild_project_logs_cnf_s3_logs_status" = format(
            "%s",
            lookup(
              he_aws_tf_mod_aws_cb_aws_cb_prj_logs_cnf_s3_logs_val,
              "aws_codebuild_project_logs_cnf_s3_logs_status",
              "ENABLED",
            ),
          )

        }
      ]
    }
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_name

  he_aws_tf_mod_aws_cb_aws_cb_prj_name = format(
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
            ],
          )
        ),
      )
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_srv_rle

  he_aws_tf_mod_aws_cb_aws_cb_prj_srv_rle = format(
    "%s",
    lookup(
      module.he_aws_tf_mod_aws_iam_rle_aws_cb.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_arn[
        format(
          "%s",
          local.he_aws_tf_app_env,
        )
      ],
      "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_arn",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_source

  he_aws_tf_mod_aws_cb_aws_cb_prj_source = [
    for
    he_aws_tf_mod_aws_cb_aws_cb_prj_source_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project_source",
      [],
    )
    :
    he_aws_tf_mod_aws_cb_aws_cb_prj_source_val
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_queued_timeout

  he_aws_tf_mod_aws_cb_aws_cb_prj_queued_timeout = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project_queued_timeout",
      15,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_aws_cb_prj_tags

  he_aws_tf_mod_aws_cb_aws_cb_prj_tags = merge(
    lookup(
      local.he_aws_tf_mod_aws_cb,
      "aws_codebuild_project_tags",
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

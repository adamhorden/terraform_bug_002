# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk

  he_aws_tf_mod_aws_cb_app_itf_stk = merge(
    local.he_aws_tf_app_itf_stk.he_aws_tf_mod_amz_s3_bkt.he_aws_tf_mod_aws_cb.aws_s3_bucket,
    local.he_aws_tf_app_itf_stk.he_aws_tf_mod_aws_cb.he_aws_tf_app_itf_stk.aws_cloudwatch_log_group,
    local.he_aws_tf_app_itf_stk.he_aws_tf_mod_aws_cb.he_aws_tf_app_itf_stk.aws_codebuild_project,
    local.he_aws_tf_app_itf_stk.he_aws_tf_mod_aws_iam_rle.he_aws_tf_mod_aws_cb.aws_iam_role,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cw_log_grp_retention_in_days

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cw_log_grp_retention_in_days = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_cb_app_itf_stk,
      "aws_cloudwatch_log_group_retention_in_days",
      90,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cw_log_grp_tags

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cw_log_grp_tags = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_cloudwatch_log_group_tags",
    {},
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj = [
    {
      "app_env" = format(
        "%s",
        join(
          "_",
          lookup(
            local.he_aws_tf_app,
            "app_env",
            [],
          ),
        ),
      )
    },
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_artifacts

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_artifacts = [
    {
      "aws_codebuild_project_af_encryption_disabled"    = false
      "aws_codebuild_project_af_override_artifact_name" = false
      "aws_codebuild_project_af_type"                   = "CODEPIPELINE"
    },
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_badge_enabled

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_badge_enabled = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_codebuild_project_badge_enabled",
    false,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_build_timeout

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_build_timeout = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_cb_app_itf_stk,
      "aws_codebuild_project_build_timeout",
      15,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_environment

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_environment = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_codebuild_project_environment",
    {},
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_build_timeout

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_queued_timeout = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_cb_app_itf_stk,
      "aws_codebuild_project_queued_timeout",
      15,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_source

  # [REFACTOR]

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_source = [
    {
      "aws_codebuild_project_src_buildspec" = templatefile(
        format(
          "%s/%s/%s/%s",
          path.module,
          "he_aws_tf_app",
          "he_aws_tf_app_itf_stk",
          "he_aws_tf_app_itf_stk_he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_source_buildspec.yaml.tmpl",
      ), {})
      "aws_codebuild_project_src_type" = "CODEPIPELINE"
    },
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_tags

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_tags = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_codebuild_project_tags",
    {},
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_acl

  he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_acl = format(
    "%s",
    lookup(
      local.he_aws_tf_mod_aws_cb_app_itf_stk,
      "aws_s3_bucket_acl",
      "private",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_force_destroy

  he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_force_destroy = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_s3_bucket_force_destroy",
    false,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_obj_lck_cnf

  he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_obj_lck_cnf = [
    for
    he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_obj_lck_cnf_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cb_app_itf_stk,
      "aws_s3_bucket_object_lock_configuration",
      [],
    )
    :
    he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_obj_lck_cnf_val
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_pol_policy

  he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_pol_policy = format(
    "%s",
    data.aws_iam_policy_document.this_he_aws_tf_mod_amz_s3_bkt_aws_cb[
      format(
        "%s",
        local.he_aws_tf_app_env,
      )
    ].json,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_tags

  he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_tags = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_s3_bucket_tags",
    {},
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_ver

  he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_ver = [
    for
    he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_ver_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cb_app_itf_stk,
      "aws_s3_bucket_versioning",
      [],
    )
    :
    he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_ver_val
  ]



  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_pol_policy

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_pol_policy = format(
    "%s",
    data.aws_iam_policy_document.this_he_aws_tf_mod_aws_cb_app_itf_stk[
      format(
        "%s",
        local.he_aws_tf_app_env,
      )
    ].json,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_force_detach_policies

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_force_detach_policies = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_iam_role_force_detach_policies",
    false,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_max_session_duration

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_max_session_duration = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_cb_app_itf_stk,
      "aws_iam_role_max_session_duration",
      3600,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_tags

  he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_tags = lookup(
    local.he_aws_tf_mod_aws_cb_app_itf_stk,
    "aws_iam_role_tags",
    {},
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app = formatlist(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_env

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_env = formatlist(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_ver

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_ver = formatlist(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck = formatlist(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_attr

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_attr = formatlist(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_mod

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_mod = formatlist(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_mod_attr

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_mod_attr = formatlist(
    "%s",
    lookup(
      local.he_aws_tf_app,
      "app_pck_mod_attr",
      [],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_lbl_sep

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_lbl_sep = format(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_pth_sep

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_pth_sep = format(
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

  # local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_tf_mod

  he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_tf_mod = {
    "he_aws" = {
      "he_aws_tf_app" = {
        "app" = {
          "app"     = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app
          "app_env" = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_env
          "app_ver" = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_ver
        }
        "app_pck" = {
          "app_pck"          = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck
          "app_pck_attr"     = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_attr
          "app_pck_mod"      = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_mod
          "app_pck_mod_attr" = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_mod_attr
        }
        "app_pck_fmt" = {
          "app_pck_lbl_sep" = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_lbl_sep
          "app_pck_pth_sep" = local.he_aws_tf_mod_aws_cb_app_itf_stk_he_aws_he_aws_tf_app_app_pck_pth_sep
        }
      }
      "he_aws_tf_mod" = {
        "he_aws_tf_mod_amz_s3_bkt" = {
          "he_aws_tf_mod_aws_cb" = {
            "aws_s3_bucket" = {
              "aws_s3_bucket_acl"                       = local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_acl
              "aws_s3_bucket_force_destroy"             = local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_force_destroy
              "aws_s3_bucket_object_lock_configuration" = local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_obj_lck_cnf
              "aws_s3_bucket_tags"                      = local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_tags
              "aws_s3_bucket_versioning"                = local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_ver
            }
            "aws_s3_bucket_policy" = {
              "aws_s3_bucket_policy_policy" = local.he_aws_tf_mod_aws_cb_app_itf_stk_amz_s3_aws_s3_bkt_pol_policy
            }
          }
        }
        "he_aws_tf_mod_aws_cb" = {
          "aws_cloudwatch_log_group" = {
            "aws_cloudwatch_log_group_retention_in_days" = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cw_log_grp_retention_in_days
            "aws_cloudwatch_log_group_tags"              = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cw_log_grp_tags
          }
          "aws_codebuild_project" = {
            "aws_codebuild_project"                = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj
            "aws_codebuild_project_artifacts"      = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_artifacts
            "aws_codebuild_project_badge_enabled"  = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_badge_enabled
            "aws_codebuild_project_build_timeout"  = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_build_timeout
            "aws_codebuild_project_environment"    = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_environment
            "aws_codebuild_project_queued_timeout" = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_queued_timeout
            "aws_codebuild_project_source"         = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_source
            "aws_codebuild_project_tags"           = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_cb_prj_tags

            # [REFACTOR]

            "aws_codebuild_project_logs_config" = [
              {
                "aws_codebuild_project_logs_cnf_cw_logs" = [
                  {
                    "aws_codebuild_project_logs_cnf_cw_logs_status" = "ENABLED"
                  }
                ]
                "aws_codebuild_project_logs_cnf_s3_logs" = [
                  {
                    "aws_codebuild_project_logs_cnf_s3_logs_status" = "ENABLED"
                  }
                ]
              }
            ]
          }
        }
        "he_aws_tf_mod_aws_iam_rle" = {
          "he_aws_tf_mod_aws_cb" = {
            "aws_iam_policy" = {
              "aws_iam_policy_policy" = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_pol_policy
            }
            "aws_iam_role" = {
              "aws_iam_role_force_detach_policies" = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_force_detach_policies
              "aws_iam_role_max_session_duration"  = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_max_session_duration
              "aws_iam_role_tags"                  = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_rle_tags
            }
          }
        }
      }
    }
  }

}

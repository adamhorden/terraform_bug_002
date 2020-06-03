# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_acc_id

variable he_aws_tf_app_acc_id {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_acc_id"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = number

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_rgn

variable he_aws_tf_app_rgn {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_rgn"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_mod

variable he_aws_tf_mod_aws_cb_he_aws_tf_mod {

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = object(
    {
      he_aws = object(
        {
          he_aws_tf_app = object(
            {
              app = object(
                {
                  app     = list(string)
                  app_env = list(string)
                  app_ver = list(string)
                }
              )
              app_pck = object(
                {
                  app_pck          = list(string)
                  app_pck_attr     = list(string)
                  app_pck_mod      = list(string)
                  app_pck_mod_attr = list(string)
                }
              )
              app_pck_fmt = object(
                {
                  app_pck_lbl_sep = string
                  app_pck_pth_sep = string
                }
              )
            }
          )
          he_aws_tf_mod = object(
            {
              he_aws_tf_mod_amz_s3_bkt = object(
                {
                  he_aws_tf_mod_aws_cb = object(
                    {
                      aws_s3_bucket = object(
                        {
                          aws_s3_bucket_acl           = string
                          aws_s3_bucket_force_destroy = bool
                          aws_s3_bucket_object_lock_configuration = list(
                            object(
                              {
                                aws_s3_bucket_obj_lck_cnf_obj_lck_ena = string
                                aws_s3_bucket_obj_lck_cnf_rul = list(
                                  object(
                                    {
                                      aws_s3_bucket_obj_lck_cnf_rul_df_ret = list(
                                        object(
                                          {
                                            aws_s3_bucket_obj_lck_cnf_rul_df_ret_d   = number
                                            aws_s3_bucket_obj_lck_cnf_rul_df_ret_mde = string
                                          }
                                        )
                                      )
                                    }
                                  )
                                )
                              }
                            )
                          )
                          aws_s3_bucket_tags = map(string)
                          aws_s3_bucket_versioning = list(
                            object(
                              {
                                aws_s3_bucket_ver_ena     = bool
                                aws_s3_bucket_ver_mfa_del = bool
                              }
                            )
                          )
                        }
                      )
                      aws_s3_bucket_policy = object(
                        {
                          aws_s3_bucket_policy_policy = string
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_aws_cb = object(
                {
                  aws_cloudwatch_log_group = object(
                    {
                      aws_cloudwatch_log_group_retention_in_days = number
                      aws_cloudwatch_log_group_tags              = map(string)
                    }
                  )
                  aws_codebuild_project = object(
                    {
                      aws_codebuild_project = list(
                        object(
                          {
                            app_env = string
                          }
                        )
                      )
                      aws_codebuild_project_artifacts = list(
                        object(
                          {
                            aws_codebuild_project_af_encryption_disabled    = bool
                            aws_codebuild_project_af_override_artifact_name = bool
                            aws_codebuild_project_af_type                   = string
                          }
                        )
                      )
                      aws_codebuild_project_badge_enabled = bool
                      aws_codebuild_project_build_timeout = number
                      aws_codebuild_project_environment = list(
                        object(
                          {
                            aws_codebuild_project_env_compute_type    = string
                            aws_codebuild_project_env_image           = string
                            aws_codebuild_project_env_privileged_mode = bool
                            aws_codebuild_project_env_type            = string
                          }
                        )
                      )
                      aws_codebuild_project_logs_config = list(
                        object(
                          {
                            aws_codebuild_project_logs_cnf_cw_logs = list(
                              object(
                                {
                                  aws_codebuild_project_logs_cnf_cw_logs_status = string
                                }
                              )
                            )
                            aws_codebuild_project_logs_cnf_s3_logs = list(
                              object(
                                {
                                  aws_codebuild_project_logs_cnf_s3_logs_status = string
                                }
                              )
                            )
                          }
                        )
                      )
                      aws_codebuild_project_queued_timeout = number
                      aws_codebuild_project_source = list(
                        object(
                          {
                            aws_codebuild_project_src_buildspec = string
                            aws_codebuild_project_src_type      = string
                          }
                        )
                      )
                      aws_codebuild_project_tags = map(string)
                    }
                  )
                }
              )
              he_aws_tf_mod_aws_iam_rle = object(
                {
                  he_aws_tf_mod_aws_cb = object(
                    {
                      aws_iam_policy = object(
                        {
                          aws_iam_policy_policy = string
                        }
                      )
                      aws_iam_role = object(
                        {
                          aws_iam_role_force_detach_policies = bool
                          aws_iam_role_max_session_duration  = number
                          aws_iam_role_tags                  = map(string)
                        }
                      )
                    }
                  )
                }
              )
            }
          )
        }
      )
    }
  )
}

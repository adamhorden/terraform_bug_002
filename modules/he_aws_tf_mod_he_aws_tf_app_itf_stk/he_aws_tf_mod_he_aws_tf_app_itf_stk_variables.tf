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

# var.he_aws_tf_app_rgn_eu

variable he_aws_tf_app_rgn_eu {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_rgn_eu"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_rgn_us

variable he_aws_tf_app_rgn_us {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_rgn_us"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_itf_stk_he_aws_tf_mod

variable he_aws_tf_app_itf_stk_he_aws_tf_mod {

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
          he_aws_tf_app_itf_stk = object(
            {
              he_aws_tf_mod_amz_api_gw = object(
                {
                  he_aws_tf_app_itf_stk = object(
                    {
                      aws_api_gateway_resource = object(
                        {
                          aws_api_gateway_resource_part_path = string
                        }
                      )
                      aws_api_gateway_rest_api = object(
                        {
                          aws_api_gateway_rest_api_api_key_source = string
                          aws_api_gateway_rest_api_endpoint_configuration = list(
                            object(
                              {
                                aws_api_gateway_rest_api_ept_cnf_types = list(string)
                              }
                            )
                          )
                          aws_api_gateway_rest_api_minimum_compression_size = number
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_amz_r53_zne = object(
                {
                  he_aws_tf_mod_plt_dns = object(
                    {
                      aws_route53_zone = object(
                        {
                          aws_route53_zone_name = list(string)
                        }
                      )
                    }
                  )
                }
              )
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
                    }
                  )
                  he_aws_tf_mod_aws_cp = object(
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
                    }
                  )
                }
              )
              he_aws_tf_mod_amz_sns_pub = object(
                {
                  he_aws_tf_mod_aws_cc = object(
                    {
                      aws_sns_topic = object(
                        {
                          aws_sns_topic_policy = string
                          aws_sns_topic_tags   = map(string)
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_aws_acm = object(
                {
                  he_aws_tf_mod_amz_api_gw = object(
                    {
                      aws_acm_certificate = object(
                        {
                          aws_acm_certificate_tags              = map(string)
                          aws_acm_certificate_validation_method = string
                        }
                      )
                      aws_route53_record = object(
                        {
                          aws_route53_record_ttl = number
                        }
                      )
                    }
                  )
                  he_aws_tf_mod_amz_cf = object(
                    {
                      aws_acm_certificate = object(
                        {
                          aws_acm_certificate_tags              = map(string)
                          aws_acm_certificate_validation_method = string
                        }
                      )
                      aws_route53_record = object(
                        {
                          aws_route53_record_ttl = number
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_aws_cb = object(
                {
                  he_aws_tf_app_itf_stk = object(
                    {
                      aws_cloudwatch_log_group = object(
                        {
                          aws_cloudwatch_log_group_retention_in_days = number
                          aws_cloudwatch_log_group_tags              = map(string)
                        }
                      )
                      aws_codebuild_project = object(
                        {
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
                          aws_codebuild_project_queued_timeout = number
                          aws_codebuild_project_tags           = map(string)
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_aws_cc = object(
                {
                  he_aws_tf_app_itf_stk = object(
                    {
                      aws_codecommit_repository = object(
                        {
                          aws_codecommit_repository_tags = map(string)
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_aws_cp = object(
                {
                  he_aws_tf_app_itf_stk = object(
                    {
                      aws_codepipeline = object(
                        {
                          aws_codepipeline_tags = map(string)
                        }
                      )
                    }
                  )
                }
              )
              he_aws_tf_mod_aws_iam_rle = object(
                {
                  he_aws_tf_mod_aws_cb = object(
                    {
                      aws_iam_role = object(
                        {
                          aws_iam_role_force_detach_policies = bool
                          aws_iam_role_max_session_duration  = number
                          aws_iam_role_tags                  = map(string)
                        }
                      )
                    }
                  )
                  he_aws_tf_mod_aws_cc = object(
                    {
                      aws_iam_role = object(
                        {
                          aws_iam_role_force_detach_policies = bool
                          aws_iam_role_max_session_duration  = number
                          aws_iam_role_tags                  = map(string)
                        }
                      )
                    }
                  )
                  he_aws_tf_mod_aws_cp = object(
                    {
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

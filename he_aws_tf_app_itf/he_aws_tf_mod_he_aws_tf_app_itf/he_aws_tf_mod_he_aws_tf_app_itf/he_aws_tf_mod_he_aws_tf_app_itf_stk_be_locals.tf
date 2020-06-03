# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app = formatlist(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_env

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_env = formatlist(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_ver

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_ver = formatlist(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck = formatlist(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_attr

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_attr = formatlist(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_mod

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_mod = formatlist(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_mod_attr

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_mod_attr = formatlist(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_lbl_sep

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_lbl_sep = format(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_pth_sep

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_pth_sep = format(
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

  # local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_tf_mod

  he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_tf_mod = {
    "he_aws" = {
      "he_aws_tf_app" = {
        "app" = {
          "app"     = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app
          "app_env" = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_env
          "app_ver" = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_ver
        }
        "app_pck" = {
          "app_pck"          = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck
          "app_pck_attr"     = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_attr
          "app_pck_mod"      = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_mod
          "app_pck_mod_attr" = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_mod_attr
        }
        "app_pck_fmt" = {
          "app_pck_lbl_sep" = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_lbl_sep
          "app_pck_pth_sep" = local.he_aws_tf_mod_he_aws_tf_app_itf_stk_be_he_aws_he_aws_tf_app_app_pck_pth_sep
        }
      }
      "he_aws_tf_app_itf_stk" = {
        "he_aws_tf_mod_amz_api_gw" = {
          "he_aws_tf_app_itf_stk" = {
            "aws_api_gateway_resource" = {
              "aws_api_gateway_resource_part_path" = "-"
            }
          "aws_api_gateway_rest_api" = {
            "aws_api_gateway_rest_api_endpoint_configuration" = [
              {
                "aws_api_gateway_rest_api_ept_cnf_types" = [
                  "REGIONAL",
                ]
              },
            ]
            "aws_api_gateway_rest_api_minimum_compression_size" = -1
            "aws_api_gateway_rest_api_api_key_source"           = "HEADER"
          }
        }
        }
        "he_aws_tf_mod_amz_r53_zne" = {
          "he_aws_tf_mod_plt_dns" = {
            "aws_route53_zone" = {
              "aws_route53_zone_name" = ["horden", "engineering", ]
            }
          }
        }
        "he_aws_tf_mod_amz_s3_bkt" = {
          "he_aws_tf_mod_aws_cb" = {
            "aws_s3_bucket" = {
              "aws_s3_bucket_acl"           = "private"
              "aws_s3_bucket_force_destroy" = true
              "aws_s3_bucket_object_lock_configuration" = []
              "aws_s3_bucket_tags"          = {}
              "aws_s3_bucket_versioning" = [
                {
                  "aws_s3_bucket_ver_ena"     = true
                  "aws_s3_bucket_ver_mfa_del" = false
                }
              ]
            }
          }
          "he_aws_tf_mod_aws_cp" = {
            "aws_s3_bucket" = {
              "aws_s3_bucket_acl"           = "private"
              "aws_s3_bucket_force_destroy" = true
              "aws_s3_bucket_object_lock_configuration" = []
              "aws_s3_bucket_tags"          = {}
              "aws_s3_bucket_versioning" = [
                {
                  "aws_s3_bucket_ver_ena"     = true
                  "aws_s3_bucket_ver_mfa_del" = false
                }
              ]
            }
          }
          "he_aws_tf_mod_aws_lf" = {
            "aws_s3_bucket" = {
              "aws_s3_bucket_acl"           = "private"
              "aws_s3_bucket_force_destroy" = true
              "aws_s3_bucket_object_lock_configuration" = []
              "aws_s3_bucket_tags"          = {}
              "aws_s3_bucket_versioning" = [
                {
                  "aws_s3_bucket_ver_ena"     = true
                  "aws_s3_bucket_ver_mfa_del" = false
                }
              ]
            }
          }
        }
        "he_aws_tf_mod_amz_sns_pub" = {
          "he_aws_tf_mod_aws_cc" = {
            "aws_sns_topic" = {
              "aws_sns_topic_policy" = ""
              "aws_sns_topic_tags"   = {}
            }
          }
        }
        "he_aws_tf_mod_aws_acm" = {
          "he_aws_tf_mod_amz_api_gw" = {
            "aws_acm_certificate" = {
              "aws_acm_certificate_tags"              = {}
              "aws_acm_certificate_validation_method" = "DNS"
            }
            "aws_route53_record" = {
              "aws_route53_record_ttl" = 172800
            }
          }
          "he_aws_tf_mod_amz_cf" = {
            "aws_acm_certificate" = {
              "aws_acm_certificate_tags"              = {}
              "aws_acm_certificate_validation_method" = "DNS"
            }
            "aws_route53_record" = {
              "aws_route53_record_ttl" = 172800
            }
          }
        }
        "he_aws_tf_mod_aws_cp" = {
          "he_aws_tf_app_itf_stk" = {
          "aws_codepipeline" = {
            "aws_codepipeline_tags" = {}
          }
        }
      }
        "he_aws_tf_mod_aws_cb" = {
          "he_aws_tf_app_itf_stk" = {
            "aws_cloudwatch_log_group" = {
              "aws_cloudwatch_log_group_retention_in_days" = 90
              "aws_cloudwatch_log_group_tags"              = {}
            }
            "aws_codebuild_project" = {
              "aws_codebuild_project_badge_enabled" = false
              "aws_codebuild_project_build_timeout" = 15
              "aws_codebuild_project_environment" = [
                {
                  "aws_codebuild_project_env_compute_type"    = "BUILD_GENERAL1_SMALL"
                  "aws_codebuild_project_env_image"           = "aws/codebuild/standard:2.0"
                  "aws_codebuild_project_env_privileged_mode" = true
                  "aws_codebuild_project_env_type"            = "LINUX_CONTAINER"
                },
              ]
              "aws_codebuild_project_queued_timeout" = 15
              "aws_codebuild_project_tags"           = {}
            }
          }
        }
        "he_aws_tf_mod_aws_cc" = {
          "he_aws_tf_app_itf_stk" = {
            "aws_codecommit_repository" = {
              "aws_codecommit_repository_tags" = {}
            }
          }
        }
        "he_aws_tf_mod_aws_iam_rle" = {
          "he_aws_tf_mod_amz_sns_pub" = {
            "aws_iam_role" = {
              "aws_iam_role_force_detach_policies" = true
              "aws_iam_role_max_session_duration"  = 3600
              "aws_iam_role_tags"                  = {}
            }
          }
          "he_aws_tf_mod_aws_lf" = {
            "aws_iam_role" = {
              "aws_iam_role_force_detach_policies" = true
              "aws_iam_role_max_session_duration"  = 3600
              "aws_iam_role_tags"                  = {}
            }
          }
          "he_aws_tf_mod_aws_cb" = {
            "aws_iam_role" = {
              "aws_iam_role_force_detach_policies" = true
              "aws_iam_role_max_session_duration"  = 3600
              "aws_iam_role_tags"                  = {}
            }
          }
          "he_aws_tf_mod_aws_cp" = {
            "aws_iam_role" = {
              "aws_iam_role_force_detach_policies" = true
              "aws_iam_role_max_session_duration"  = 3600
              "aws_iam_role_tags"                  = {}
            }
          }
          "he_aws_tf_mod_aws_cc" = {
            "aws_iam_role" = {
              "aws_iam_role_force_detach_policies" = true
              "aws_iam_role_max_session_duration"  = 3600
              "aws_iam_role_tags"                  = {}
            }
          }
        }
        "he_aws_tf_mod_aws_lf" = {
          "aws_cloudwatch_log_group" = {
            "aws_cloudwatch_log_group_retention_in_days" = 90
            "aws_cloudwatch_log_group_tags"              = {}
          }
          "aws_lambda_function" = {
            "aws_lambda_function_handler"     = "index.handler"
            "aws_lambda_function_memory_size" = 128
            "aws_lambda_function_runtime"     = "nodejs12.x"
            "aws_lambda_function_tags"        = {}
          }
        }
      }
    }
  }

}

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

he_aws_tf_mod = {
  "he_aws" = {
    "he_aws_tf_app" = {
      "app" = {
        "app"     = ["he", "aws", "tf", "app", ]
        "app_env" = ["env", "2", ]
        "app_ver" = ["0", "0", "1", ]
      }
      "app_pck" = {
        "app_pck"          = ["itf", ]
        "app_pck_attr"     = []
        "app_pck_mod"      = []
        "app_pck_mod_attr" = []
      }
      "app_pck_fmt" = {
        "app_pck_lbl_sep" = "-"
        "app_pck_pth_sep" = "_"
      }
    }
    "he_aws_tf_app_itf" = {
      "he_aws_tf_mod_amz_r53_zne" = {
        "he_aws_tf_mod_plt_dns" = {
          "aws_route53_zone" = {
            "aws_route53_zone_name" = ["horden", "engineering", ]
          }
        }
      }
      "he_aws_tf_mod_amz_s3_bkt" = {
        "he_aws_tf_mod_aws_cp" = {
          "aws_s3_bucket" = {
            "aws_s3_bucket_versioning" = [
              {
                "aws_s3_bucket_ver_ena" = true
              }
            ]
          }
        }
      }
    }
  }
}

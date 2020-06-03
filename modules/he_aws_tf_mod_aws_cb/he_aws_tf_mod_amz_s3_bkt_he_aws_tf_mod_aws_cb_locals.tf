# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb

  he_aws_tf_mod_amz_s3_bkt_aws_cb = merge(
    local.he_aws_tf_mod.he_aws_tf_mod_amz_s3_bkt.he_aws_tf_mod_aws_cb.aws_s3_bucket,
    local.he_aws_tf_mod.he_aws_tf_mod_amz_s3_bkt.he_aws_tf_mod_aws_cb.aws_s3_bucket_policy,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt

  he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt = [
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_acl

  he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_acl = format(
    "%s",
    lookup(
      local.he_aws_tf_mod_amz_s3_bkt_aws_cb,
      "aws_s3_bucket_acl",
      "private",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_force_destroy

  he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_force_destroy = lookup(
    local.he_aws_tf_mod_amz_s3_bkt_aws_cb,
    "aws_s3_bucket_force_destroy",
    false,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_obj_lck_cnf

  he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_obj_lck_cnf = [
    for
    he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_obj_lck_cnf_val
    in
    lookup(
      local.he_aws_tf_mod_amz_s3_bkt_aws_cb,
      "aws_s3_bucket_object_lock_configuration",
      [],
    )
    :
    he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_obj_lck_cnf_val
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_pol_policy

  he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_pol_policy = format(
    "%s",
    lookup(
      local.he_aws_tf_mod_amz_s3_bkt_aws_cb,
      "aws_s3_bucket_policy_policy",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_tags

  he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_tags = lookup(
    local.he_aws_tf_mod_amz_s3_bkt_aws_cb,
    "aws_s3_bucket_tags",
    {},
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_ver

  he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_ver = [
    for
    he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_ver_val
    in
    lookup(
      local.he_aws_tf_mod_amz_s3_bkt_aws_cb,
      "aws_s3_bucket_versioning",
      [],
    )
    :
    he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_ver_val
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app = formatlist(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_env

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_env = formatlist(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_ver

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_ver = formatlist(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck = formatlist(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_attr

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_attr = formatlist(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_mod

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_mod = formatlist(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_mod_attr

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_mod_attr = formatlist(
    "%s",
    concat(
      lookup(
        local.he_aws_tf_app,
        "app_pck_mod_attr",
        [],
      ),
      [
        "cb",
      ],
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_lbl_sep

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_lbl_sep = format(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_pth_sep

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_pth_sep = format(
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

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_tf_mod

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_tf_mod = {
    "he_aws" = {
      "he_aws_tf_app" = {
        "app" = {
          "app"     = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app
          "app_env" = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_env
          "app_ver" = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_ver
        }
        "app_pck" = {
          "app_pck"          = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck
          "app_pck_attr"     = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_attr
          "app_pck_mod"      = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_mod
          "app_pck_mod_attr" = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_mod_attr
        }
        "app_pck_fmt" = {
          "app_pck_lbl_sep" = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_lbl_sep
          "app_pck_pth_sep" = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_he_aws_tf_app_app_pck_pth_sep
        }
      }
      "he_aws_tf_mod" = {
        "he_aws_tf_mod_amz_s3_bkt" = {
          "aws_s3_bucket" = {
            "aws_s3_bucket"                           = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt
            "aws_s3_bucket_acl"                       = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_acl
            "aws_s3_bucket_force_destroy"             = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_force_destroy
            "aws_s3_bucket_object_lock_configuration" = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_obj_lck_cnf
            "aws_s3_bucket_tags"                      = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_tags
            "aws_s3_bucket_versioning"                = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_ver
          }
          "aws_s3_bucket_policy" = {
            "aws_s3_bucket_policy_policy" = local.he_aws_tf_mod_amz_s3_bkt_aws_cb_aws_s3_bkt_pol_policy
          }
        }
      }
    }
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_tf_mod_he_aws_tf_mod_amz_s3_bkt

  he_aws_tf_mod_amz_s3_bkt_aws_cb_he_aws_tf_mod_he_aws_tf_mod_amz_s3_bkt = {
    "he_aws" = {
      "he_aws_tf_mod" = {
        "he_aws_tf_mod_amz_s3_bkt" = {
          "aws_s3_bucket" = {
            "aws_s3_bucket_server_side_encryption_configuration" = [
              {
                "aws_s3_bucket_sse_cnf_rul" = [
                  {
                    "aws_s3_bucket_sse_cnf_rul_ena_sse_df" = [
                      {
                        "aws_s3_bucket_sse_cnf_rul_ena_sse_df_kms_mst_key_id" = format(
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
                        "aws_s3_bucket_sse_cnf_rul_ena_sse_df_sse_algo" = format(
                          "%s",
                          "aws:kms",
                        )
                      },
                    ]
                  },
                ]
              },
            ]
          }
        }
      }
    }
  }

}

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_sns_pub_aws_sns_top

  he_aws_tf_mod_amz_sns_pub_aws_sns_top = {
    for
    he_aws_tf_mod_amz_sns_pub_aws_sns_top_val
    in
    lookup(
      local.he_aws_tf_mod_amz_sns_pub,
      "aws_sns_topic",
      [],
    ) :
    lookup(
      he_aws_tf_mod_amz_sns_pub_aws_sns_top_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_amz_sns_pub_aws_sns_top_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_kms_master_key_id

  he_aws_tf_mod_amz_sns_pub_aws_sns_top_kms_master_key_id = format(
    "%s:%s:%s:%s:%s:%s/%s",
    "arn",
    "aws",
    "kms",
    local.he_aws_tf_app_rgn,
    local.he_aws_tf_app_acc_id,
    "key",
    lookup(
      data.aws_kms_key.this_he_aws_tf_mod_amz_sns_pub_he_aws_tf_mod_aws_kms[
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

  # local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_name

  he_aws_tf_mod_amz_sns_pub_aws_sns_top_name = format(
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

  # local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_policy

  he_aws_tf_mod_amz_sns_pub_aws_sns_top_policy = format(
    "%s",
    lookup(
      local.he_aws_tf_mod_amz_sns_pub,
      "aws_sns_topic_policy",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_amz_sns_pub_aws_sns_top_tags

  he_aws_tf_mod_amz_sns_pub_aws_sns_top_tags = merge(
    lookup(
      local.he_aws_tf_mod_amz_sns_pub,
      "aws_sns_topic_tags",
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

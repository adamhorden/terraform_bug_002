# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cc_aws_cc_trg

  he_aws_tf_mod_aws_cc_aws_cc_trg = {
    for
    he_aws_tf_mod_aws_cc_aws_cc_trg_val
    in
    lookup(
      local.he_aws_tf_mod_aws_cc,
      "aws_codecommit_trigger",
      [],
    ) :
    lookup(
      he_aws_tf_mod_aws_cc_aws_cc_trg_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_cc_aws_cc_trg_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_cc_aws_cc_trg_trigger

  he_aws_tf_mod_aws_cc_aws_cc_trg_trigger = [
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "aws_codecommit_trigger_trg_name" = format(
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

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "aws_codecommit_trigger_trg_events" = formatlist(
        "%s",
        [
          "createReference",
          "deleteReference",
          "updateReference",
        ]
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "aws_codecommit_trigger_trg_destination_arn" = format(
        "%s",
        lookup(
          module.he_aws_tf_mod_amz_sns_pub_aws_cc.he_aws_tf_mod_amz_sns_aws_sns_topic_arn[
            format(
              "%s",
              local.he_aws_tf_app_env,
            )
          ],
          "he_aws_tf_mod_amz_sns_aws_sns_topic_arn",
          "",
        ),
      )
    },
  ]

}

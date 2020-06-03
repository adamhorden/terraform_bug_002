# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_doc

  he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_doc = {
    for
    he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_doc_val
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
      he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_doc_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_doc_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_doc_sid

  he_aws_tf_mod_aws_iam_rle_aws_cb_aws_iam_pol_doc_sid = format(
    "%s",
    join(
      "",
      compact(
        concat(
          [
            replace(
              title(
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
                )
              ),
              lookup(
                local.he_aws_tf_app,
                "app_pck_lbl_sep",
                "-",
              ),
              ""
            ),
            replace(
              title(
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
                )
              ),
              lookup(
                local.he_aws_tf_app,
                "app_pck_lbl_sep",
                "-",
              ),
              ""
            ),
            replace(
              title(
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
                )
              ),
              lookup(
                local.he_aws_tf_app,
                "app_pck_lbl_sep",
                "-",
              ),
              ""
            ),
            replace(
              title(
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
                )
              ),
              lookup(
                local.he_aws_tf_app,
                "app_pck_lbl_sep",
                "-",
              ),
              ""
            ),
            replace(
              title(
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
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
              ),
              lookup(
                local.he_aws_tf_app,
                "app_pck_lbl_sep",
                "-",
              ),
              ""
            ),
            replace(
              title(
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
              lookup(
                local.he_aws_tf_app,
                "app_pck_lbl_sep",
                "-",
              ),
              ""
            ),
          ],
        )
      ),
    ),
  )

}

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr

  he_aws_tf_mod_aws_iam_usr_aws_iam_usr = {
    for
    he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val
    in
    lookup(
      local.he_aws_tf_mod_aws_iam_usr,
      "aws_iam_user",
      [],
    ) :
    lookup(
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_name

  he_aws_tf_mod_aws_iam_usr_aws_iam_usr_name = format(
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

  # local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_path

  he_aws_tf_mod_aws_iam_usr_aws_iam_usr_path = format(
    "/%s/%s/",
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
            ],
          )
        ),
      )
    ),
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

  # local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_tags

  he_aws_tf_mod_aws_iam_usr_aws_iam_usr_tags = merge(
    lookup(
      local.he_aws_tf_mod_aws_iam_usr,
      "aws_iam_user_tags",
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

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_grp_aws_iam_usr_grp_mem

  he_aws_tf_mod_aws_iam_grp_aws_iam_usr_grp_mem = {
    for
    he_aws_tf_mod_aws_iam_grp_aws_iam_usr_grp_mem_val
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
      he_aws_tf_mod_aws_iam_grp_aws_iam_usr_grp_mem_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_iam_grp_aws_iam_usr_grp_mem_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_grp_aws_iam_usr_grp_mem_user

  # [REFACTOR]

  he_aws_tf_mod_aws_iam_grp_aws_iam_usr_grp_mem_user = format(
    "%s",
    lookup(
      var.he_aws_tf_mod_aws_iam_grp_he_aws_tf_mod_he_aws_tf_mod_aws_iam_grp.he_aws.he_aws_tf_mod.he_aws_tf_mod_aws_iam_grp.aws_iam_user_group_membership,
      "aws_iam_user_group_membership_user",
      "",
    ),
  )

}

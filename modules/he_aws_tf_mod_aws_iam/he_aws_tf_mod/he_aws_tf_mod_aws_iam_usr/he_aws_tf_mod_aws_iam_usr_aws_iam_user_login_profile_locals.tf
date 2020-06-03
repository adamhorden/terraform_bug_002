# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof

  he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof = {
    for
    he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof_val
    in
    lookup(
      local.he_aws_tf_mod_aws_iam_usr,
      "aws_iam_user_login_profile",
      [],
    ) :
    lookup(
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof_password_length

  he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof_password_length = format(
    "%d",
    lookup(
      local.he_aws_tf_mod_aws_iam_usr,
      "aws_iam_user_login_profile_password_length",
      128,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof_pgp_key

  he_aws_tf_mod_aws_iam_usr_aws_iam_usr_li_prof_pgp_key = format(
    "%s",
    lookup(
      local.he_aws_tf_mod_aws_iam_usr,
      "aws_iam_user_login_profile_pgp_key",
      "",
    ),
  )

}

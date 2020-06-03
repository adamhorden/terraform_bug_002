# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_arn

output he_aws_tf_mod_aws_iam_usr_aws_iam_usr_arn {
  description = "he_aws_tf_mod_aws_iam_usr_aws_iam_usr_arn"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_key,
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val
      in
      aws_iam_user.this
      :
      "he_aws_tf_mod_aws_iam_usr_aws_iam_usr_arn"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val,
          "arn",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val != ""
    }
  }
}

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_name

output he_aws_tf_mod_aws_iam_usr_aws_iam_usr_name {
  description = "he_aws_tf_mod_aws_iam_usr_aws_iam_usr_name"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_key,
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val
      in
      aws_iam_user.this
      :
      "he_aws_tf_mod_aws_iam_usr_aws_iam_usr_name"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val,
          "name",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val != ""
    }
  }
}

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_path

output he_aws_tf_mod_aws_iam_usr_aws_iam_usr_path {
  description = "he_aws_tf_mod_aws_iam_usr_aws_iam_usr_path"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_key,
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val
      in
      aws_iam_user.this
      :
      "he_aws_tf_mod_aws_iam_usr_aws_iam_usr_path"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val,
          "path",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_usr_aws_iam_usr_val != ""
    }
  }
}

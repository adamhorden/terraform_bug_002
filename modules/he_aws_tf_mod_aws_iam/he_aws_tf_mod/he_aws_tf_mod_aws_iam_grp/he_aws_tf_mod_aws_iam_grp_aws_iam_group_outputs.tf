# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_grp_aws_iam_grp_arn

output he_aws_tf_mod_aws_iam_grp_aws_iam_grp_arn {
  description = "he_aws_tf_mod_aws_iam_grp_aws_iam_grp_arn"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_key,
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val
      in
      aws_iam_group.this
      :
      "he_aws_tf_mod_aws_iam_grp_aws_iam_grp_arn"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val,
          "arn",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val != ""
    }
  }
}

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_grp_aws_iam_grp_name

output he_aws_tf_mod_aws_iam_grp_aws_iam_grp_name {
  description = "he_aws_tf_mod_aws_iam_grp_aws_iam_grp_name"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_key,
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val
      in
      aws_iam_group.this
      :
      "he_aws_tf_mod_aws_iam_grp_aws_iam_grp_name"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val,
          "name",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val != ""
    }
  }
}

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_grp_aws_iam_grp_path

output he_aws_tf_mod_aws_iam_grp_aws_iam_grp_path {
  description = "he_aws_tf_mod_aws_iam_grp_aws_iam_grp_path"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_key,
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val
      in
      aws_iam_group.this
      :
      "he_aws_tf_mod_aws_iam_grp_aws_iam_grp_path"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val,
          "path",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_grp_aws_iam_grp_val != ""
    }
  }
}

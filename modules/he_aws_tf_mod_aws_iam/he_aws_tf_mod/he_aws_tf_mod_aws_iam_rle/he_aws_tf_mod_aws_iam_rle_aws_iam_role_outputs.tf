# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_arn

output he_aws_tf_mod_aws_iam_rle_aws_iam_rle_arn {
  description = "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_arn"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_key,
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val
      in
      aws_iam_role.this
      :
      "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_arn"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val,
          "arn",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val != ""
    }
  }
}

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_name

output he_aws_tf_mod_aws_iam_rle_aws_iam_rle_name {
  description = "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_name"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_key,
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val
      in
      aws_iam_role.this
      :
      "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_name"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val,
          "name",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val != ""
    }
  }
}

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_iam_rle_aws_iam_rle_path

output he_aws_tf_mod_aws_iam_rle_aws_iam_rle_path {
  description = "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_path"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_key,
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val
      in
      aws_iam_role.this
      :
      "he_aws_tf_mod_aws_iam_rle_aws_iam_rle_path"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val,
          "path",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_iam_rle_aws_iam_rle_val != ""
    }
  }
}

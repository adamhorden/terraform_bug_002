# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_cc_aws_cc_repo_repository_default_branch

output he_aws_tf_mod_aws_cc_aws_cc_repo_repository_default_branch {
  description = "he_aws_tf_mod_aws_cc_aws_cc_repo_repository_default_branch"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_cc_aws_cc_repo_key,
      he_aws_tf_mod_aws_cc_aws_cc_repo_val
      in
      aws_codecommit_repository.this
      :
      "he_aws_tf_mod_aws_cc_aws_cc_repo_repository_default_branch"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_cc_aws_cc_repo_val,
          "default_branch",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_cc_aws_cc_repo_val != ""
    }
  }
}

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_aws_cc_aws_cc_repo_repository_name

output he_aws_tf_mod_aws_cc_aws_cc_repo_repository_name {
  description = "he_aws_tf_mod_aws_cc_aws_cc_repo_repository_name"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env,
      ) = {
      for
      he_aws_tf_mod_aws_cc_aws_cc_repo_key,
      he_aws_tf_mod_aws_cc_aws_cc_repo_val
      in
      aws_codecommit_repository.this
      :
      "he_aws_tf_mod_aws_cc_aws_cc_repo_repository_name"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_aws_cc_aws_cc_repo_val,
          "repository_name",
          "",
        ),
      )
      if
      he_aws_tf_mod_aws_cc_aws_cc_repo_val != ""
    }
  }
}

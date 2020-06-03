# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Resource:
# ----------------------------------------------------------------------------------------

# aws_iam_user.this

resource aws_iam_user this {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr
  ) > 0 ? local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  name = local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_name
  path = local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_path
  tags = local.he_aws_tf_mod_aws_iam_usr_aws_iam_usr_tags

}
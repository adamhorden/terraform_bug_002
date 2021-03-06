# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Data:
# ----------------------------------------------------------------------------------------
# data.aws_iam_policy_document.this_he_aws_tf_mod_amz_sns_pub_aws_cc

data aws_iam_policy_document this_he_aws_tf_mod_amz_sns_pub_aws_cc {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_mod_amz_sns_pub_aws_cc_aws_iam_pol_doc
  ) > 0 ? local.he_aws_tf_mod_amz_sns_pub_aws_cc_aws_iam_pol_doc : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app

  # --------------------------------------------------------------------------------------
  # Statement:
  # --------------------------------------------------------------------------------------

  statement {

    # ------------------------------------------------------------------------------------
    # Actions:
    # ------------------------------------------------------------------------------------

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    # ------------------------------------------------------------------------------------
    # Resources:
    # ------------------------------------------------------------------------------------

    resources = [

      # ----------------------------------------------------------------------------------
      # Resource:
      # ----------------------------------------------------------------------------------

      # arn:

      "arn:aws:logs:*:*:*",

    ]

    sid = local.he_aws_tf_mod_amz_sns_pub_aws_cc_aws_iam_pol_doc_sid

  }

}

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Output:
# ----------------------------------------------------------------------------------------

# output.he_aws_tf_mod_amz_sns_aws_sns_topic_arn

output he_aws_tf_mod_amz_sns_aws_sns_topic_arn {
  description = "he_aws_tf_mod_amz_sns_aws_sns_topic_arn"
  value = {
    format(
      "%s",
      local.he_aws_tf_app_env
      ) = {
      for
      he_aws_tf_mod_amz_sns_aws_sns_topic_key,
      he_aws_tf_mod_amz_sns_aws_sns_topic_val
      in
      aws_sns_topic.this
      :
      "he_aws_tf_mod_amz_sns_aws_sns_topic_arn"
      =>
      format(
        "%s",
        lookup(
          he_aws_tf_mod_amz_sns_aws_sns_topic_val,
          "arn",
          "",
        ),
      )
      if
      he_aws_tf_mod_amz_sns_aws_sns_topic_val != ""
    }
  }
}

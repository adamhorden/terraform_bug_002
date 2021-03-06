# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Data:
# ----------------------------------------------------------------------------------------

# data.aws_route53_zone.this_he_aws_tf_app_itf_app_plt_dns

data aws_route53_zone this_he_aws_tf_app_itf_app_plt_dns {

  # --------------------------------------------------------------------------------------
  # For:
  # --------------------------------------------------------------------------------------

  for_each = length(
    local.he_aws_tf_app_itf_app_plt_dns_aws_r53_zne
  ) > 0 ? local.he_aws_tf_app_itf_app_plt_dns_aws_r53_zne : {}

  # --------------------------------------------------------------------------------------
  # Provider:
  # --------------------------------------------------------------------------------------

  provider = aws.he_aws_tf_app_rgn_eu

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  name = format(
    "%s.%s.",
    join(
      ".",
      lookup(
        local.he_aws_tf_app,
        "app_env",
        [],
      ),
    ),
    join(
      ".",
      lookup(
        local.he_aws_tf_app_itf_app_plt_dns,
        "aws_route53_zone_name",
        [],
      ),
    ),
  )

}

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app_itf_app_plt_dns

  he_aws_tf_app_itf_app_plt_dns = merge(
    local.he_aws_tf_app_itf_stk.he_aws_tf_mod_amz_r53_zne.he_aws_tf_mod_plt_dns.aws_route53_zone,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_tf_app_itf_app_plt_dns_aws_r53_zne

  he_aws_tf_app_itf_app_plt_dns_aws_r53_zne = {
    for
    he_aws_tf_app_itf_app_plt_dns_aws_r53_zne_key,
    he_aws_tf_app_itf_app_plt_dns_aws_r53_zne_val
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
      he_aws_tf_app_itf_app_plt_dns_aws_r53_zne_val,
      "app_env",
      "",
    ) => {}
    if
    lookup(
      he_aws_tf_app_itf_app_plt_dns_aws_r53_zne_val,
      "app_env",
      "",
    ) == local.he_aws_tf_app_env
  }

}

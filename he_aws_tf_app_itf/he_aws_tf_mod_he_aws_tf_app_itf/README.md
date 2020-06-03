# Horden Engineering

## he_aws_tf_app_itf

```shell
export PATH="${HOME}/bin:${PATH}";
```

### he_aws_tf_app_itf_env_1

he_itf_app_st_env_1.tfstate

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform \
  init \
  -backend-config="bucket=he-aws-tf-app-itf-he-aws-tf-mod-aws-abs-env-1" \
  -backend-config="key=he_aws_tf_app_itf_he_aws_tf_mod_aws_abs_env_1_fail.tfstate" \
  -input=false \
  -upgrade \
  -var="he_aws_tf_app_rgn_eu=[\"eu\", \"west\", \"2\", ]" \
  -var="he_aws_tf_app_rgn_us=[\"us\", \"east\", \"1\", ]" \
  -var-file="./he_aws_tf_mod_he_aws_tf_app_itf_cnf/he_aws_tf_app_itf_env_1/he_aws_tf_mod_he_aws_tf_app_itf_cnf.tfvars"
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform \
  workspace \
  new \
  he_aws_tf_app_itf_env_1_fail
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform \
  workspace \
  select \
  he_aws_tf_app_itf_env_1_fail
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform \
  plan \
  -input=false \
  -out="he_aws_tf_app_itf_env_1.tfout" \
  -var="he_aws_tf_app_rgn_eu=[\"eu\", \"west\", \"2\", ]" \
  -var="he_aws_tf_app_rgn_us=[\"us\", \"east\", \"1\", ]" \
  -var-file="./he_aws_tf_mod_he_aws_tf_app_itf_cnf/he_aws_tf_app_itf_env_1/he_aws_tf_mod_he_aws_tf_app_itf_cnf.tfvars"
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform \
  apply \
  -input=false \
  he_aws_tf_app_itf_env_1.tfout
```

```shell
export AWS_PROFILE="HE_AWS_TF_APP_ITF_ENV_1"; \
terraform \
  destroy \
  -input=false \
  -var="he_aws_tf_app_rgn_eu=[\"eu\", \"west\", \"2\", ]" \
  -var="he_aws_tf_app_rgn_us=[\"us\", \"east\", \"1\", ]" \
  -var-file="./he_aws_tf_mod_he_aws_tf_app_itf_cnf/he_aws_tf_app_itf_env_1/he_aws_tf_mod_he_aws_tf_app_itf_cnf.tfvars"
```

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Provider:
# ----------------------------------------------------------------------------------------

# aws.he_aws_tf_app_rgn_eu

provider "aws" {

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  region = format(
    "%s",
    join(
      lookup(
        local.he_aws_tf_app,
        "app_pck_lbl_sep",
        "-",
      ),
      var.he_aws_tf_app_rgn_eu,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  alias = "he_aws_tf_app_rgn_eu"

  # --------------------------------------------------------------------------------------
  #
  # --------------------------------------------------------------------------------------

  assume_role {

    role_arn = format(
      "%s:%s:%s::%s:%s/%s/%s/%s",
      "arn",
      "aws",
      "iam",
      local.he_aws_tf_app_acc_id,
      "role",
      upper(
        join(
          lookup(
            local.he_aws_tf_app,
            "app_pck_lbl_sep",
            "-",
          ),
          compact(
            concat(
              [
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app",
                    [],
                  ),
                ),
              ],
            )
          ),
        )
      ),
      upper(
        join(
          lookup(
            local.he_aws_tf_app,
            "app_pck_lbl_sep",
            "-",
          ),
          compact(
            concat(
              [
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_mod",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_env",
                    [],
                  ),
                ),
              ],
            )
          ),
        )
      ),
      upper(
        join(
          lookup(
            local.he_aws_tf_app,
            "app_pck_lbl_sep",
            "-",
          ),
          compact(
            concat(
              [
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_attr",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_mod",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_mod_attr",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_env",
                    [],
                  ),
                ),
              ],
            )
          ),
        )
      ),
    )
  }
}

# ----------------------------------------------------------------------------------------
# Provider:
# ----------------------------------------------------------------------------------------

# aws.he_aws_tf_app_rgn_us

provider "aws" {

  # --------------------------------------------------------------------------------------
  # Argument:
  # --------------------------------------------------------------------------------------

  region = format(
    "%s",
    join(
      lookup(
        local.he_aws_tf_app,
        "app_pck_lbl_sep",
        "-",
      ),
      var.he_aws_tf_app_rgn_us,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  alias = "he_aws_tf_app_rgn_us"

  # --------------------------------------------------------------------------------------
  #
  # --------------------------------------------------------------------------------------

  assume_role {

    role_arn = format(
      "%s:%s:%s::%s:%s/%s/%s/%s",
      "arn",
      "aws",
      "iam",
      local.he_aws_tf_app_acc_id,
      "role",
      upper(
        join(
          lookup(
            local.he_aws_tf_app,
            "app_pck_lbl_sep",
            "-",
          ),
          compact(
            concat(
              [
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app",
                    [],
                  ),
                ),
              ],
            )
          ),
        )
      ),
      upper(
        join(
          lookup(
            local.he_aws_tf_app,
            "app_pck_lbl_sep",
            "-",
          ),
          compact(
            concat(
              [
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_mod",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_env",
                    [],
                  ),
                ),
              ],
            )
          ),
        )
      ),
      upper(
        join(
          lookup(
            local.he_aws_tf_app,
            "app_pck_lbl_sep",
            "-",
          ),
          compact(
            concat(
              [
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_attr",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_mod",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_mod_attr",
                    [],
                  ),
                ),
                join(
                  lookup(
                    local.he_aws_tf_app,
                    "app_pck_lbl_sep",
                    "-",
                  ),
                  lookup(
                    local.he_aws_tf_app,
                    "app_env",
                    [],
                  ),
                ),
              ],
            )
          ),
        )
      ),
    )
  }

}

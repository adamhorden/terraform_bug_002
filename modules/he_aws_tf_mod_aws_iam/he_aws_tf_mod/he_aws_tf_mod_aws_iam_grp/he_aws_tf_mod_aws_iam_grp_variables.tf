# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_acc_id

variable he_aws_tf_app_acc_id {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_acc_id"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = number

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_app_rgn

variable he_aws_tf_app_rgn {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_tf_app_rgn"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_mod_aws_iam_grp_he_aws_tf_mod

variable he_aws_tf_mod_aws_iam_grp_he_aws_tf_mod {

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = object(
    {
      he_aws = object(
        {
          he_aws_tf_app = object(
            {
              app = object(
                {
                  app     = list(string)
                  app_env = list(string)
                  app_ver = list(string)
                }
              )
              app_pck = object(
                {
                  app_pck          = list(string)
                  app_pck_attr     = list(string)
                  app_pck_mod      = list(string)
                  app_pck_mod_attr = list(string)
                }
              )
              app_pck_fmt = object(
                {
                  app_pck_lbl_sep = string
                  app_pck_pth_sep = string
                }
              )
            }
          )
          he_aws_tf_mod = object(
            {
              he_aws_tf_mod_aws_iam_grp = object(
                {
                  aws_iam_group = object(
                    {
                      aws_iam_group = list(
                        object(
                          {
                            app_env = string
                          }
                        )
                      )
                    }
                  )
                }
              )
            }
          )
        }
      )
    }
  )
}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_tf_mod_aws_iam_grp_he_aws_tf_mod_he_aws_tf_mod_aws_iam_grp

variable he_aws_tf_mod_aws_iam_grp_he_aws_tf_mod_he_aws_tf_mod_aws_iam_grp {

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = object(
    {
      he_aws = object(
        {
          he_aws_tf_mod = object(
            {
              he_aws_tf_mod_aws_iam_grp = object(
                {
                  aws_iam_user_group_membership = object(
                    {
                      aws_iam_user_group_membership_user = string
                    }
                  )
                }
              )
            }
          )
        }
      )
    }
  )
}

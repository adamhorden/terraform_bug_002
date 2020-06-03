# # Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>
#
# # ----------------------------------------------------------------------------------------
# # Data:
# # ----------------------------------------------------------------------------------------
#
# # data.aws_iam_policy_document.this_he_aws_tf_mod_aws_cb_app_itf_stk
#
# data aws_iam_policy_document this_he_aws_tf_mod_aws_cb_app_itf_stk {
#
#   # --------------------------------------------------------------------------------------
#   # For:
#   # --------------------------------------------------------------------------------------
#
#   for_each = length(
#     local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_pol_doc
#   ) > 0 ? local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_pol_doc : {}
#
#   # --------------------------------------------------------------------------------------
#   # Provider:
#   # --------------------------------------------------------------------------------------
#
#   provider = aws.he_aws_tf_app_rgn_eu
#
#   # --------------------------------------------------------------------------------------
#   # Statement:
#   # --------------------------------------------------------------------------------------
#
#   statement {
#
#     # ------------------------------------------------------------------------------------
#     # Actions:
#     # ------------------------------------------------------------------------------------
#
#     actions = [
#       "kms:*",
#     ]
#
#     # ------------------------------------------------------------------------------------
#     # Effect:
#     # ------------------------------------------------------------------------------------
#
#     effect = "Allow"
#
#     # ------------------------------------------------------------------------------------
#     # Resources:
#     # ------------------------------------------------------------------------------------
#
#     resources = [
#
#       # ----------------------------------------------------------------------------------
#       # Resource:
#       # ----------------------------------------------------------------------------------
#
#       # arn:
#
#       format(
#         "%s",
#         "*",
#       ),
#
#     ]
#
#     # ------------------------------------------------------------------------------------
#     # Statement Identifier:
#     # ------------------------------------------------------------------------------------
#
#     sid = ""
#
#   }
#
#   # --------------------------------------------------------------------------------------
#   # Statement:
#   # --------------------------------------------------------------------------------------
#
#   statement {
#
#     # ------------------------------------------------------------------------------------
#     # Actions:
#     # ------------------------------------------------------------------------------------
#
#     actions = [
#       "logs:*",
#     ]
#
#     # ------------------------------------------------------------------------------------
#     # Effect:
#     # ------------------------------------------------------------------------------------
#
#     effect = "Allow"
#
#     # ------------------------------------------------------------------------------------
#     # Resources:
#     # ------------------------------------------------------------------------------------
#
#     resources = [
#
#       # ----------------------------------------------------------------------------------
#       # Resource:
#       # ----------------------------------------------------------------------------------
#
#       # arn:
#
#       format(
#         "%s",
#         "*",
#       ),
#
#     ]
#
#     # ------------------------------------------------------------------------------------
#     # Statement Identifier:
#     # ------------------------------------------------------------------------------------
#
#     sid = ""
#
#   }
#
#   # --------------------------------------------------------------------------------------
#   # Statement:
#   # --------------------------------------------------------------------------------------
#
#   statement {
#
#     # ------------------------------------------------------------------------------------
#     # Actions:
#     # ------------------------------------------------------------------------------------
#
#     actions = [
#       "s3:GetObject",
#       "s3:GetObjectVersion",
#       "s3:PutObject",
#     ]
#
#     # ------------------------------------------------------------------------------------
#     # Resources:
#     # ------------------------------------------------------------------------------------
#
#     resources = [
#
#       # ----------------------------------------------------------------------------------
#       # Resource:
#       # ----------------------------------------------------------------------------------
#
#       # arn:
#
#       format(
#         "%s:%s:%s:::%s",
#         "arn",
#         "aws",
#         "s3",
#         join(
#           lookup(
#             local.he_aws_tf_app,
#             "app_pck_lbl_sep",
#             "-",
#           ),
#           compact(
#             concat(
#               [
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_attr",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_mod",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   concat(
#                     lookup(
#                       local.he_aws_tf_app,
#                       "app_pck_mod_attr",
#                       [],
#                     ),
#                     [
#                       "cb",
#                     ],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_env",
#                     [],
#                   ),
#                 ),
#               ],
#             )
#           ),
#         ),
#       ),
#
#       # ----------------------------------------------------------------------------------
#       # Resource:
#       # ----------------------------------------------------------------------------------
#
#       # arn:
#
#       format(
#         "%s:%s:%s:::%s/*",
#         "arn",
#         "aws",
#         "s3",
#         join(
#           lookup(
#             local.he_aws_tf_app,
#             "app_pck_lbl_sep",
#             "-",
#           ),
#           compact(
#             concat(
#               [
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_attr",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_mod",
#                     [],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   concat(
#                     lookup(
#                       local.he_aws_tf_app,
#                       "app_pck_mod_attr",
#                       [],
#                     ),
#                     [
#                       "cb",
#                     ],
#                   ),
#                 ),
#                 join(
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_pck_lbl_sep",
#                     "-",
#                   ),
#                   lookup(
#                     local.he_aws_tf_app,
#                     "app_env",
#                     [],
#                   ),
#                 ),
#               ],
#             )
#           ),
#         ),
#       ),
#
#     ]
#
#     # ------------------------------------------------------------------------------------
#     # Statement Identifier:
#     # ------------------------------------------------------------------------------------
#
#     sid = local.he_aws_tf_mod_aws_cb_app_itf_stk_aws_iam_pol_doc_sid
#
#   }
#
# }
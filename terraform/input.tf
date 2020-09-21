variable aws_region {
  type        = string
  default     = "eu-west-3"
  description = "AWS Region"
}

variable caascad_provisioner_user_arn {
  type        = string
  description = "User ARN that is allowed to assume the `caascad_provisioner` role."
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "description" {
  description = "Description of the Transit Gateway"
  type        = string
}

variable "satellite_create" {
  description = "Boolean flag for toggling the handling of satellite resources"
  default     = false
  type        = bool
}

variable "aws_account_id_hub" {
  description = "AWS account number containing the TGW hub"
  type        = string
}

variable "aws_account_id_satellite" {
  description = "List of AWS account numbers representing the satellites of the TGW"
  type        = list
}

variable "role_to_assume_hub" {
  description = "IAM role name to assume in the AWS account containing the TGW hub (eg. ASSUME-ROLE-HUB)"
  type        = string
}

variable "role_to_assume_satellite" {
  description = "IAM role name to assume in the AWS account containing the TGW satellite (eg. ASSUME-ROLE-SATELLITE)"
  type        = string
}

variable "vpc_name_to_attach" {
  description = "Name of the satellite VPC to be attached to the TGW"
  type        = string
  default     = ""
}

variable "satellite_destination_cidr_blocks" {
  description = "List of CIDRs to be routed for the satellite"
  type        = list
  default     = []
}

variable "hub_destination_cidr_blocks" {
  description = "List of CIDRs to be routed for the hub"
  type        = list
  default     = []
}

variable "subnet_name_keyword_selector" {
  description = "Keyword matching the name of the subnet(s) for which the routing will be added (i.e. private)"
  type        = string
  default     = "private"
}

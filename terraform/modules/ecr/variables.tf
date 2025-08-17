variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "image_tag_mutability" {
  description = "ECR image tag mutability"
  type        = string
  default     = "MUTABLE"   # or IMMUTABLE
}

# variable "scan_on_push" {
#   description = "Enable scan on push"
#   type        = bool
#   default     = true
# }

variable "tags" {
  description = "Optional tags for the ECR repository"
  type        = map(string)
  default     = {}
}

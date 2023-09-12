variable "serviceprinciple_id" {
  description = ""
  type        = string
  default     = ""
}

variable "serviceprinciple_key" {
  description = ""
  type        = string
  default     = ""
}

variable "tenant_id" {
  description = ""
  type        = string
  default     = ""
}

variable "subscription_id" {
  description = ""
  type        = string
  default     = ""
}


variable "ssh_key" {
  description = ""
  type        = string
  default     = ""
}

variable "location" {
  description = "Server resources for cluster location"
  default = ""
}

variable "kubernetes_version" {
    description = "Kubernetes version"
    default = "1.22.2"
}
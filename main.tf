variable "bunch_of_resources" {
  description = "A bunch of names"
  type        = list(string)
  default     = ["null1","null2","null3","null4"]
}

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}

resource "null_resource" "empty" {
    for_each = toset(var.bunch_of_resources)
}

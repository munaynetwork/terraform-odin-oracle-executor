terraform {
  required_version = ">= 1.0.11"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.2"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 3.1.1"
    }
  }
}

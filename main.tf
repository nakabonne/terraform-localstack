# backend
terraform {
  backend "local" {}
}

# provider
provider "aws" {
  # dummy values
  region = "us-east-1"
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"

  # Force to use local
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    iam      = "http://localhost:4566"
    kinesis  = "http://localhost:4566"
  }
}

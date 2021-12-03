variable "create_odin_oracle_executor" {
  description = "Whether to create Odin Oracle Executor"
  type        = bool
  default     = true
}

variable "package_url" {
  description = "The URL where Odin Oracle Executor package can be found"
  type        = string
  default     = "https://firebasestorage.googleapis.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZlKBpqEGYICIBcvDa3%2Fuploads%2FS5cNqkfzQDpTs48OqZva%2Fodin_oracle_executor.zip?alt=media&token=4ed5ffa9-ee73-4804-bcd3-2e429ccda6e2"
}

variable "memory_size" {
  description = "The memory allocated for the Odin Oracle Executor lambda function (in MB)"
  type        = number
  default     = 512
}

variable "timeout" {
  description = "Amount of time the Odin Oracle Executor lambda function has to run in seconds"
  type        = number
  default     = 12
}

variable "runtime" {
  description = "The runtime used by the Odin Oracle Executor lambda function"
  type        = string
  default     = "python3.7"

  validation {
    condition     = can(regex("^python3.7$", var.runtime))
    error_message = "The requested runtime isn't supported."
  }
}

variable "env_max_data_size" {
  description = "The Odin Oracle Executor MAX_DATA_SIZE env var"
  type        = number
  default     = 256
}

variable "env_max_executable" {
  description = "The Odin Oracle Executor MAX_EXECUTABLE env var"
  type        = number
  default     = 8192
}

variable "throttling_burst_limit" {
  description = "The API Gateway throttling burst limit"
  type        = number
  default     = 100
}

variable "throttling_rate_limit" {
  description = "The API Gateway throttling rate limit"
  type        = number
  default     = 100
}

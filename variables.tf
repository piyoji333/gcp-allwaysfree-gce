variable "region" {
  default = "us-east1"
}

variable "region_zone" {
  default = "us-east1-b"
}

variable "test_ssh_keys" {
  type    = "string"
  default = <<EOF
testuser:ssh-rsaxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
EOF
}

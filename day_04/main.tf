# terraform Terraform needs a memory of what it created
# That memory = .tfstate file  

# Your .tf file = what you WANT
# .tfstate = what Terraform KNOWS already exists

# What State File Stores
# Created resources (like **Amazon S3 bucket)
# Metadata
# Resource IDs
# ⚠️ Sensitive data:
# Account ID
# Secrets
# Config details  

# Remote Backend

# 👉 Store state remotely (best practice) 

# 👉 Terraform does NOT modify the state file directly first
# 👉 It modifies AWS infra first, then updates the state file

# The state file is:

# Downloaded locally
# Updated locally
# Then uploaded back to S3

# NOT directly edited in S3.

# You DO NOT update the state file manually

# 👉 Terraform updates it automatically after changing AWS
#!/bin/bash
access_key_id=$(secret-tool lookup provider aws profile default key-pair id)
secret_access_key=$(secret-tool lookup provider aws profile default key-pair secret)

printf "{
  \"Version\": 1,
  \"AccessKeyId\": \"%s\",
  \"SecretAccessKey\": \"%s\"
}" "$access_key_id" "$secret_access_key"

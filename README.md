# Dynamic DNS
### Dependencies
- `apt-get install nginx`
- `apt-get install awscli`
- `apt-get install htpasswd`
### Configuration
- Enter values for HOSTNAME, HOSTED_ZONE_ID and TOKEN in health-check
- Enter aws_access_key_id and aws_secret_access_key in aws-credentials
- Generate .htpasswd for nginx.conf

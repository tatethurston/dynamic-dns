# Dynamic DNS
### Dependencies
- nginx
- awscli
- dnsutils (dig)
### Optional Dependencies
- apache2-utils (htpasswd)
### Configuration
- Copy the .env.example template:
  `cp .env{.example,}`
- Enter required variables in .env
- Generate .htpasswd for nginx.conf
  `htpasswd -c .htpasswd myuser`

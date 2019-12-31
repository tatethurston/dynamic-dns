# Dynamic DNS

### What is this?

A bash implementation of [Dynamic DNS](https://en.wikipedia.org/wiki/Dynamic_DNS) using [AWS (Route 53)](https://aws.amazon.com/route53/) for DNS resolution.

### Overview

![Diagram](https://github.com/tatethurston/dynamic-dns/blob/master/docs/diagram.jpg)

### Setup

- [Create a hosted zone for your domain in Route53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/CreatingHostedZone.html)
- Assign a static IP address and set up port forwarding on port 80 to the
  device that will run Dynamic DNS
- Start the Dynamic DNS script
  - `./ddns`

### Dependencies

- awscli
- dnsutils (dig)

### Configuration

- Create a `.env` file by copying the `.env.example` template
  - `cp .env{.example,}`
- Assign values to the required variables in `.env`
- Start the service
  - `./ddns`

### Contributing

- Install Dev Dependencies
  - [Prettier](https://prettier.io) to format markdown and json
  - [Shellcheck](https://github.com/koalaman/shellcheck) to lint shell code
  - [Bats](https://github.com/bats-core/bats-core) to test shell code
- Install the git hooks
  - `git config core.hooksPath hooks`

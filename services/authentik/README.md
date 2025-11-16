# Authentik

Identity provider and SSO platform with PostgreSQL and Redis.

**Version**: Authentik 2025.10.1 | PostgreSQL 18.1 | Redis 8.4-RC1

## Start

```bash
make up authentik
```

## Access

- **Web UI**: http://localhost:3020

## Setup

1. Open http://localhost:3020/if/flow/initial-setup/
2. Create admin account
3. Configure applications and providers
4. Set up authentication flows

## Use Cases

- Single Sign-On (SSO)
- OAuth2/OIDC provider
- LDAP proxy
- SAML provider

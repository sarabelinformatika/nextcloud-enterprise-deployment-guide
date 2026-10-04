# Ports and Protocols

| Flow | Typical port | Notes |
|---|---:|---|
| Client → reverse proxy | TCP 443 | HTTPS/WebDAV; HTTP/3 may additionally use UDP 443 |
| Proxy → web tier | TCP 443 or controlled HTTP | Protect and authenticate the internal path as designed |
| Application → database | Engine-specific | Private network only |
| Application → Redis | TCP 6379 or Unix socket | Never expose publicly |
| Application → SMTP relay | TCP 587/465/25 | According to relay policy |
| Monitoring → approved endpoint | HTTPS/agent-specific | Restrict source and credentials |
| Administration → host | TCP 22 | Management network or VPN only |

Confirm exact ports for LDAP/LDAPS, OIDC, object storage, antivirus, Office, Talk, search, backup, and monitoring integrations.

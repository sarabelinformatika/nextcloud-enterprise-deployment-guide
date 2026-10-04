# 07 — Reverse Proxy, TLS, DNS, and Trusted Proxies

Publish only HTTPS and redirect plain HTTP where required for certificate lifecycle or policy. Use modern TLS settings, automated renewal, certificate-expiry alerts, and a tested renewal path.

Configure `trusted_domains`, `trusted_proxies`, overwrite parameters, forwarded headers, and client-IP handling according to the official reverse-proxy guidance. Trust only known proxy addresses or ranges. Never accept spoofable forwarding headers from arbitrary clients.

Align upload-size and timeout settings across proxy, web server, PHP, and Nextcloud. Preserve WebDAV methods and well-known redirects. Validate desktop and mobile sync, large uploads, chunking, downloads, sharing, calendar/contact discovery, and remote IP logging.

Protect administration with management access policy, MFA, throttling, and monitoring rather than relying on a hidden URL.

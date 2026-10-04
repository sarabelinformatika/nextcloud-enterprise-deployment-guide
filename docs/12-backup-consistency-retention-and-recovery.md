# 12 — Backup, Consistency, Retention, and Recovery

A recoverable Nextcloud set includes the database, data directory or authoritative object data, configuration, installed custom apps/themes, encryption material, relevant proxy/TLS configuration, and an environment manifest.

Create a consistency plan using maintenance mode, storage snapshots, database-native backup, or an application-aware sequence appropriate to the architecture. Document the exact order and expected service impact.

Maintain versioned local and off-site copies with separate credentials and immutable or offline protection where practical. Define retention from business and legal requirements.

Test isolated restores. Validate login, file listing, download/upload, sharing, WebDAV, background jobs, database maintenance, encryption access, app health, clients, and monitoring. Record RPO, RTO, evidence, defects, and remediation.

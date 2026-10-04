# 13 — Monitoring, Logging, Alerting, and Capacity

Monitor HTTPS availability, certificate expiry, login path, cron age, PHP-FPM saturation, web errors, database connectivity and latency, Redis, storage capacity/inodes/latency, queue duration, backups, and operating-system health.

Use the documented status and metrics interfaces with restricted credentials and network scope. Do not expose detailed monitoring endpoints publicly.

Alert thresholds require owners, severity, notification path, response procedure, maintenance suppression, and test evidence. Avoid alerting only on host reachability.

Track growth for users, files, database size, data volume, previews, logs, object count, backup duration, restore duration, and network utilization. Review capacity before peak periods and major feature enablement.

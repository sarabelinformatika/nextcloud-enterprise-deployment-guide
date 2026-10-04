# 14 — Upgrades, Maintenance, Migration, and Rollback

Read release notes, compatibility requirements, known issues, app support, and upgrade-path restrictions before every major change. Upgrade through supported major versions rather than skipping required steps.

Stage the complete change against representative copied or synthetic data. Capture a verified pre-change backup and environment manifest. Define rollback criteria before starting.

During the window, control maintenance mode, load balancers, cron, app updates, database work, web/PHP restarts, and client communication. Use supported CLI procedures and one controlled application node where required.

Validate security warnings, background jobs, logs, database maintenance, file access, WebDAV, sharing, clients, integrations, monitoring, and backup after the change. Rollback must restore a consistent code, database, configuration, app, and data set.

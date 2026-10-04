# 10 — Background Jobs, Previews, Search, and Performance

Use system cron and monitor its last successful execution, duration, overlap, queue depth, and error output. Background work includes cleanup, notifications, federation, previews, retention, workflows, and app-specific tasks.

Preview generation can consume substantial CPU, memory, and storage. Limit providers and dimensions to business needs; pre-generate only after measuring the impact.

Treat full-text search as a separate service with its own capacity, security, monitoring, backup, and rebuild procedure. A search index is generally rebuildable; the authoritative files and database are not.

Tune PHP-FPM, OPcache, database indexes, Redis, storage, and proxy behavior from evidence. Record baselines before and after changes. Do not mask storage or database latency by increasing every timeout.

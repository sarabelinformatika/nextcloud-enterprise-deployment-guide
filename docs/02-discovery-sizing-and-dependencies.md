# 02 — Discovery, Sizing, and Dependencies

Inventory users, active clients, concurrent sessions, current and projected storage, file count, average and maximum object size, preview workload, Talk usage, Office integration, mail/calendar connectors, directory services, federation, and external storage.

Sizing must be measurement-led. Collect CPU saturation, PHP-FPM queueing, memory pressure, database latency, Redis latency, storage IOPS, metadata performance, network throughput, cron duration, file-scan volume, and backup window.

Build a dependency register covering DNS, NTP, PKI, reverse proxy, load balancer, web/PHP nodes, database, Redis, storage, SMTP, identity provider, antivirus, Office/Talk services, monitoring, logging, backup, and remote administration.

Identify single points of failure and failure domains before selecting high availability. An HA label does not compensate for shared power, shared storage, one database, one Redis instance, or an untested restore.

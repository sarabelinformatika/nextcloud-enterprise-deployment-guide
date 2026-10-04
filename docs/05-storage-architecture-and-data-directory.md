# 05 — Storage Architecture and Data Directory

Select storage based on file count, metadata behavior, latency, locking, durability, snapshots, replication, backup integration, and recovery—not capacity alone.

Place the data directory outside the web root where the deployment model permits. Prevent direct web access. Use a dedicated filesystem or dataset with monitored capacity, inodes, latency, and error state.

Primary object storage changes failure and recovery behavior; validate the official support model before choosing it. External storage is not automatically part of Nextcloud backup or consistency guarantees.

Do not treat RAID, snapshots, replication, sync, or object versioning as a complete backup. Define ownership and permissions, mount order, boot behavior, failure handling, quota policy, deleted-file retention, and restore procedures.

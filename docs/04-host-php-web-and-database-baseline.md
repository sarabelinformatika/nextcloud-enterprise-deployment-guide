# 04 — Host, PHP, Web Server, and Database Baseline

Use a supported operating system and component versions listed for the selected Nextcloud release. Pin repositories intentionally, enable security updates through change control, synchronize time, and keep administrative access named and audited.

## PHP and web tier

Size PHP-FPM workers from measured memory use and concurrency. Configure upload, execution, memory, OPcache, and timeout values as one reviewed set across the reverse proxy, web server, PHP, Nextcloud, and clients. Avoid unlimited values.

Use system cron instead of AJAX or Webcron for production. Keep the application code owned and writable only as required by the deployment model. Protect `config.php`, the data directory, logs, temporary paths, and secrets.

## Database

Use a supported database engine and character set. Separate the database identity, restrict its network scope, monitor connections and latency, and run documented Nextcloud database maintenance commands after reviewed upgrades. Back up database state consistently with files and configuration.

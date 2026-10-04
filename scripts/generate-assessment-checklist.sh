#!/usr/bin/env bash
set -u

cat <<'EOF'
# Nextcloud Assessment Checklist

- [ ] Business and technical owners identified
- [ ] Target release and compatibility matrix recorded
- [ ] Users, concurrency, data volume, file count, and growth measured
- [ ] RTO and RPO approved
- [ ] DNS, TLS, trusted domains, trusted proxies, and forwarded headers validated
- [ ] Named administrators, MFA, lifecycle, and break-glass tested
- [ ] PHP-FPM, OPcache, database, Redis locking, storage, and system cron validated
- [ ] Application catalog and sharing policy approved
- [ ] Security warnings reviewed
- [ ] Monitoring, logging, certificate, cron, capacity, and backup alerts tested
- [ ] Consistent backup and isolated restore completed
- [ ] Upgrade and rollback procedures documented
- [ ] Technical and business acceptance signed
EOF

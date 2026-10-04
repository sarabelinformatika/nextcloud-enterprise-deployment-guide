#!/usr/bin/env bash
set -u

host="${1:-}"
if [[ -z "$host" || "$host" == -* ]]; then
  echo "Usage: $0 cloud.example.com" >&2
  exit 2
fi

echo "Nextcloud endpoint check for $host (read-only)"
echo
echo "== DNS =="
getent ahosts "$host" 2>/dev/null || true
echo
echo "== HTTPS headers =="
curl --fail --silent --show-error --head --max-time 15 "https://$host/" || true
echo
echo "== Status endpoint =="
curl --fail --silent --show-error --max-time 15 "https://$host/status.php" || true
echo
echo "== TLS certificate =="
timeout 15 openssl s_client -connect "$host:443" -servername "$host" </dev/null 2>/dev/null |
  openssl x509 -noout -subject -issuer -dates -fingerprint -sha256 2>/dev/null || true
echo
echo "No remote state was changed."

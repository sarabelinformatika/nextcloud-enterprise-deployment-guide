# 01 — Scope, Service Objectives, and Threat Model

## Define the service

Record the business owner, technical owner, supported user groups, expected data classes, collaboration features, clients, external integrations, maintenance windows, recovery objectives, and support boundaries.

Do not describe the service merely as “file sync.” Nextcloud may carry identity data, shared files, calendars, contacts, chat, recordings, office documents, workflow metadata, public links, audit events, and application-specific state.

## Threat model

Assess at least:

- credential theft, MFA bypass, dormant accounts, and excessive group membership;
- exposed administration interfaces and incorrectly trusted reverse proxies;
- malicious or vulnerable apps;
- ransomware synchronized into primary storage;
- database, Redis, cron, storage, certificate, or DNS failure;
- public-link abuse, brute force, data exfiltration, and federation risk;
- privileged administrator misuse and support-session exposure;
- incomplete backups, missing keys, or untested restores.

## Objectives

Define RTO and RPO per data class. Establish measurable availability, login, sync, background-job, certificate, capacity, backup-age, and restore-test objectives. Every accepted risk requires an owner, compensating control, expiry date, and review.

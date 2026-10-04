# Operations Command Catalog

Run `occ` as the web-server identity and with the PHP binary/config used by the application. Exact syntax varies by release and packaging model.

Safe assessment categories include:

- `status`
- `config:list` with output handling that protects secrets
- `background:job:list`
- `app:list`
- database and file-system checks documented for the target release

Maintenance, repair, scan, encryption, app, user, database, upgrade, and migration commands can change state. Treat them as planned changes with backups, approval, validation, and rollback.

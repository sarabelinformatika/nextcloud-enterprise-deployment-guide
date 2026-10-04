# 03 — Reference Architecture and Trust Boundaries

## Baseline flow

Client → DNS/WAF or firewall → reverse proxy → web/PHP tier → database, Redis, and primary storage. Monitoring and backup use separate controlled paths. Management access is restricted to administrative networks or VPN.

## Segmentation

- Public zone: only required HTTPS ingress.
- Application zone: web/PHP nodes; no direct public administration.
- Data zone: database, Redis, and storage reachable only from approved application and management sources.
- Management zone: SSH, hypervisor, monitoring, backup, and orchestration.
- Backup zone: isolated credentials and retention controls; no routine user access.

Document every trust transition, port, certificate, source network, authentication mechanism, secret owner, and logging point. Do not expose database, Redis, SMB/NFS, object-storage administration, SSH, hypervisor, or backup interfaces directly to the Internet.

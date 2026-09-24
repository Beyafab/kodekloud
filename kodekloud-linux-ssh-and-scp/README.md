# KodeKloud SSH Lab

## Objective
Answer SSH basics and set up password-less SSH between Bob's laptop (`caleston-lp10`) and the Dev Application server (`devapp01`), then copy a file with `scp`.

## Environment
- Host: `caleston-lp10`
- Remote server: `devapp01`
- User: `bob`
- Password: `caleston123`
- Files touched:
  - `~/.ssh/id_rsa`, `~/.ssh/id_rsa.pub` (laptop)
  - `~/.ssh/authorized_keys` (devapp01)
  - `/home/bob/caleston-code.tar.gz`

---

## 1. Which port does SSH use by default?

Checked `ssh_config` first (client config — no port shown), then the listening socket:

```bash
cat /etc/ssh/ssh_config
sudo ss -tlnp | grep sshd

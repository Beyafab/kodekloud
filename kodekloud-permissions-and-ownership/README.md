cat > kodekloud-linux-permissions-lab/README.md <<'EOF'
# KodeKloud Linux Permissions & Ownership Lab

## Objective
Practice `ls`, `chmod`, and `chown` — including the recursive `-R` flag — to manage file permissions and ownership on a Linux host.

## Environment
- Host: `caleston-lp10`
- User: `bob`
- Password: (lab-provided)
- Working directory: `/home/bob`
- Files touched: `sports/`, `sports/soccer`, plus a new file inside `sports/`

---

## 1. Inspect the Home Directory and Permissions

```bash
ls -la
# or, on many distros:
ll

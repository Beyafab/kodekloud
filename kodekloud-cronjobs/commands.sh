cat > kodekloud-cron-lab/commands.sh <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# KodeKloud Cron Lab — non-interactive reproduction
# ============================================================

# ---------- Q1: List Bob's cron jobs ----------
echo "=== Bob's crontab (before) ==="
crontab -l

# ---------- Q3: List root's cron jobs ----------
# sudo will prompt for caleston123 when run interactively
echo "=== Root's crontab ==="
sudo crontab -l

# ---------- Q5: Add last-reboot.sh (1st of every month, 6 AM) ----------
# Append the new line, dedupe, and install the updated crontab
( crontab -l 2>/dev/null; \
  echo '0 6 1 * * /usr/local/bin/last-reboot.sh' ) \
  | sort -u | crontab -

# ---------- Q7: Fix system-debugger.sh to every 30 minutes ----------
# 1. Remove the old (wrong) system-debugger line
# 2. Add the corrected */30 line
crontab -l \
  | grep -v '/usr/local/bin/system-debugger.sh' \
  | { cat; echo '*/30 * * * * /usr/local/bin/system-debugger.sh'; } \
  | crontab -

# ---------- Verify ----------
echo "=== Bob's crontab (after) ==="
crontab -l

echo "=== Root's crontab ==="
sudo crontab -l
EOF

chmod +x kodekloud-cron-lab/commands.sh

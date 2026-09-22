cat > kodekloud-linux-permissions-lab/commands.sh <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

# 1. Inspect home directory and permissions
ls -la

# 2. Work inside the sports directory
cd sports

# 3. Set soccer to 755 (owner rwx, group r-x, others r-x)
chmod 755 soccer

# 4. Adjust soccer to 770 (add group write, remove others)
chmod 770 soccer

# 5. Change owner of soccer to mercury
sudo chown mercury soccer

# 6. Recursively change owner of sports/ and all contents to mercury
cd ..
sudo chown -R mercury sports

# 7. Verify
ls -l sports
ls -l sports/soccer
EOF

chmod +x kodekloud-linux-permissions-lab/commands.sh

cat > kodekloud-cron-lab/README.md <<'EOF'
# KodeKloud Cron Lab

## Objective
Practice inspecting, editing, and scheduling cron jobs for users `bob` and `root`, and understand crontab syntax.

## Environment
- Host: `caleston-lp10`
- Users: `bob`, `root`
- Passwords: `caleston123`
- Scripts referenced: `/usr/local/bin/*.sh`

---

## Crontab syntax cheat sheet

```text
* * * * * <command>
│ │ │ │ │
│ │ │ │ └── day of week   (0-7, 0 and 7 = Sunday)
│ │ │ └──── month         (1-12)
│ │ └────── day of month  (1-31)
│ └──────── hour          (0-23)
└────────── minute        (0-59)

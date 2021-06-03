rm -f $(pwd)"/auto_push_cron"

echo "0-30 19 * * * /bin/bash "$(pwd)"/autopush.sh" >> $(pwd)"/auto_push_cron"
sudo chmod +x $(pwd)"/autopush.sh"
crontab $(pwd)"/auto_push_cron"

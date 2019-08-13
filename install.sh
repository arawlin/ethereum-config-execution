set -e

CONFIG_HOME=/wallet/ethereum/data
REMOTE=https://github.com/snakewarhead/ethereum-config.git

mkdir -p "$CONFIG_HOME"
git clone "$REMOTE" "$CONFIG_HOME"

cd "$CONFIG_HOME"

crontab -l > cron_tmp && echo "*/30 * * * * /wallet/ethereum/data/checkrunning.sh" >> cron_tmp && crontab cron_tmp && rm -f cron_tmp


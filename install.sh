set -e

CONFIG_HOME=/wallet/ethereum/data
REMOTE=https://github.com/snakewarhead/ethereum-config.git

mkdir -p "$CONFIG_HOME"
git clone "$REMOTE" "$CONFIG_HOME"

cd "$CONFIG_HOME"



# ethereum-config

## geth

download from `https://github.com/ethereum/go-ethereum/releases`

or sudo apt-get install ethereum
```bash
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum
```

## path tree

```
mkdir -p /wallet/ethereum/data
```

## install

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/snakewarhead/ethereum-config/master/install.sh)"
```

## dump config

```bash
geth --datadir /wallet/ethereum/data --syncmode snap --gcmode full --cache 8192 --http --http.addr 192.168.1.51 --http.port 7000 --http.api web3,eth,txpool --ws --ws.addr 192.168.1.51 --ws.port 7001 --ws.api web3,eth,txpool --maxpeers 100 dumpconfig
```

## crontab

```bash
*/5 * * * * /wallet/ethereum/data/checkrunning.sh
0 6 * * * /wallet/ethereum/data/start.sh
```

## cmd

cli
```bash
./cli.sh account new
./cli.sh account list

```

console
```bash
personal.unlockAccount(personal.listAccounts[0])

# eth.resend(tx, optional gas price, optional gas limit)
eth.resend(eth.pendingTransactions[0], web3.toWei(20, 'gwei'))
```

rpc
```bash
curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:7000' --data '{"jsonrpc":"2.0","method":"personal_unlockAccount","params":["0xfbdd4f9a9b04eb35bce49bcb55615502bc9f5f58","123456"],"id":1}'

curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:7000' --data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["0x0", false],"id":1}'

curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:7000' --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}'

curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:7000' --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0xde0096fea35c538dcfe7cddacfd808cba596deb0", "latest"],"id":1}'

curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:7000' --data '{"jsonrpc":"2.0","method":"eth_getTransactionByBlockNumberAndIndex","params":["0x4C0552", "0x0"],"id":1}'

curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:7000' --data '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["0x2e486c610ac9a9d85279d8e1390ac0f9434aaf0356d47b2c29319d71fc941fc7"],"id":1}'

curl -X POST -H 'Content-Type: application/json' -i 'http://localhost:7000' --data '{"jsonrpc":"2.0","method":"eth_getTransactionReceipt","params":["0xf1d7fa887340b90aeb5aeeeef71ec0efc99e3c5bbb34a809fcd033f6562205e0"],"id":1}'
```

# Install YAS testnet

## Install eos and eosio.cdt
### Mac OS X
```shell
brew tap eosio/eosio
brew install eosio
brew tap eosio/eosio.cdt
brew install eosio.cdt
```

### Ubuntu 18.04
```shell
wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.6.3/eosio.cdt_1.6.3-1-ubuntu-18.04_amd64.deb
sudo apt install ./eosio.cdt_1.6.3-1_amd64.deb
wget https://github.com/EOSIO/eos/releases/download/v2.0.0/eosio_2.0.0-1-ubuntu-18.04_amd64.deb
sudo apt install ./eosio_2.0.0-1-ubuntu-18.04_amd64.deb
```

## Init testnet
### init genesis node
You can get the yas testnet account from ap, then excute:
```shell
git clone https://github.com/hqzhong/yas_testnet.git
cd biosboot/genesis
chmod 755 genesis_start.sh
./genesis_start.sh <EOS_PUB_DEV_KEY> <EOS_PRIV_DEV_KEY> <PRODUCT_NAME>
```

- <EOS_PUB_DEV_KEY>: set as you test account public key
- <EOS_PRIV_DEV_KEY>: set as you test account private key
- <PRODUCT_NAME>: set as you test account name

now the test node is OK! ！！

but after stopping the nodeos process, you can't use ./genesis_start.sh script to start, you should use:
```shell
./start.sh <EOS_PUB_DEV_KEY> <EOS_PRIV_DEV_KEY> <PRODUCT_NAME>
```

## to be a bp
```shell
cleos wallet create --to-console
```
cleos will return a password, save this password somewhere as you will likely need it later in the tutorial.
```
Creating wallet: default
Save password to use in the future to unlock this wallet.
Without password imported keys will not be retrievable.
"PW5Kewn9L76X8Fpd....................t42S9XCw2"
```

```shell
cleos wallet import --private-key <EOS_PRIV_DEV_KEY>
```

```shell
cleos system regproducer <PRODUCT_NAME> <EOS_PUB_DEV_KEY>
```




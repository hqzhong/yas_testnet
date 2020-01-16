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
You can get the yas testnet account from ap in telegram [eidosgroup](https://t.me/eidosgroup), then excute:
```shell
git clone https://github.com/hqzhong/yas_testnet.git
cd biosboot/genesis
chmod 755 genesis_start.sh
./genesis_start.sh <EOS_PUB_DEV_KEY> <EOS_PRIV_DEV_KEY> <PRODUCT_NAME>
```

- <EOS_PUB_DEV_KEY>: set as you test account public key
- <EOS_PRIV_DEV_KEY>: set as you test account private key
- <PRODUCT_NAME>: set as you test account name

### check node
```shell
$ cleos get info
{
  "server_version": "e19afc80",
  "chain_id": "72d597bd2f1560b544f8c58b3fe87ff02ef26c35eec71ddd51da2dd6ab1fa722",
  "head_block_num": 200246,
  "last_irreversible_block_num": 199917,
  "last_irreversible_block_id": "00030cedb82764131725b3d6ca8d23e8f4973f73b67b895683876062587b96f5",
  "head_block_id": "00030e3699920b0c69c63116599a69c81493f1ac6ad5985e72629d23a7db5634",
  "head_block_time": "2020-01-13T17:05:32.000",
  "head_block_producer": "myeidosvoice",
  "virtual_block_cpu_limit": 100000000,
  "virtual_block_net_limit": 1048576000,
  "block_cpu_limit": 100000,
  "block_net_limit": 1048576,
  "server_version_string": "v2.0.0",
  "fork_db_head_block_num": 200246,
  "fork_db_head_block_id": "00030e3699920b0c69c63116599a69c81493f1ac6ad5985e72629d23a7db5634",
  "server_full_version_string": "v2.0.0-e19afc8072219282a7c3fc20e47aa80cb70299e4"
}
```
if the chain_id is __72d597bd2f1560b544f8c58b3fe87ff02ef26c35eec71ddd51da2dd6ab1fa722__, now the test node is OK! ！！

wait a moment, after all blocks synchronized, you can check the bp info:
```
$ cleos system listproducers
Producer      Producer key                                              Url                                                         Scaled votes
huskeynodebp  EOS5zToLAagn4R4DW2KvXe7VRpdbCieEEurkvo6NcBuJL3TNc5tUj     “https://huskeybp.xyz/”                                 0.0333
mathwalletbp  EOS74VJKdGWvDg2fc4bEBWBrnH92ByJpqpoZbG1KvUbG7eFSCDQS9     https://mathwallet.org                                      0.0333
dingshenghui  EOS7m67gRazGPa7qgZ2fYYkAdFJUbWDP9N3V1Tpu4iysjqPwnjPN9     https://dshtz.com/                                          0.0333
myeidosvoice  EOS83jv9D5B4oDc58bqGknfFgz15BfMkihf3gdGTM613xn4spNq9c     https://myeidosvoice.com                                    0.0333
mykeythebest  EOS8ej6m5xWj9ZUedSqSCxwsehuLvmn1aiuYqhXmXiDDsVfXkHgVY     https://mykey.org                                           0.0333
yasyas123123  EOS7nm7zccTPXctLSXT7LXjKGET3Aqhoh5fL27MjvKrDjHBydG7HQ     peilin.xyz                                                  0.0333
eidosgroup2a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
zhaoyilun532  EOS6jbnzJhWfHWCEUWykioLJFs6L97fgJZesyLaxVFiVnx8DWBGEV                                                                 0.0000
tothemoonkey  EOS5Me73aRQbEdG1UgGkjrYsif3Fb9kA7w8Kc8GprSSqz4qiFbe2a                                                                 0.0000
```

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

=====================

# YAS测试网安装方法 

## 安装 eos 和 eosio.cdt
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

## 初始化测试节点
### 初始化测试节点
你可以通过电报群[eidosgroup](https://t.me/eidosgroup)向ap申请yas测试网账户,然后执行以下命令:
```shell
git clone https://github.com/hqzhong/yas_testnet.git
cd biosboot/genesis
chmod 755 genesis_start.sh
./genesis_start.sh <EOS_PUB_DEV_KEY> <EOS_PRIV_DEV_KEY> <PRODUCT_NAME>
```

- <EOS_PUB_DEV_KEY>: set as you test account public key
- <EOS_PRIV_DEV_KEY>: set as you test account private key
- <PRODUCT_NAME>: set as you test account name

### 检查节点信息
```shell
$ cleos get info
{
  "server_version": "e19afc80",
  "chain_id": "72d597bd2f1560b544f8c58b3fe87ff02ef26c35eec71ddd51da2dd6ab1fa722",
  "head_block_num": 200246,
  "last_irreversible_block_num": 199917,
  "last_irreversible_block_id": "00030cedb82764131725b3d6ca8d23e8f4973f73b67b895683876062587b96f5",
  "head_block_id": "00030e3699920b0c69c63116599a69c81493f1ac6ad5985e72629d23a7db5634",
  "head_block_time": "2020-01-13T17:05:32.000",
  "head_block_producer": "myeidosvoice",
  "virtual_block_cpu_limit": 100000000,
  "virtual_block_net_limit": 1048576000,
  "block_cpu_limit": 100000,
  "block_net_limit": 1048576,
  "server_version_string": "v2.0.0",
  "fork_db_head_block_num": 200246,
  "fork_db_head_block_id": "00030e3699920b0c69c63116599a69c81493f1ac6ad5985e72629d23a7db5634",
  "server_full_version_string": "v2.0.0-e19afc8072219282a7c3fc20e47aa80cb70299e4"
}
```
如果chain_id是 __72d597bd2f1560b544f8c58b3fe87ff02ef26c35eec71ddd51da2dd6ab1fa722__, 则表示你的测试网正常运行了! ！！

等待一段时间，待所有区块同步完成后，你可以通过以下命令查看所有的bp信息:
```
$ cleos system listproducers
Producer      Producer key                                              Url                                                         Scaled votes
huskeynodebp  EOS5zToLAagn4R4DW2KvXe7VRpdbCieEEurkvo6NcBuJL3TNc5tUj     “https://huskeybp.xyz/”                                 0.0333
mathwalletbp  EOS74VJKdGWvDg2fc4bEBWBrnH92ByJpqpoZbG1KvUbG7eFSCDQS9     https://mathwallet.org                                      0.0333
dingshenghui  EOS7m67gRazGPa7qgZ2fYYkAdFJUbWDP9N3V1Tpu4iysjqPwnjPN9     https://dshtz.com/                                          0.0333
myeidosvoice  EOS83jv9D5B4oDc58bqGknfFgz15BfMkihf3gdGTM613xn4spNq9c     https://myeidosvoice.com                                    0.0333
mykeythebest  EOS8ej6m5xWj9ZUedSqSCxwsehuLvmn1aiuYqhXmXiDDsVfXkHgVY     https://mykey.org                                           0.0333
yasyas123123  EOS7nm7zccTPXctLSXT7LXjKGET3Aqhoh5fL27MjvKrDjHBydG7HQ     peilin.xyz                                                  0.0333
eidosgroup2a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup1f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup2f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup3f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4a  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4b  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4c  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4d  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4e  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
eidosgroup4f  EOS8E3r3McwpKQpoT9zMMZisZdqTfR14aunPeUbpRFWqECX5QCeGT                                                                 0.0333
zhaoyilun532  EOS6jbnzJhWfHWCEUWykioLJFs6L97fgJZesyLaxVFiVnx8DWBGEV                                                                 0.0000
tothemoonkey  EOS5Me73aRQbEdG1UgGkjrYsif3Fb9kA7w8Kc8GprSSqz4qiFbe2a                                                                 0.0000
```

但是，如果停止了nodeos进程，后续不能在使用__./genesis_start.sh__启动，你应用使用以下命令:
```shell
./start.sh <EOS_PUB_DEV_KEY> <EOS_PRIV_DEV_KEY> <PRODUCT_NAME>
```

## 注册成为bp
```shell
cleos wallet create --to-console
```
此命令会返回钱包的私钥，请妥善保存，以方便后续操作
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




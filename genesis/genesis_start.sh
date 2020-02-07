#!/bin/bash
DATADIR="./blockchain"

EOS_PUB_DEV_KEY=$1
EOS_PRIV_DEV_KEY=$2
PRODUCT_NAME=$3

if [ ! -d $DATADIR ]; then
  mkdir -p $DATADIR;
fi

nodeos \
--genesis-json $DATADIR"/../../genesis.json" \
--signature-provider ${EOS_PUB_DEV_KEY}=KEY:${EOS_PRIV_DEV_KEY} \
--plugin eosio::producer_plugin \
--plugin eosio::producer_api_plugin \
--plugin eosio::chain_plugin \
--plugin eosio::chain_api_plugin \
--plugin eosio::http_plugin \
--plugin eosio::history_api_plugin \
--plugin eosio::history_plugin \
--data-dir $DATADIR"/data" \
--blocks-dir $DATADIR"/blocks" \
--config-dir $DATADIR"/config" \
--producer-name ${PRODUCT_NAME} \
--http-server-address 0.0.0.0:8888 \
--p2p-listen-endpoint 0.0.0.0:9010 \
--access-control-allow-origin=* \
--contracts-console \
--http-validate-host=false \
--verbose-http-errors \
--enable-stale-production \
--wasm-runtime eos-vm-jit \
--p2p-peer-address 198.74.53.102:9876 \
--p2p-peer-address 172.105.84.51:9876 \
--p2p-peer-address 85.159.211.82:9876 \
--p2p-peer-address 172.104.66.128:9876 \
--p2p-peer-address 172.105.19.253:9876 \
>> $DATADIR"/nodeos.log" 2>&1 & \
echo $! > $DATADIR"/eosd.pid"

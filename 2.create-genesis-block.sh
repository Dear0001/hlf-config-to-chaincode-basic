export FABRIC_CFG_PATH=${PWD}/configtx

configtxgen -profile OrdererGenesis -outputBlock ./channel-artifacts/genesis.block \
            -channelID sys-channel
export FABRIC_CFG_PATH=${PWD}/configtx

configtxgen -profile BasicChannel -outputCreateChannelTx ./channel-artifacts/mychannel.tx \
            -channelID mychannel
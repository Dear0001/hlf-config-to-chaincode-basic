export FABRIC_CFG_PATH=${PWD}/configtx

#Generating anchor peer update for Org1MSP
configtxgen -profile BasicChannel \
            -channelID mychannel \
            -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx \
            -asOrg Org1MSP

configtxgen -profile BasicChannel \
            -channelID mychannel \
            -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors.tx \
            -asOrg Org2MSP
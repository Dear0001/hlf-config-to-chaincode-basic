export FABRIC_CFG_PATH=../config

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=localhost:9051

label=basic
version=1

PACKAGE_ID=$(sed -n "/${label}_${version}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
echo PackageID is ${PACKAGE_ID}
# --ordererTLSHostnameOverride orderer.example.com \ optional cuz it's on a localhost
peer lifecycle chaincode approveformyorg -o localhost:7050 \
    --tls --cafile ../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
    --channelID mychannel --name basic --version 1 --sequence 1 \
    --package-id ${PACKAGE_ID} --init-required
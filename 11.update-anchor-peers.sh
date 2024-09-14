export FABRIC_CFG_PATH=${PWD}/config


function setPeerEnvOrg1() {
    export CORE_PEER_ID="Org1MSP"
    export CORE_PEER_LOCALMSPID="Org1MSP"

    export CORE_PEER_TLS_ENABLED=true
    export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
    export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7051
}
function setPeerEnvOrg2() {
    export CORE_PEER_ID="Org2MSP"
    export CORE_PEER_LOCALMSPID="Org2MSP"

    export CORE_PEER_TLS_ENABLED=true
    export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
    export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:9051
}

function updateAnchorPeerOrg1(){
    setPeerEnvOrg1
    peer channel update -o localhost:7050 \
                        -c mychannel \
                        -f ./channel-artifacts/Org1MSPanchors.tx --tls \
                        --cafile ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem 
}

function updateAnchorPeerOrg2(){
    setPeerEnvOrg2
    peer channel update -o localhost:7050 \
                        -c mychannel -f ./channel-artifacts/Org2MSPanchors.tx --tls \
                        --cafile ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
}

updateAnchorPeerOrg1
updateAnchorPeerOrg2
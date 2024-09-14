export FABRIC_CFG_PATH=${PWD}/config

export ORDERER_GENERAL_LOGLEVEL=DEBUG

#variable for setting peer addresses
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_LISTENADDRESS=0.0.0.0:9051
export CORE_PEER_ADDRESS=localhost:9051
export CORE_PEER_GOSSIP_BOOTSTRAP=localhost:7051
export CORE_PEER_GOSSIP_EXTERNALENDPOINT=localhost:9051
export CORE_OPERATIONS_LISTENADDRESS=localhost:9446

export CORE_PEER_CHAINCODEADDRESS=localhost:9052
export CORE_PEER_CHAINCODELISTENADDRESS=0.0.0.0:9052

export CORE_PEER_FILESYSTEMPATH=${PWD}/ledger2/
export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp

export CORE_LEDGER_SNAPSHOTS_ROOTDIR=${PWD}/ledger2/

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_TLS_KEY_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.key
export CORE_PEER_TLS_CERT_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/server.crt


# launch the peer in background
peer node start
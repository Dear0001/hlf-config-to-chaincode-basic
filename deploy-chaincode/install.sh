./3.install-chaincode-on-peer-org1.sh
./4.install-chaincode-on-peer-org2.sh
./5.query_installed_peer_org1.sh
./6.approve-for-org1.sh

sleep 2s

./7.check-commit-readiness-org1.sh
./8.approve-for-org2.sh
./9.check-commit-readiness-org2.sh

sleep 2s

./10.commit-chaincode.sh
./11.query-committed-chaincode.sh
export FABRIC_CFG_PATH=${PWD}/../config

chaincode_name=basic
chaincode_path=../chaincode
version=1

peer lifecycle chaincode package ${chaincode_name}.tar.gz \
                                --path ${chaincode_path} \
                                --lang golang \
                                --label ${chaincode_name}_${version}
contract main {




// =====================  Runtime code  =====================


address owner;
uint256 storC9BC;
address implementationAddress;
uint256 storF5CF;

function getOwner() {
    return address(owner)
}

function getImplementation() {
    return address(implementationAddress)
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(owner)
    uint256(storC9BC) = arg1
}

function setImplementation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(owner)
    uint256(storF5CF) = arg1
}

function _fallback() payable {
    delegate uint256(storF5CF) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}

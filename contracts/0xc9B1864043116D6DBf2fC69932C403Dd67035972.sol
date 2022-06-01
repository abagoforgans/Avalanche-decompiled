contract main {




// =====================  Runtime code  =====================


address implementationAddress;
uint256 stor1260;
address proxyOwner;
uint256 storFEE8;

function proxyOwner() payable {
    return address(proxyOwner)
}

function implementation() payable {
    return address(implementationAddress)
}

function _fallback() payable {
    revert
}

function transferProxyOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(proxyOwner)
    require arg1
    uint256(storFEE8) = arg1
}

function upgradeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(proxyOwner)
    require address(implementationAddress) != arg1
    uint256(stor1260) = arg1
}



}

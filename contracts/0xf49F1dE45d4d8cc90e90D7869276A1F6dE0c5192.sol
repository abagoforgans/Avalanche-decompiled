contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f92b890(?)
#
address govAddress;
address vaultAddress;
address traderAddress;
address sub_d4fc42c6Address;

function gov() {
    return govAddress
}

function trader() {
    return traderAddress
}

function sub_d4fc42c6(?) {
    return sub_d4fc42c6Address
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function setGov(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    govAddress = arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    vaultAddress = arg1
}

function setTrader(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    traderAddress = arg1
}

function sub_9598da7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if govAddress != msg.sender:
        revert with 0, 'My: forbidden'
    sub_d4fc42c6Address = address(arg1)
}



}

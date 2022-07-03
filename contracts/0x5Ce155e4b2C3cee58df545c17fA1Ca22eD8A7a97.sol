contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function isAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function check(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function setManager(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        revert with 0, '!manager'
    stor0[address(arg1)] = uint8(arg2)
}

function setAllowedContract(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        revert with 0, '!manager'
    stor1[address(arg1)] = uint8(arg2)
}



}

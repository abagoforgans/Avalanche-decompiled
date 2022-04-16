contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 t;

function t() payable {
    return t
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function test(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the owner may call this function.'
    t = arg1
}



}

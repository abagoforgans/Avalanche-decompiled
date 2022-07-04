contract main {




// =====================  Runtime code  =====================


#
#  - sub_e75b3c82(?)
#
mapping of address sub_6aaddfc2;
mapping of uint256 sub_c51ea17c;
array of address sub_bf162d67;
address managerAddress;
address sub_c100521cAddress;
array of uint256 base_uri;
uint8 stor6;

function manager() {
    return managerAddress
}

function paused() {
    return bool(stor6)
}

function sub_5f04ba5b(?) {
    return sub_bf162d67.length
}

function sub_6aaddfc2(?) {
    require calldata.size - 4 >= 64
    return sub_6aaddfc2[address(arg1)][arg2]
}

function base_uri() {
    return base_uri[0 len base_uri.length]
}

function sub_b62289b8(?) {
    require calldata.size - 4 >= 64
    return sub_6aaddfc2[arg1][arg2]
}

function sub_bf162d67(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bf162d67.length
    return sub_bf162d67[arg1]
}

function sub_c100521c(?) {
    return sub_c100521cAddress
}

function sub_c51ea17c(?) {
    require calldata.size - 4 >= 32
    return sub_c51ea17c[arg1]
}

function sub_d7da8f83(?) {
    require calldata.size - 4 >= 32
    return sub_6aaddfc2[address(arg1)][stor1[address(arg1)] - 1]
}

function _fallback() payable {
    revert
}

function setPause(bool arg1) {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    stor6 = uint8(arg1)
}



}

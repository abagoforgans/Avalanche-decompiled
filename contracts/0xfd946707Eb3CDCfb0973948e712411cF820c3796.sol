contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function g(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sha3(arg1, arg2) % 2048 >> 245 % 10:
        return 0
    if uint16(sha3(arg1, arg2)) % 10:
        return 0
    if Mask(2, 80, sha3(arg1, arg2)) >> 80 >= 4:
        revert with 'NH{q', 50
    return uint8(stor0.field_Mask(2, 80, sha3(arg1, arg2)) >> 77)
}

function f(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 < 1:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != arg1 - 1:
        return 0
    if not sha3(arg2, arg3) % 2048 >> 245 % 10:
        return 0
    if uint16(sha3(arg2, arg3)) % 10:
        return 0
    if Mask(2, 80, sha3(arg2, arg3)) >> 80 >= 4:
        revert with 'NH{q', 50
    return uint8(stor0.field_Mask(2, 80, sha3(arg2, arg3)) >> 77)
}



}

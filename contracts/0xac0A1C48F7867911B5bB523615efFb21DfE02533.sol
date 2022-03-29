contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fbf551ad(?) {
    if not arg2:
        return address(sha3(Mask(184, 72, Mask(104, 0, arg1), 128, 0, 0) >> 72))
    if arg2 <= 127:
        return address(sha3(0, Mask(112, 144, Mask(104, 0, arg1), uint8(arg2), 0, 0) >> 144))
    if arg2 <= 255:
        return address(sha3(0, Mask(128, 128, Mask(112, 0, arg1), 0, uint8(arg2), 0, 0) >> 128))
    if arg2 <= 65535:
        return address(sha3(0, Mask(144, 112, Mask(120, 0, arg1), 0, uint16(arg2), 0, 0) >> 112))
    if arg2 > 16777215:
        return address(sha3(0, Mask(176, 80, Mask(136, 0, arg1), 0, uint32(arg2), 0, 0) >> 80))
    return address(sha3(0, Mask(160, 96, uint128(arg1), 0, arg2 % 16777216, 0, 0) >> 96))
}



}

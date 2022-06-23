contract main {




// =====================  Runtime code  =====================


uint256 stor1;

function _fallback() payable {
    revert
}

function sub_6783a59a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor1 = arg1
}

function sub_80fde3d9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sha3(arg2, 1, arg1, stor1)
}

function sub_d97b20a7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == arg2
    if 0 >= block.number:
        revert with 0, 'NFT: Nope!'
    if Mask(2, 64, sha3(arg2, 1, arg1 << 240, stor1)) >> 64 >= 4:
        revert with 'NH{q', 50
    return 1, 
           not not uint16(sha3(arg2, 1, arg1 << 240, stor1)) % 10,
           0,
           Mask(2, 80, sha3(arg2, 1, arg1 << 240, stor1)) << 174,
           block.timestamp,
           uint8(stor0.field_(Mask(2, 64, sha3(arg2, 1, arg1 << 240, stor1)) >> 61) - 248),
           block.timestamp,
           100 and Mask(240, 0, sha3(arg2, 1, arg1 << 240, stor1)) >> 16 << 248,
           100 and Mask(240, 0, sha3(arg2, 1, arg1 << 240, stor1)) >> 32 << 248,
           100 and Mask(224, 16, sha3(arg2, 1, arg1 << 240, stor1)) >> 48 << 248,
           0
}



}

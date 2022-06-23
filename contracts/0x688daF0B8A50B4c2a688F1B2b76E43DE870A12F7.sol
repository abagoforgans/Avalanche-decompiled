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
    hash = sha256hash(arg2, 1, arg1, stor1) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    return hash
}

function sub_d97b20a7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == arg2
    hash = sha256hash(arg2, 1, arg1 << 240, stor1) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    if 0 >= block.number:
        revert with 0, 'NFT: Nope!'
    if Mask(2, 64, hash) >> 64 >= 4:
        revert with 'NH{q', 50
    return 1, 
           not not uint16(hash) % 10,
           0,
           Mask(2, 80, hash) << 174,
           block.timestamp,
           stor0,
           block.timestamp,
           100 and Mask(240, 0, hash) >> 16 << 248,
           100 and Mask(240, 0, hash) >> 32 << 248,
           100 and Mask(224, 16, hash) >> 48 << 248,
           0
}



}

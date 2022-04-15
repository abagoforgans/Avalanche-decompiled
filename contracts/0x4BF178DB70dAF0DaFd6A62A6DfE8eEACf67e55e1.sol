contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_61ab1591(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length > 0
    mem[(32 * arg2.length) + 128] = 'transferFrom(address,address,uin'
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _19 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)'))
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = address(_19)
        mem[(32 * arg2.length) + 196] = arg3
        call arg1 with:
           funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
             gas gas_remaining wei
            args msg.sender, address(_19), arg3
        if not ext_call.success:
            revert with 0, 'transfer failed'
        s = ext_call.success
        idx = idx + 1
        continue 
    return 1
}



}

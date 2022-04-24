contract main {




// =====================  Runtime code  =====================


uint256 l;
array of uint256 r;

function r() payable {
    return r[0 len r.length]
}

function l() payable {
    return l
}

function _fallback() payable {
    revert
}

function test() payable {
    mem[128] = '00000000000000000000000000000000'
    mem[160] = '0000000000'
    call 0xb755b949c126c04e0348dd881a5cf55d424742b2 with:
       funct Mask(32, 224, '0x4903b0d10000000000000000000000') >> 224
         gas gas_remaining wei
        args Mask(224, 0, '0x4903b0d10000000000000000000000'), '00000000000000000000000000000000', '0000000000'
    if not return_data.size:
        if '0x4903b0d10000000000000000000000':
            r[] = Array(len='0x4903b0d10000000000000000000000', data=mem[128 len '0x4903b0d10000000000000000000000'])
        else:
            r.length = 0
            idx = 0
            while r.length + 31 / 32 > idx:
                r[idx] = 0
                idx = idx + 1
                continue 
        l = '0x4903b0d10000000000000000000000'
    else:
        if return_data.size:
            r[] = Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        else:
            r.length = 0
            idx = 0
            while r.length + 31 / 32 > idx:
                r[idx] = 0
                idx = idx + 1
                continue 
        l = return_data.size
}



}

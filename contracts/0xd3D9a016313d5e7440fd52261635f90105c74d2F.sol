contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function test() payable {
    call 0xb755b949c126c04e0348dd881a5cf55d424742b2 with:
       funct Mask(32, 224, '0x4903b0d10000000000000000000000') >> 224
         gas gas_remaining wei
        args Mask(224, 0, '0x4903b0d10000000000000000000000'), '00000000000000000000000000000000', '0000000000'
    if not return_data.size:
        return 64, '0x4903b0d10000000000000000000000', 64, '00000000000000000000000000000000', 64
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]), return_data.size
}



}

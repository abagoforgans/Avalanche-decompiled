contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function transferOwnership() payable {
    mem[164 len 64] = unknown_0xf2fde38b(?????), msg.sender, mem[164 len 28]
    call stor0.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    if not return_data.size:
        return bool(ext_call.success), 
               64,
               36,
               unknown_0xf2fde38b(?????), msg.sender, Mask(224, 32, bool(ext_call.success)) >> 32 >> 32,
               0
    return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}

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

function owner() payable {
    call stor0 with:
       funct Mask(32, 224, '0x8da5cb5b') >> 224
         gas gas_remaining wei
        args (Mask(48, 176, '0x8da5cb5b') >> 176)
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if ceil32(bool(ext_call.success)) > bool(ext_call.success):
        mem[bool(ext_call.success) + 192] = 0
    return memory
      from 96
       len ceil32(bool(ext_call.success)) + 96
}



}

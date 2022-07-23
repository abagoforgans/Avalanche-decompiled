contract main {




// =====================  Runtime code  =====================


address sub_f0dc471fAddress;

function sub_f0dc471f(?) payable {
    return sub_f0dc471fAddress
}

function _fallback() payable {
    revert
}

function sub_9bb5b3d0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    call sub_f0dc471fAddress with:
         gas gas_remaining wei
        args arg1[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if not bool(ext_call.success) % 32:
        return memory
          from 96
           len bool(ext_call.success) + 96
    mem[floor32(bool(ext_call.success)) + 192] = Mask(-(8 * -(bool(ext_call.success) % 32) + 32) + 256, 0, mem[floor32(bool(ext_call.success)) + 192])
    return memory
      from 96
       len floor32(bool(ext_call.success)) + 128
}



}

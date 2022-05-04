contract main {




// =====================  Runtime code  =====================


#
#  - swapBase(uint256 arg1, uint256 arg2, uint160[] arg3, uint160[][] arg4, uint256 arg5, bool arg6, uint160 arg7)
#  - swapToken(uint256 arg1, uint256 arg2, uint160[] arg3, uint160[][] arg4, uint256 arg5, uint256 arg6, bool arg7, uint160 arg8)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
address stor0;

function destroy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'ACCESS DENIED'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function transferBase(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'ACCESS DENIED'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
}

function call(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'ACCESS DENIED'
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 0
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
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

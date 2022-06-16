contract main {




// =====================  Runtime code  =====================


address stor0;

function x() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_33b3f4aa(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[224 len arg4.length] = arg4[all]
    mem[arg4.length + 224] = 0
    emit UserLockLogger(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, bytes arg6):
                        1000 * 10^18,
                        0,
                        96,
                        arg4.length,
                        arg4[all],
                        mem[arg4.length + 224 len ceil32(arg4.length) - arg4.length],
                        arg1,
                        arg2,
                        0,
    mem[228] = arg4.length
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(stor0)
    call stor0.userLock(bytes32 arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, 0, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len arg4.length] = arg4[all]
    mem[arg4.length + 224] = 0
    emit UserLockLogger(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, bytes arg6):
                        1000 * 10^18,
                        0,
                        96,
                        arg4.length,
                        arg4[all],
                        mem[arg4.length + 224 len ceil32(arg4.length) - arg4.length],
                        arg1,
                        arg2,
                        0,
}



}

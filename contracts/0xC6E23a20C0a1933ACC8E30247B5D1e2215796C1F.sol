contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function sub_b868980b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == address(arg4)
    if msg.value < arg3:
        revert with 'NH{q', 17
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    call address(arg1) with:
       value msg.value - arg3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg4) with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    if msg.value < msg.value - arg3:
        revert with 'NH{q', 17
    if arg3 < arg3:
        revert with 'NH{q', 17
    call msg.sender with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferWithReferenceAndFee(address(arg1), msg.value - arg3, arg3, address(arg4), sha3(arg2[all]));
    stor0 = 1
}

function sub_d7c95e98(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == address(arg5)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg5) with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    if msg.value < arg2:
        revert with 'NH{q', 17
    if msg.value - arg2 < arg4:
        revert with 'NH{q', 17
    call msg.sender with:
       value msg.value - arg2 - arg4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferWithReferenceAndFee(address(arg1), arg2, arg4, address(arg5), sha3(arg3[all]));
    stor0 = 1
}



}

contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'safeTransferETH: ETH transfer failed'
}



}

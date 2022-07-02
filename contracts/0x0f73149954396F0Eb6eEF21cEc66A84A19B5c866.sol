contract main {




// =====================  Runtime code  =====================


#
#  - sub_96b3ab6c(?)
#  - sub_c7515366(?)
#  - _fallback()
#
function sub_9886ccd5(?) {
    if 0x389c5b5ebb7b41e1ac8722b468efa2ae3e80b190 != msg.sender:
        revert with 0, 'o'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5fa1aaa4(?) {
    require calldata.size - 4 >= 32
    if 0x389c5b5ebb7b41e1ac8722b468efa2ae3e80b190 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(address(arg1 xor 0x938b0ac4e6dd86290ce9ac5eb20cbbb1267a8058))
    call address(arg1 xor 0x938b0ac4e6dd86290ce9ac5eb20cbbb1267a8058).burn(address arg1) with:
         gas gas_remaining wei
        args 0x389c5b5ebb7b41e1ac8722b468efa2ae3e80b190
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function payout(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x389c5b5ebb7b41e1ac8722b468efa2ae3e80b190 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(msg.sender), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 32 != return_data.size:
        if return_data.size:
            revert with 0, 'TF'
    else:
        mem[0 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not mem[0]:
            revert with 0, 'TF'
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - sub_96b3ab6c(?)
#  - sub_977cfbad(?)
#  - _fallback()
#
function sub_9886ccd5(?) {
    if 0x9554a7739d7d7d07f88468579a37423c33c02217 != msg.sender:
        revert with 0, 'o'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4ecb2cb4(?) {
    require calldata.size - 4 >= 32
    if 0x9554a7739d7d7d07f88468579a37423c33c02217 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(address(arg1 xor 0xbbbe665a88bd5bdff41ecfbdbddfaa86b855c042))
    call address(arg1 xor 0xbbbe665a88bd5bdff41ecfbdbddfaa86b855c042).burn(address arg1) with:
         gas gas_remaining wei
        args 0x9554a7739d7d7d07f88468579a37423c33c02217
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function payout(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x9554a7739d7d7d07f88468579a37423c33c02217 != msg.sender:
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

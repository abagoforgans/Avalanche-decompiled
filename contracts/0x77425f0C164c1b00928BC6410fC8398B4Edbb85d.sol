contract main {




// =====================  Runtime code  =====================


#
#  - exp()
#  - sub_fd025320(?)
#
function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0x4391e81bf449c584ee01f5503cb40573c53442d1 != msg.sender:
        revert with 0, 'got out'
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.0xa9059cbb with:
         gas gas_remaining wei
        args 0x56da606001c8874cd774aab2eb5ee3aa577ba4bb, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}

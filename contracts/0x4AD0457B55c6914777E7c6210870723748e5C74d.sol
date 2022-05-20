contract main {




// =====================  Runtime code  =====================


#
#  - sub_4b007dbb(?)
#
function _fallback() payable {
    require ext_code.size(this.address)
    call this.address.0x4b007dbb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

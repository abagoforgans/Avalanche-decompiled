contract main {




// =====================  Runtime code  =====================


#
#  - sub_92e9b038(?)
#
address sub_12ba4274Address;
address sub_7b127752Address;
address stor2;

function sub_12ba4274(?) payable {
    return sub_12ba4274Address
}

function sub_7b127752(?) payable {
    return sub_7b127752Address
}

function _fallback() payable {
    revert
}

function sub_0cb58544(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == stor2
    require ext_code.size(sub_12ba4274Address)
    call sub_12ba4274Address.0x4a6d324d with:
         gas gas_remaining wei
        args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a3c057e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == stor2
    call address(arg1).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

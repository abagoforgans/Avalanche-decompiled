contract main {




// =====================  Runtime code  =====================


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

function sub_92e9b038(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor2
    create contract with 0 wei
                    code: code.data[5640 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0x4c2b19065fed9ab028dd67933fd64dce5435e342
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[5640 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0x2e7aa6cc4cb84c3c87462b1b41c70f2d806d534b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[5640 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0x9dcff37a510909dd8c30a0baec2481d584712989
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[5640 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0x1dfb115b04c69da2f87dd32db0c378ec74428a3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[5640 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0xb1440682813a475d1ec5a6fa01341576afade2c6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[5640 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0x98a320cce6712294431a09b6bb823581e83b7ee1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[5640 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0xa4096ed7dd6d0b282be25644c9f77ca3693e714d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

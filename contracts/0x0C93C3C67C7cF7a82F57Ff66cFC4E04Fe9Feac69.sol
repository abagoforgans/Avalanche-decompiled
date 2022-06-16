contract main {




// =====================  Runtime code  =====================


address sub_12ba4274Address;
address sub_7b127752Address;
address stor2;
array of address stor3;

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
    mem[96 len 3045] = code.data[3078 len 3045]
    create contract with 0 wei
                    code: code.data[3078 len 3045]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(create.new_address).getAdd() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_7b127752Address)
    call sub_7b127752Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 200000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = 0x4c2b19065fed9ab028dd67933fd64dce5435e342
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa30b519e with:
         gas gas_remaining wei
        args address(arg1), 0x4c2b19065fed9ab028dd67933fd64dce5435e342
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 0x8d2d6e9800000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8d2d6e98 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < 14:
        mem[mem[64] len 3045] = code.data[3078 len 3045]
        create contract with 0 wei
                        code: code.data[3078 len 3045]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall address(create.new_address).getAdd() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == mem[_30 + 12 len 20]
        mem[mem[64] + 4] = mem[_30 + 12 len 20]
        require ext_code.size(sub_7b127752Address)
        call sub_7b127752Address.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 200000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = stor3[idx]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xa30b519e with:
             gas gas_remaining wei
            args address(arg1), stor3[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x8d2d6e9800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x8d2d6e98 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}

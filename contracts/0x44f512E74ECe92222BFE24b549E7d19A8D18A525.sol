contract main {




// =====================  Runtime code  =====================


uint8 sub_ad266e81; offset 160
uint128 stor0; offset 160
address stor0;

function sub_ad266e81(?) payable {
    return bool(sub_ad266e81)
}

function _fallback() payable {
    revert
}

function Existing(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    address(stor0.field_0) = arg1
}

function getValue() payable {
    require ext_code.size(address(stor0.field_0))
    staticcall address(stor0.field_0).0x20965255 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setNewValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x55241077 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_a2ad1892(?) payable {
    mem[64] = 96
    idx = 0
    while idx < 1000:
        require ext_code.size(address(stor0.field_0))
        staticcall address(stor0.field_0).0x20965255 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == mem[_7]
        if mem[_7] != 2:
            if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        Mask(96, 0, stor0.field_160) = 1
}



}

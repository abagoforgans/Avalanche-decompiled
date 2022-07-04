contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8

function _fallback() payable {
    revert
}

function Existing(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    address(stor0.field_8) = arg1
}

function setState(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    uint8(stor0.field_0) = uint8(arg1)
}

function getValue() payable {
    require ext_code.size(address(stor0.field_8))
    staticcall address(stor0.field_8).0x20965255 with:
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
    require ext_code.size(address(stor0.field_8))
    call address(stor0.field_8).0x55241077 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_a2ad1892(?) payable {
    if uint8(stor0.field_0):
        require ext_code.size(address(stor0.field_8))
        staticcall address(stor0.field_8).0x20965255 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] != 2:
            return ext_call.return_data[0]
        else:
            return 0
    else:
        return 0
}



}

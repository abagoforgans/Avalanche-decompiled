contract main {




// =====================  Runtime code  =====================


#
#  - sub_959be736(?)
#
mapping of address sub_f9c5f1b2;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
address sub_34f6ebf5Address;

function sub_1baaaffe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_2d2b0deb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function sub_34f6ebf5(?) payable {
    return sub_34f6ebf5Address
}

function isAddressVerified(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor3[address(arg1)][address(arg2)])
}

function sub_f9c5f1b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f9c5f1b2[arg1]
}

function _fallback() payable {
    revert
}

function sub_08900bd8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        revert with 0, 'LOSSLESS: Strategy not verified'
    if not stor3[address(arg1)][address(arg2)]:
        revert with 0, 'LOSSLESS: Address not verified'
    require ext_code.size(sub_34f6ebf5Address)
    call sub_34f6ebf5Address.0x3835b4d5 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c2659d13(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        if sub_f9c5f1b2[address(arg1)] != msg.sender:
            revert with 0, 'LOSSLESS: Unauthorized access'
        if not msg.sender:
            revert with 0, 'LOSSLESS: Unauthorized access'
    require ext_code.size(sub_34f6ebf5Address)
    call sub_34f6ebf5Address.0x61c1ce06 with:
         gas gas_remaining wei
        args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d2d66482(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(sub_34f6ebf5Address)
    call sub_34f6ebf5Address.admin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'LOSSLESS: Not lossless admin'
    stor2[address(arg1)] = uint8(bool(arg2))
    emit 0xd128f445: bool(arg2), address(arg1)
}

function sub_ddf6194b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor2[address(arg1)]:
        revert with 0, 'LOSSLESS: Token not verified'
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'LOSSLESS: Not token admin'
    sub_f9c5f1b2[address(arg1)] = address(arg2)
    emit 0xe2b2ca2c: address(arg1), address(arg2)
}

function sub_65529eef(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require ext_code.size(sub_34f6ebf5Address)
    call sub_34f6ebf5Address.admin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'LOSSLESS: Not lossless admin'
    if not stor2[address(arg1)]:
        revert with 0, 'LOSSLESS: Token not verified'
    stor3[address(arg1)][address(arg2)] = uint8(bool(arg3))
    emit 0x71b85259: bool(arg3), address(arg1), address(arg2)
}



}

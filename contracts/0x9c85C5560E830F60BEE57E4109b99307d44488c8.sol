contract main {




// =====================  Runtime code  =====================


#
#  - sub_691590d2(?)
#  - sub_fb8f3bd2(?)
#
address guardianAddress;
address controllerAddress;
mapping of uint8 stor2;

function sub_2f4fedd3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    return bool(stor2[address(arg1)][address(arg2)][address(arg3)])
}

function guardian() payable {
    return guardianAddress
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function sub_d4bab303(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor2[address(arg1)][address(arg2)][address(arg3)]:
        revert with 0, 'LOSSLESS: not whitelisted'
}

function setGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    call controllerAddress.admin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'LOSSLESS: Not lossless admin'
    guardianAddress = arg1
    emit GuardianSet(arg1);
}



}

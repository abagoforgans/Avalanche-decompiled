contract main {




// =====================  Runtime code  =====================


#
#  - sub_07761407(?)
#  - sub_203b625f(?)
#
address guardianAddress;
address controllerAddress;
mapping of struct sub_5d44f7a0;

function guardian() payable {
    return guardianAddress
}

function sub_5d44f7a0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_5d44f7a0[address(arg1)][address(arg2)].field_0, 
           sub_5d44f7a0[address(arg1)][address(arg2)].field_256,
           sub_5d44f7a0[address(arg1)][address(arg2)].field_512,
           sub_5d44f7a0[address(arg1)][address(arg2)].field_768
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
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

function sub_242f57e7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(guardianAddress)
    call guardianAddress.0xf9c5f1b2 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'LOSSLESS: Not protection admin'
    sub_5d44f7a0[address(arg1)][address(arg2)].field_0 = arg3
    sub_5d44f7a0[address(arg1)][address(arg2)].field_512 = arg4
    sub_5d44f7a0[address(arg1)][address(arg2)].field_256 = arg5
    sub_5d44f7a0[address(arg1)][address(arg2)].field_768 = arg4
    require ext_code.size(guardianAddress)
    call guardianAddress.0x8900bd8 with:
         gas gas_remaining wei
        args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_590308a5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(guardianAddress)
    call guardianAddress.0xf9c5f1b2 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'LOSSLESS: Not protection admin'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xc5a07b92 with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'LOSSLESS: Address not protected'
    sub_5d44f7a0[address(arg1)][address(arg2)].field_768 = 0
    if -1 < sub_5d44f7a0[address(arg1)][address(arg2)].field_0:
        revert with 0, 17
    sub_5d44f7a0[address(arg1)][address(arg2)].field_256 = -sub_5d44f7a0[address(arg1)][address(arg2)].field_0 - 1
    emit Paused(address(arg1), address(arg2));
}

function sub_d4bab303(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if controllerAddress != msg.sender:
        revert with 0, 'LOSSLESS: LSS Controller only'
    if sub_5d44f7a0[address(arg1)][address(arg2)].field_256 > !sub_5d44f7a0[address(arg1)][address(arg2)].field_0:
        revert with 0, 17
    if sub_5d44f7a0[address(arg1)][address(arg2)].field_256 + sub_5d44f7a0[address(arg1)][address(arg2)].field_0 > block.timestamp:
        if arg4 >= sub_5d44f7a0[address(arg1)][address(arg2)].field_768:
            sub_5d44f7a0[address(arg1)][address(arg2)].field_768 = 0
        else:
            if sub_5d44f7a0[address(arg1)][address(arg2)].field_768 < arg4:
                revert with 0, 17
            sub_5d44f7a0[address(arg1)][address(arg2)].field_768 -= arg4
    else:
        if block.timestamp < sub_5d44f7a0[address(arg1)][address(arg2)].field_256:
            revert with 0, 17
        if not sub_5d44f7a0[address(arg1)][address(arg2)].field_0:
            revert with 0, 18
        if sub_5d44f7a0[address(arg1)][address(arg2)].field_0 and block.timestamp - sub_5d44f7a0[address(arg1)][address(arg2)].field_256 / sub_5d44f7a0[address(arg1)][address(arg2)].field_0 > -1 / sub_5d44f7a0[address(arg1)][address(arg2)].field_0:
            revert with 0, 17
        if sub_5d44f7a0[address(arg1)][address(arg2)].field_256 > !(sub_5d44f7a0[address(arg1)][address(arg2)].field_0 * block.timestamp - sub_5d44f7a0[address(arg1)][address(arg2)].field_256 / sub_5d44f7a0[address(arg1)][address(arg2)].field_0):
            revert with 0, 17
        sub_5d44f7a0[address(arg1)][address(arg2)].field_256 += sub_5d44f7a0[address(arg1)][address(arg2)].field_0 * block.timestamp - sub_5d44f7a0[address(arg1)][address(arg2)].field_256 / sub_5d44f7a0[address(arg1)][address(arg2)].field_0
        if arg4 >= sub_5d44f7a0[address(arg1)][address(arg2)].field_512:
            sub_5d44f7a0[address(arg1)][address(arg2)].field_768 = 0
        else:
            if sub_5d44f7a0[address(arg1)][address(arg2)].field_512 < arg4:
                revert with 0, 17
            sub_5d44f7a0[address(arg1)][address(arg2)].field_768 = sub_5d44f7a0[address(arg1)][address(arg2)].field_512 - arg4
    if sub_5d44f7a0[address(arg1)][address(arg2)].field_768 <= 0:
        revert with 0, 'LOSSLESS: Strategy Limit reached'
}



}

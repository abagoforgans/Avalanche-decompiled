contract main {




// =====================  Runtime code  =====================


const getVersion = 2


uint8 paused;
address sub_2f11d653Address;
address adminAddress;
address recoveryAdminAddress;
address guardianAddress;
mapping of struct sub_b75bb0d6;

function sub_2f11d653(?) payable {
    return sub_2f11d653Address
}

function guardian() payable {
    return guardianAddress
}

function paused() payable {
    return bool(paused)
}

function recoveryAdmin() payable {
    return recoveryAdminAddress
}

function sub_b75bb0d6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_b75bb0d6[address(arg1)][address(arg2)].field_8
}

function sub_c5a07b92(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(sub_b75bb0d6[address(arg1)][address(arg2)].field_0)
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function afterApprove(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function beforeApprove(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function afterTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function afterIncreaseAllowance(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function afterDecreaseAllowance(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function beforeDecreaseAllowance(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function beforeIncreaseAllowance(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function afterTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
}

function pause() payable {
    if sub_2f11d653Address != msg.sender:
        revert with 0, 'LOSSLESS: Must be pauseAdmin'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if sub_2f11d653Address != msg.sender:
        revert with 0, 'LOSSLESS: Must be pauseAdmin'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LOSSLESS: Must be recoveryAdmin'
    if not arg1:
        revert with 0, 'LERC20: Cannot be zero address'
    emit AdminChanged(adminAddress, arg1);
    adminAddress = arg1
}

function setPauseAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LOSSLESS: Must be recoveryAdmin'
    if not arg1:
        revert with 0, 'LERC20: Cannot be zero address'
    emit PauseAdminChanged(sub_2f11d653Address, arg1);
    sub_2f11d653Address = arg1
}

function setRecoveryAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LOSSLESS: Must be recoveryAdmin'
    if not arg1:
        revert with 0, 'LERC20: Cannot be zero address'
    emit RecoveryAdminChanged(recoveryAdminAddress, arg1);
    recoveryAdminAddress = arg1
}

function setGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'LOSSLESS: Must be admin'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0, 'LSS: Cannot be zero address'
    emit GuardianSet(guardianAddress, arg1);
    guardianAddress = arg1
}

function sub_61c1ce06(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if guardianAddress != msg.sender:
        revert with 0, 'LOSSLESS: Must be Guardian'
    if paused:
        revert with 0, 'Pausable: paused'
    sub_b75bb0d6[address(arg1)][address(arg2)].field_0 = 0
    emit 0xa2971d10: address(arg1), address(arg2)
}

function sub_3835b4d5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if guardianAddress != msg.sender:
        revert with 0, 'LOSSLESS: Must be Guardian'
    if paused:
        revert with 0, 'Pausable: paused'
    sub_b75bb0d6[address(arg1)][address(arg2)].field_0 = 1
    sub_b75bb0d6[address(arg1)][address(arg2)].field_8 = address(arg3)
    sub_b75bb0d6[address(arg1)][address(arg2)].field_256 = 0
    emit 0x2fb7c91e: address(arg1), address(arg2), address(arg3)
}

function beforeTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if sub_b75bb0d6[msg.sender][address(arg1)].field_0:
        require ext_code.size(sub_b75bb0d6[msg.sender][address(arg1)].field_8)
        call sub_b75bb0d6[msg.sender][address(arg1)].field_8.0xd4bab303 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function beforeTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_b75bb0d6[msg.sender][address(arg2)].field_0:
        require ext_code.size(sub_b75bb0d6[msg.sender][address(arg2)].field_8)
        call sub_b75bb0d6[msg.sender][address(arg2)].field_8.0xd4bab303 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg2), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

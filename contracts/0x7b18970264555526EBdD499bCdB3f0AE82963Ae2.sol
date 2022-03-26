contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct lockBoxStructs;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function lockBoxStructs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lockBoxStructs.length
    return lockBoxStructs[arg1].field_0, lockBoxStructs[arg1].field_256, lockBoxStructs[arg1].field_512
}

function _fallback() payable {
    revert
}

function sub_a5a3b56a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 < lockBoxStructs.length
    require msg.sender == lockBoxStructs[arg1].field_0
    require arg4 >= lockBoxStructs[arg1].field_512
    if arg3 > lockBoxStructs[arg1].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    lockBoxStructs[arg1].field_256 -= arg3
    lockBoxStructs.length++
    lockBoxStructs[lockBoxStructs.length].field_0 = arg2
    storB10E[stor1.length] = arg3
    storB10E[stor1.length] = arg4
    emit 0x614f3219: msg.sender, address(arg2), arg3, arg4
}

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    lockBoxStructs.length++
    lockBoxStructs[lockBoxStructs.length].field_0 = arg1
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = arg3
    emit LogLockBoxDeposit(msg.sender, arg2, arg3);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lockBoxStructs.length
    require msg.sender == lockBoxStructs[arg1].field_0
    require lockBoxStructs[arg1].field_512 <= block.timestamp
    lockBoxStructs[arg1].field_256 = 0
    emit LogLockBoxWithdrawal(msg.sender, lockBoxStructs[arg1].field_256);
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockBoxStructs[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}

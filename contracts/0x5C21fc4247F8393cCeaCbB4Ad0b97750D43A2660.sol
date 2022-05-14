contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of struct lockBoxStructs;

function lockBoxStructs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lockBoxStructs.length
    return lockBoxStructs[arg1].field_0, lockBoxStructs[arg1].field_256, lockBoxStructs[arg1].field_512
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lockBoxStructs.length
    require lockBoxStructs[arg1].field_512 <= block.timestamp
    lockBoxStructs[arg1].field_256 = 0
    emit 0xef32bdde: lockBoxStructs[arg1].field_0, lockBoxStructs[arg1].field_256
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args lockBoxStructs[arg1].field_0, lockBoxStructs[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    lockBoxStructs.length++
    lockBoxStructs[lockBoxStructs.length].field_0 = arg1
    lockBoxStructs[lockBoxStructs.length].field_256 = arg2
    lockBoxStructs[lockBoxStructs.length].field_512 = arg3
    emit 0x62053c30: msg.sender, arg2, arg3
    return 1
}



}

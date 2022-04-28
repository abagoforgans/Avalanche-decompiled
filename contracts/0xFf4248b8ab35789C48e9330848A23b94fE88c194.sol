contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function swap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(0xcc2f1d827b18321254223df4e84de399d9ff116c)
    staticcall 0xcc2f1d827b18321254223df4e84de399d9ff116c.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough balance.'
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    staticcall 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 2 * arg1:
        revert with 0, 'Contract has not enough balance to swap.'
    require ext_code.size(0xcc2f1d827b18321254223df4e84de399d9ff116c)
    call 0xcc2f1d827b18321254223df4e84de399d9ff116c.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0x1a86acab83761c61a1183bc150f65f879c10136e, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(0x6d923f688c7ff287dc3a5943caeefc994f97b290)
    call 0x6d923f688c7ff287dc3a5943caeefc994f97b290.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 2 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}



}

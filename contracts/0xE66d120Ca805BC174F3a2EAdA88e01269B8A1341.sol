contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_45c3395e;
address stakeTokenAddr;

function StakeTokenAddr() payable {
    return stakeTokenAddr
}

function sub_45c3395e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_45c3395e[arg1].field_0, sub_45c3395e[arg1].field_256, sub_45c3395e[arg1].field_512
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

function rewards() payable {
    if not sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 'You've not staked yet!!!'
    if block.timestamp < sub_45c3395e[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_45c3395e[address(msg.sender)].field_0 and block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1 / sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 17
    if sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1:
        revert with 0, 17
    return (sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 / 100)
}

function claim() payable {
    if not sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 'You've not staked yet!!!'
    if not sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 'You've not staked yet!!!'
    if block.timestamp < sub_45c3395e[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_45c3395e[address(msg.sender)].field_0 and block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1 / sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 17
    if sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1:
        revert with 0, 17
    call stakeTokenAddr.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient balance in the treasure. Try again later!'
    sub_45c3395e[address(msg.sender)].field_512 = block.timestamp
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 'You've not staked that much!!!'
    if not sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 'You've not staked yet!!!'
    if not sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 'You've not staked yet!!!'
    if block.timestamp < sub_45c3395e[address(msg.sender)].field_512:
        revert with 0, 17
    if sub_45c3395e[address(msg.sender)].field_0 and block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1 / sub_45c3395e[address(msg.sender)].field_0:
        revert with 0, 17
    if sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1:
        revert with 0, 17
    call stakeTokenAddr.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient balance in the treasure. Try again later!'
    sub_45c3395e[address(msg.sender)].field_512 = block.timestamp
    call stakeTokenAddr.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_45c3395e[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_45c3395e[address(msg.sender)].field_0 < arg1:
        revert with 0, 17
    sub_45c3395e[address(msg.sender)].field_0 -= arg1
    if not sub_45c3395e[address(msg.sender)].field_0 - arg1:
        sub_45c3395e[address(msg.sender)].field_512 = 0
        sub_45c3395e[address(msg.sender)].field_256 = 0
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount should be greater than 0!!!'
    call stakeTokenAddr.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient fund to stake!'
    if arg1 <= 0:
        revert with 0, 'Amount should be greater than 0!!!'
    if not sub_45c3395e[address(msg.sender)].field_0:
        sub_45c3395e[address(msg.sender)].field_0 = arg1
        sub_45c3395e[address(msg.sender)].field_256 = block.timestamp
        sub_45c3395e[address(msg.sender)].field_512 = block.timestamp
    else:
        if not sub_45c3395e[address(msg.sender)].field_0:
            revert with 0, 'You've not staked yet!!!'
        if not sub_45c3395e[address(msg.sender)].field_0:
            revert with 0, 'You've not staked yet!!!'
        if block.timestamp < sub_45c3395e[address(msg.sender)].field_512:
            revert with 0, 17
        if sub_45c3395e[address(msg.sender)].field_0 and block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1 / sub_45c3395e[address(msg.sender)].field_0:
            revert with 0, 17
        if sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 > -1:
            revert with 0, 17
        call stakeTokenAddr.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_45c3395e[address(msg.sender)].field_0 * block.timestamp - sub_45c3395e[address(msg.sender)].field_512 / 24 * 3600 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Insufficient balance in the treasure. Try again later!'
        sub_45c3395e[address(msg.sender)].field_512 = block.timestamp
        if sub_45c3395e[address(msg.sender)].field_0 > !arg1:
            revert with 0, 17
        sub_45c3395e[address(msg.sender)].field_0 += arg1
}



}

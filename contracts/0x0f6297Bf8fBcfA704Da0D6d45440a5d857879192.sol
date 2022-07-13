contract main {




// =====================  Runtime code  =====================


#
#  - sub_37d445f1(?)
#
uint8 stor0; offset 160
address owner;
mapping of struct balanceOf;
uint256 totalStaked;
uint256 totalWeight;
uint8 boostFactor;
uint16 sub_321ec203; offset 8
address stakedTokenAddress; offset 24
array of address stor5;

function sub_321ec203(?) payable {
    return sub_321ec203
}

function paused() payable {
    return bool(stor0)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function totalWeight() payable {
    return totalWeight
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1].field_0, balanceOf[arg1].field_256, balanceOf[arg1].field_512
}

function boostFactor() payable {
    return boostFactor
}

function stakedToken() payable {
    return stakedTokenAddress
}

function weight(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_256
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_ab23a07b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    boostFactor = uint8(arg1)
    emit 0x64b8bc4e: uint8(arg1)
}

function sub_88252179(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_321ec203 = uint16(arg1)
    emit 0xfc7dffe2: uint16(arg1)
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

function rescueFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fffff187(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] == address(arg1):
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor5.length - 1 >= stor5.length:
                revert with 'NH{q', 50
            if idx >= stor5.length:
                revert with 'NH{q', 50
            stor5[idx] = stor5[stor5.length]
            if not stor5.length:
                revert with 'NH{q', 49
            mem[0] = 5
            stor5[stor5.length] = 0
            stor5.length--
            mem[96] = address(arg1)
            emit RewardContractRemoved(address(arg1));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if block.timestamp <= balanceOf[msg.sender].field_512:
        revert with 0, 'Still locked'
    if arg1 > balanceOf[msg.sender].field_0:
        revert with 0, 'Cannot unstake more than staked'
    if balanceOf[msg.sender].field_0 < arg1:
        revert with 'NH{q', 17
    balanceOf[msg.sender].field_0 -= arg1
    if totalStaked < arg1:
        revert with 'NH{q', 17
    totalStaked -= arg1
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        mem[96] = 0x7e298ea200000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = balanceOf[msg.sender].field_256
        mem[164] = totalWeight
        mem[196] = balanceOf[msg.sender].field_0
        require ext_code.size(stor5[idx])
        call stor5[idx].0x7e298ea2 with:
             gas gas_remaining wei
            args msg.sender, balanceOf[msg.sender].field_256, totalWeight, balanceOf[msg.sender].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if totalWeight < balanceOf[msg.sender].field_256:
        revert with 'NH{q', 17
    if totalWeight - balanceOf[msg.sender].field_256 > !balanceOf[msg.sender].field_0:
        revert with 'NH{q', 17
    totalWeight = totalWeight - balanceOf[msg.sender].field_256 + balanceOf[msg.sender].field_0
    balanceOf[msg.sender].field_256 = balanceOf[msg.sender].field_0
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x1f48df1a: msg.sender, arg1
}

function stake(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0:
        revert with 0, 'Pausable: paused'
    if balanceOf[msg.sender].field_0 > !arg1:
        revert with 'NH{q', 17
    balanceOf[msg.sender].field_0 += arg1
    if totalStaked > !arg1:
        revert with 'NH{q', 17
    totalStaked += arg1
    if not arg2:
        if balanceOf[msg.sender].field_512 >= block.timestamp:
            revert with 0, 'Cannot stake unlocked'
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[96] = 0x7e298ea200000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            mem[132] = balanceOf[msg.sender].field_256
            mem[164] = totalWeight
            mem[196] = balanceOf[msg.sender].field_0
            require ext_code.size(stor5[idx])
            call stor5[idx].0x7e298ea2 with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[msg.sender].field_256, totalWeight, balanceOf[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if totalWeight < balanceOf[msg.sender].field_256:
            revert with 'NH{q', 17
        if totalWeight - balanceOf[msg.sender].field_256 > !balanceOf[msg.sender].field_0:
            revert with 'NH{q', 17
        totalWeight = totalWeight - balanceOf[msg.sender].field_256 + balanceOf[msg.sender].field_0
        balanceOf[msg.sender].field_256 = balanceOf[msg.sender].field_0
    else:
        if boostFactor and balanceOf[msg.sender].field_0 > -1 / boostFactor:
            revert with 'NH{q', 17
        if sub_321ec203 > 194:
            revert with 'NH{q', 17
        if block.timestamp > !(24 * 3600 * sub_321ec203 % 16777216):
            revert with 'NH{q', 17
        balanceOf[msg.sender].field_512 = block.timestamp + (24 * 3600 * sub_321ec203 % 16777216)
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[96] = 0x7e298ea200000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            mem[132] = balanceOf[msg.sender].field_256
            mem[164] = totalWeight
            mem[196] = boostFactor * balanceOf[msg.sender].field_0
            require ext_code.size(stor5[idx])
            call stor5[idx].0x7e298ea2 with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[msg.sender].field_256, totalWeight, boostFactor * balanceOf[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if totalWeight < balanceOf[msg.sender].field_256:
            revert with 'NH{q', 17
        if totalWeight - balanceOf[msg.sender].field_256 > !(boostFactor * balanceOf[msg.sender].field_0):
            revert with 'NH{q', 17
        totalWeight = totalWeight - balanceOf[msg.sender].field_256 + (boostFactor * balanceOf[msg.sender].field_0)
        balanceOf[msg.sender].field_256 = boostFactor * balanceOf[msg.sender].field_0
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x60b8a360: msg.sender, arg1, arg2
}



}

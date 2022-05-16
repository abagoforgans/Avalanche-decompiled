contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address sub_85d9704bAddress;
mapping of uint256 sub_6f493dff;
mapping of uint256 lastClaim;
uint256 totalNodes;
uint256 reward;

function reward() payable {
    return reward
}

function getReward() payable {
    return reward
}

function lastClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaim[arg1]
}

function sub_63584ecd(?) payable {
    return totalNodes
}

function sub_6f493dff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6f493dff[address(arg1)]
}

function sub_74ea8f7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6f493dff[arg1]
}

function sub_85d9704b(?) payable {
    return sub_85d9704bAddress
}

function getLastClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaim[address(arg1)]
}

function owner() payable {
    return owner
}

function totalNodes() payable {
    return totalNodes
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

function flipClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor4.field_168) = Mask(88, 0, not bool(uint8(stor4.field_168)))
}

function sub_e274c61d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require msg.sender == stor2
    lastClaim[address(arg1)] = arg2
}

function sub_423058db(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, not bool(uint8(stor4.field_160)))
}

function setReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reward = arg1
}

function setMultisig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_5f8416a0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPending(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < lastClaim[address(arg1)]:
        revert with 'NH{q', 17
    if sub_6f493dff[address(arg1)] and block.timestamp - lastClaim[address(arg1)] > -1 / sub_6f493dff[address(arg1)]:
        revert with 'NH{q', 17
    if (block.timestamp * sub_6f493dff[address(arg1)]) - (lastClaim[address(arg1)] * sub_6f493dff[address(arg1)]) and reward > -1 / (block.timestamp * sub_6f493dff[address(arg1)]) - (lastClaim[address(arg1)] * sub_6f493dff[address(arg1)]):
        revert with 'NH{q', 17
    return ((block.timestamp * sub_6f493dff[address(arg1)] * reward) - (lastClaim[address(arg1)] * sub_6f493dff[address(arg1)] * reward))
}

function claim() payable {
    if block.timestamp < lastClaim[address(msg.sender)]:
        revert with 'NH{q', 17
    if sub_6f493dff[address(msg.sender)] and block.timestamp - lastClaim[address(msg.sender)] > -1 / sub_6f493dff[address(msg.sender)]:
        revert with 'NH{q', 17
    if (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]) and reward > -1 / (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]):
        revert with 'NH{q', 17
    require ext_code.size(sub_85d9704bAddress)
    call sub_85d9704bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), (block.timestamp * sub_6f493dff[address(msg.sender)] * reward) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)] * reward)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp < lastClaim[address(msg.sender)]:
        revert with 'NH{q', 17
    if sub_6f493dff[address(msg.sender)] and block.timestamp - lastClaim[address(msg.sender)] > -1 / sub_6f493dff[address(msg.sender)]:
        revert with 'NH{q', 17
    if (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]) and reward > -1 / (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]):
        revert with 'NH{q', 17
    require ext_code.size(sub_85d9704bAddress)
    call sub_85d9704bAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, (block.timestamp * sub_6f493dff[address(msg.sender)] * reward) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)] * reward)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    lastClaim[address(msg.sender)] = block.timestamp
}

function addNode(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor2
    if block.timestamp < lastClaim[address(msg.sender)]:
        revert with 'NH{q', 17
    if sub_6f493dff[address(msg.sender)] and block.timestamp - lastClaim[address(msg.sender)] > -1 / sub_6f493dff[address(msg.sender)]:
        revert with 'NH{q', 17
    if (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]) and reward > -1 / (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]):
        revert with 'NH{q', 17
    require ext_code.size(sub_85d9704bAddress)
    call sub_85d9704bAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), (block.timestamp * sub_6f493dff[address(msg.sender)] * reward) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)] * reward)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp < lastClaim[address(msg.sender)]:
        revert with 'NH{q', 17
    if sub_6f493dff[address(msg.sender)] and block.timestamp - lastClaim[address(msg.sender)] > -1 / sub_6f493dff[address(msg.sender)]:
        revert with 'NH{q', 17
    if (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]) and reward > -1 / (block.timestamp * sub_6f493dff[address(msg.sender)]) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)]):
        revert with 'NH{q', 17
    require ext_code.size(sub_85d9704bAddress)
    call sub_85d9704bAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, (block.timestamp * sub_6f493dff[address(msg.sender)] * reward) - (lastClaim[address(msg.sender)] * sub_6f493dff[address(msg.sender)] * reward)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    lastClaim[address(msg.sender)] = block.timestamp
    if sub_6f493dff[address(arg1)] > -2:
        revert with 'NH{q', 17
    sub_6f493dff[address(arg1)]++
    if totalNodes > -2:
        revert with 'NH{q', 17
    totalNodes++
}



}

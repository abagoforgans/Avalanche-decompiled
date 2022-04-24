contract main {




// =====================  Runtime code  =====================


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
mapping of uint8 stor66;
mapping of uint256 rewards;
uint8 claimable;
address stor68;
address rewardTokenAddress; offset 8
uint256 stor68;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function governor() payable {
    return address(governorAddress)
}

function claimable() payable {
    return bool(claimable)
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor66[arg1])
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function toggleClaimable() payable {
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    uint256(stor68.field_0) = not claimable or Mask(248, 8, uint256(stor68.field_0))
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if claimable:
        revert with 0, '!claimable'
    rewardTokenAddress = arg1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claim() payable {
    if not claimable:
        revert with 0, 'claimable'
    if stor66[msg.sender]:
        revert with 0, 'has claimed'
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, rewards[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor66[msg.sender] = 1
    emit Claim(address(stor68.field_0), msg.sender, rewards[msg.sender]);
}

function setRewards(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if claimable:
        revert with 0, '!claimable'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 67
        rewards[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}



}

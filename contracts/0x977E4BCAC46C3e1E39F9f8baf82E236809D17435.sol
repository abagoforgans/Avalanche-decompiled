contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
mapping of struct users;
uint256 rewardTillNowPerToken;
uint256 lastUpdatedBlock;
uint256 rewardPerBlock;
uint256 scale;
uint256 particleCollector;
uint256 daoShare;
uint256 earlyFoundersShare;
address daoWalletAddress;
address earlyFoundersWalletAddress;
uint256 totalStakedToken;
address stakedTokenAddress;
address rewardTokenAddress;

function earlyFoundersWallet() payable {
    return earlyFoundersWalletAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function earlyFoundersShare() payable {
    return earlyFoundersShare
}

function rewardTillNowPerToken() payable {
    return rewardTillNowPerToken
}

function daoWallet() payable {
    return daoWalletAddress
}

function daoShare() payable {
    return daoShare
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_96
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function particleCollector() payable {
    return particleCollector
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, users[arg1].field_256
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function totalStakedToken() payable {
    return totalStakedToken
}

function stakedToken() payable {
    return stakedTokenAddress
}

function scale() payable {
    return scale
}

function rewardToken() payable {
    return rewardTokenAddress
}

function lastUpdatedBlock() payable {
    return lastUpdatedBlock
}

function _fallback() payable {
    revert
}

function setStakedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xdb189261133fd7647d3308512b693b47bed44004cac80fb59aa64b63a231e2c][1][address(msg.sender)].field_0:
        revert with 0, 'STAKING:: Caller is not a trusty'
    stakedTokenAddress = arg1
    emit StakedTokenSet(arg1);
}

function setWallets(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xdb189261133fd7647d3308512b693b47bed44004cac80fb59aa64b63a231e2c][1][address(msg.sender)].field_0:
        revert with 0, 'STAKING:: Caller is not a trusty'
    daoWalletAddress = arg1
    earlyFoundersWalletAddress = arg2
    emit WalletsSet(address(arg1), arg2);
}

function withdrawERC20(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xdb189261133fd7647d3308512b693b47bed44004cac80fb59aa64b63a231e2c][1][address(msg.sender)].field_0:
        revert with 0, 'STAKING:: Caller is not a trusty'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_96 = arg2
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function emergencyWithdraw() payable {
    if totalStakedToken < users[msg.sender].field_0:
        revert with 'NH{q', 17
    totalStakedToken -= users[msg.sender].field_0
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, users[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(msg.sender, users[msg.sender].field_0);
    users[msg.sender].field_0 = 0
    users[msg.sender].field_256 = 0
}

function update() payable {
    if block.number > lastUpdatedBlock:
        if block.number < lastUpdatedBlock:
            revert with 'NH{q', 17
        if block.number - lastUpdatedBlock and rewardPerBlock > -1 / block.number - lastUpdatedBlock:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock) and scale > -1 / (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock):
            revert with 'NH{q', 17
        if not totalStakedToken:
            revert with 'NH{q', 18
        if rewardTillNowPerToken > !((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken):
            revert with 'NH{q', 17
        rewardTillNowPerToken += (block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken
        lastUpdatedBlock = block.number
}

function withdrawAllStakedtokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xdb189261133fd7647d3308512b693b47bed44004cac80fb59aa64b63a231e2c][1][address(msg.sender)].field_0:
        revert with 0, 'STAKING:: Caller is not a trusty'
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalStakedToken = 1
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit withdrawStakedtokens(ext_call.return_data[0], arg1);
}

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xee33494882c15ef16fd46d90287d1d71c5808d5681b5d0ee0567fbc8f9b0100b][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'STAKING::setRewardPerBlock: Caller is not a rewardPerBlockSetter'
    if block.number > lastUpdatedBlock:
        if block.number < lastUpdatedBlock:
            revert with 'NH{q', 17
        if block.number - lastUpdatedBlock and rewardPerBlock > -1 / block.number - lastUpdatedBlock:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock) and scale > -1 / (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock):
            revert with 'NH{q', 17
        if not totalStakedToken:
            revert with 'NH{q', 18
        if rewardTillNowPerToken > !((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken):
            revert with 'NH{q', 17
        rewardTillNowPerToken += (block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken
        lastUpdatedBlock = block.number
    emit RewardPerBlockChanged(rewardPerBlock, arg1);
    rewardPerBlock = arg1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        if roleAdmin[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        if roleAdmin[arg1][1][address(arg2)].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        if 1 > !(roleAdmin[arg1][1][address(arg2)].field_0 - 1):
            revert with 'NH{q', 17
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        if not roleAdmin[arg1].field_0:
            revert with 'NH{q', 49
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function withdrawParticleCollector() payable {
    if daoShare > !earlyFoundersShare:
        revert with 'NH{q', 17
    if particleCollector and daoShare > -1 / particleCollector:
        revert with 'NH{q', 17
    if not daoShare + earlyFoundersShare:
        revert with 'NH{q', 18
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xb4f56b26 with:
         gas gas_remaining wei
        args daoWalletAddress, particleCollector * daoShare / daoShare + earlyFoundersShare
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if daoShare > !earlyFoundersShare:
        revert with 'NH{q', 17
    if particleCollector and earlyFoundersShare > -1 / particleCollector:
        revert with 'NH{q', 17
    if not daoShare + earlyFoundersShare:
        revert with 'NH{q', 18
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xb4f56b26 with:
         gas gas_remaining wei
        args earlyFoundersWalletAddress, particleCollector * earlyFoundersShare / daoShare + earlyFoundersShare
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    particleCollector = 0
    emit WithdrawParticleCollectorAmount(particleCollector * earlyFoundersShare / daoShare + earlyFoundersShare, particleCollector * daoShare / daoShare + earlyFoundersShare);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        if roleAdmin[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        if roleAdmin[arg1][1][address(arg2)].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        if 1 > !(roleAdmin[arg1][1][address(arg2)].field_0 - 1):
            revert with 'NH{q', 17
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        if not roleAdmin[arg1].field_0:
            revert with 'NH{q', 49
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setShares(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xdb189261133fd7647d3308512b693b47bed44004cac80fb59aa64b63a231e2c][1][address(msg.sender)].field_0:
        revert with 0, 'STAKING:: Caller is not a trusty'
    if daoShare > !earlyFoundersShare:
        revert with 'NH{q', 17
    if particleCollector and daoShare > -1 / particleCollector:
        revert with 'NH{q', 17
    if not daoShare + earlyFoundersShare:
        revert with 'NH{q', 18
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xb4f56b26 with:
         gas gas_remaining wei
        args daoWalletAddress, particleCollector * daoShare / daoShare + earlyFoundersShare
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if daoShare > !earlyFoundersShare:
        revert with 'NH{q', 17
    if particleCollector and earlyFoundersShare > -1 / particleCollector:
        revert with 'NH{q', 17
    if not daoShare + earlyFoundersShare:
        revert with 'NH{q', 18
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xb4f56b26 with:
         gas gas_remaining wei
        args earlyFoundersWalletAddress, particleCollector * earlyFoundersShare / daoShare + earlyFoundersShare
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    particleCollector = 0
    emit WithdrawParticleCollectorAmount(particleCollector * earlyFoundersShare / daoShare + earlyFoundersShare, particleCollector * daoShare / daoShare + earlyFoundersShare);
    daoShare = arg1
    earlyFoundersShare = arg2
    emit SharesSet(arg1, arg2);
}

function depositFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if block.number > lastUpdatedBlock:
        if block.number < lastUpdatedBlock:
            revert with 'NH{q', 17
        if block.number - lastUpdatedBlock and rewardPerBlock > -1 / block.number - lastUpdatedBlock:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock) and scale > -1 / (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock):
            revert with 'NH{q', 17
        if not totalStakedToken:
            revert with 'NH{q', 18
        if rewardTillNowPerToken > !((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken):
            revert with 'NH{q', 17
        rewardTillNowPerToken += (block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken
        lastUpdatedBlock = block.number
    if users[address(arg1)].field_0:
        if users[address(arg1)].field_0 and rewardTillNowPerToken > -1 / users[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if users[address(arg1)].field_0 * rewardTillNowPerToken / scale < users[address(arg1)].field_256:
            revert with 'NH{q', 17
        if daoShare > !earlyFoundersShare:
            revert with 'NH{q', 17
        if (users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - users[address(arg1)].field_256 and daoShare + earlyFoundersShare > -1 / (users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - users[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if (users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - users[address(arg1)].field_256 < (daoShare * users[address(arg1)].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[address(arg1)].field_256) - (earlyFoundersShare * users[address(arg1)].field_256) / scale:
            revert with 'NH{q', 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xb4f56b26 with:
             gas gas_remaining wei
            args address(arg1), (users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - users[address(arg1)].field_256 - ((daoShare * users[address(arg1)].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[address(arg1)].field_256) - (earlyFoundersShare * users[address(arg1)].field_256) / scale)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardClaimed(address(arg1), (users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - users[address(arg1)].field_256);
    if users[address(arg1)].field_0 > !arg2:
        revert with 'NH{q', 17
    users[address(arg1)].field_0 += arg2
    if users[address(arg1)].field_0 + arg2 and rewardTillNowPerToken > -1 / users[address(arg1)].field_0 + arg2:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    users[address(arg1)].field_256 = (users[address(arg1)].field_0 * rewardTillNowPerToken) + (arg2 * rewardTillNowPerToken) / scale
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalStakedToken > !arg2:
        revert with 'NH{q', 17
    totalStakedToken += arg2
    emit Deposit(address(arg1), arg2);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number > lastUpdatedBlock:
        if block.number < lastUpdatedBlock:
            revert with 'NH{q', 17
        if block.number - lastUpdatedBlock and rewardPerBlock > -1 / block.number - lastUpdatedBlock:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock) and scale > -1 / (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock):
            revert with 'NH{q', 17
        if not totalStakedToken:
            revert with 'NH{q', 18
        if rewardTillNowPerToken > !((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken):
            revert with 'NH{q', 17
        rewardTillNowPerToken += (block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken
        lastUpdatedBlock = block.number
    if users[address(msg.sender)].field_0:
        if users[address(msg.sender)].field_0 and rewardTillNowPerToken > -1 / users[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale < users[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if daoShare > !earlyFoundersShare:
            revert with 'NH{q', 17
        if (users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) - users[address(msg.sender)].field_256 and daoShare + earlyFoundersShare > -1 / (users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) - users[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if (users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) - users[address(msg.sender)].field_256 < (daoShare * users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[address(msg.sender)].field_256) - (earlyFoundersShare * users[address(msg.sender)].field_256) / scale:
            revert with 'NH{q', 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xb4f56b26 with:
             gas gas_remaining wei
            args msg.sender, (users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) - users[address(msg.sender)].field_256 - ((daoShare * users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[address(msg.sender)].field_256) - (earlyFoundersShare * users[address(msg.sender)].field_256) / scale)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RewardClaimed(msg.sender, (users[address(msg.sender)].field_0 * rewardTillNowPerToken / scale) - users[address(msg.sender)].field_256);
    if users[address(msg.sender)].field_0 > !arg1:
        revert with 'NH{q', 17
    users[address(msg.sender)].field_0 += arg1
    if users[address(msg.sender)].field_0 + arg1 and rewardTillNowPerToken > -1 / users[address(msg.sender)].field_0 + arg1:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    users[address(msg.sender)].field_256 = (users[address(msg.sender)].field_0 * rewardTillNowPerToken) + (arg1 * rewardTillNowPerToken) / scale
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalStakedToken > !arg1:
        revert with 'NH{q', 17
    totalStakedToken += arg1
    emit Deposit(msg.sender, arg1);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastUpdatedBlock:
        if users[address(arg1)].field_0 and rewardTillNowPerToken > -1 / users[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if users[address(arg1)].field_0 * rewardTillNowPerToken / scale < users[address(arg1)].field_256:
            revert with 'NH{q', 17
        if daoShare > !earlyFoundersShare:
            revert with 'NH{q', 17
        if 10^18 < daoShare + earlyFoundersShare:
            revert with 'NH{q', 17
        if (users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - users[address(arg1)].field_256 and -daoShare + -earlyFoundersShare + 10^18 > -1 / (users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - users[address(arg1)].field_256:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        return ((10^18 * users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - (earlyFoundersShare * users[address(arg1)].field_0 * rewardTillNowPerToken / scale) - (10^18 * users[address(arg1)].field_256) + (daoShare * users[address(arg1)].field_256) + (earlyFoundersShare * users[address(arg1)].field_256) / scale)
    if block.number < lastUpdatedBlock:
        revert with 'NH{q', 17
    if block.number - lastUpdatedBlock and rewardPerBlock > -1 / block.number - lastUpdatedBlock:
        revert with 'NH{q', 17
    if (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock) and scale > -1 / (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock):
        revert with 'NH{q', 17
    if not totalStakedToken:
        revert with 'NH{q', 18
    if rewardTillNowPerToken > !((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken):
        revert with 'NH{q', 17
    if users[address(arg1)].field_0 and rewardTillNowPerToken + ((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken) > -1 / users[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    if (rewardTillNowPerToken * users[address(arg1)].field_0) + ((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken * users[address(arg1)].field_0) / scale < users[address(arg1)].field_256:
        revert with 'NH{q', 17
    if daoShare > !earlyFoundersShare:
        revert with 'NH{q', 17
    if 10^18 < daoShare + earlyFoundersShare:
        revert with 'NH{q', 17
    if ((rewardTillNowPerToken * users[address(arg1)].field_0) + ((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken * users[address(arg1)].field_0) / scale) - users[address(arg1)].field_256 and -daoShare + -earlyFoundersShare + 10^18 > -1 / ((rewardTillNowPerToken * users[address(arg1)].field_0) + ((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken * users[address(arg1)].field_0) / scale) - users[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    return ((10^18 * (rewardTillNowPerToken * users[address(arg1)].field_0) + ((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken * users[address(arg1)].field_0) / scale) - (daoShare * (rewardTillNowPerToken * users[address(arg1)].field_0) + ((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken * users[address(arg1)].field_0) / scale) - (earlyFoundersShare * (rewardTillNowPerToken * users[address(arg1)].field_0) + ((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken * users[address(arg1)].field_0) / scale) - (10^18 * users[address(arg1)].field_256) + (daoShare * users[address(arg1)].field_256) + (earlyFoundersShare * users[address(arg1)].field_256) / scale)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > users[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'STAKING::withdraw: withdraw amount exceeds deposited amount'
    if block.number > lastUpdatedBlock:
        if block.number < lastUpdatedBlock:
            revert with 'NH{q', 17
        if block.number - lastUpdatedBlock and rewardPerBlock > -1 / block.number - lastUpdatedBlock:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock) and scale > -1 / (block.number * rewardPerBlock) - (lastUpdatedBlock * rewardPerBlock):
            revert with 'NH{q', 17
        if not totalStakedToken:
            revert with 'NH{q', 18
        if rewardTillNowPerToken > !((block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken):
            revert with 'NH{q', 17
        rewardTillNowPerToken += (block.number * rewardPerBlock * scale) - (lastUpdatedBlock * rewardPerBlock * scale) / totalStakedToken
        lastUpdatedBlock = block.number
    if users[msg.sender].field_0 and rewardTillNowPerToken > -1 / users[msg.sender].field_0:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    if users[msg.sender].field_0 * rewardTillNowPerToken / scale < users[msg.sender].field_256:
        revert with 'NH{q', 17
    if daoShare > !earlyFoundersShare:
        revert with 'NH{q', 17
    if (users[msg.sender].field_0 * rewardTillNowPerToken / scale) - users[msg.sender].field_256 and daoShare + earlyFoundersShare > -1 / (users[msg.sender].field_0 * rewardTillNowPerToken / scale) - users[msg.sender].field_256:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    if (users[msg.sender].field_0 * rewardTillNowPerToken / scale) - users[msg.sender].field_256 < (daoShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[msg.sender].field_256) - (earlyFoundersShare * users[msg.sender].field_256) / scale:
        revert with 'NH{q', 17
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xb4f56b26 with:
         gas gas_remaining wei
        args msg.sender, (users[msg.sender].field_0 * rewardTillNowPerToken / scale) - users[msg.sender].field_256 - ((daoShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[msg.sender].field_256) - (earlyFoundersShare * users[msg.sender].field_256) / scale)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RewardClaimed(msg.sender, (users[msg.sender].field_0 * rewardTillNowPerToken / scale) - users[msg.sender].field_256);
    if daoShare > !earlyFoundersShare:
        revert with 'NH{q', 17
    if (users[msg.sender].field_0 * rewardTillNowPerToken / scale) - users[msg.sender].field_256 and daoShare + earlyFoundersShare > -1 / (users[msg.sender].field_0 * rewardTillNowPerToken / scale) - users[msg.sender].field_256:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    if particleCollector > !((daoShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[msg.sender].field_256) - (earlyFoundersShare * users[msg.sender].field_256) / scale):
        revert with 'NH{q', 17
    particleCollector += (daoShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) + (earlyFoundersShare * users[msg.sender].field_0 * rewardTillNowPerToken / scale) - (daoShare * users[msg.sender].field_256) - (earlyFoundersShare * users[msg.sender].field_256) / scale
    if arg1:
        if users[msg.sender].field_0 < arg1:
            revert with 'NH{q', 17
        users[msg.sender].field_0 -= arg1
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalStakedToken < arg1:
            revert with 'NH{q', 17
        totalStakedToken -= arg1
        emit Withdraw(msg.sender, arg1);
    if users[msg.sender].field_0 and rewardTillNowPerToken > -1 / users[msg.sender].field_0:
        revert with 'NH{q', 17
    if not scale:
        revert with 'NH{q', 18
    users[msg.sender].field_256 = users[msg.sender].field_0 * rewardTillNowPerToken / scale
}



}

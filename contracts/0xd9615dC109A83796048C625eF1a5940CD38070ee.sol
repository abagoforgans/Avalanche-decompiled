contract main {




// =====================  Runtime code  =====================


const COMMUNITY_FUND_POOL_ALLOCATION = 4200 * 10^18

const VESTING_DURATION = (2 * 3600 * 24 * 3600)

const DEV_FUND_POOL_ALLOCATION = 4200 * 10^18

const FARMING_POOL_REWARD_ALLOCATION = 33600 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
address operatorAddress;
uint256 startTime;
uint256 endTime;
uint256 communityFundRewardRate;
uint256 devFundRewardRate;
address communityFundAddress;
address devFundAddress;
uint256 communityFundLastClaimed;
uint256 devFundLastClaimed;
uint8 rewardPoolDistributed;

function communityFund() payable {
    return communityFundAddress
}

function devFundLastClaimed() payable {
    return devFundLastClaimed
}

function totalSupply() payable {
    return totalSupply
}

function devFundRewardRate() payable {
    return devFundRewardRate
}

function decimals() payable {
    return decimals
}

function endTime() payable {
    return endTime
}

function devFund() payable {
    return devFundAddress
}

function communityFundRewardRate() payable {
    return communityFundRewardRate
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function rewardPoolDistributed() payable {
    return bool(rewardPoolDistributed)
}

function communityFundLastClaimed() payable {
    return communityFundLastClaimed
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTreasuryFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devFundAddress != msg.sender:
        revert with 0, '!dev'
    communityFundAddress = arg1
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devFundAddress != msg.sender:
        revert with 0, '!dev'
    if not arg1:
        revert with 0, 'zero'
    devFundAddress = arg1
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: zero address given for new operator'
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distributeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if rewardPoolDistributed:
        revert with 0, 'only can distribute once'
    if not arg1:
        revert with 0, '!_farmingIncentiveFund'
    rewardPoolDistributed = 1
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffffff8e28a54646dfaffffff:
        revert with 0, 17
    if totalSupply + 33600 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 33600 * 10^18
    if balanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffffff8e28a54646dfaffffff:
        revert with 0, 17
    if balanceOf[address(arg1)] + 33600 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 33600 * 10^18
    emit Transfer(33600 * 10^18, 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28] >> 32, 0
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30] >> 16, 0
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function unclaimedDevFund() payable {
    if block.timestamp <= endTime:
        if devFundLastClaimed >= block.timestamp:
            return 0
        if devFundLastClaimed > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < devFundLastClaimed:
            revert with 0, 17
        if not block.timestamp - devFundLastClaimed:
            return 0
        if block.timestamp - devFundLastClaimed and devFundRewardRate > -1 / block.timestamp - devFundLastClaimed:
            revert with 0, 17
        if not block.timestamp - devFundLastClaimed:
            revert with 0, 18
        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return ((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
    if devFundLastClaimed >= endTime:
        return 0
    if devFundLastClaimed > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if endTime < devFundLastClaimed:
        revert with 0, 17
    if not endTime - devFundLastClaimed:
        return 0
    if endTime - devFundLastClaimed and devFundRewardRate > -1 / endTime - devFundLastClaimed:
        revert with 0, 17
    if not endTime - devFundLastClaimed:
        revert with 0, 18
    if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return ((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
}

function unclaimedTreasuryFund() payable {
    if block.timestamp <= endTime:
        if communityFundLastClaimed >= block.timestamp:
            return 0
        if communityFundLastClaimed > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < communityFundLastClaimed:
            revert with 0, 17
        if not block.timestamp - communityFundLastClaimed:
            return 0
        if block.timestamp - communityFundLastClaimed and communityFundRewardRate > -1 / block.timestamp - communityFundLastClaimed:
            revert with 0, 17
        if not block.timestamp - communityFundLastClaimed:
            revert with 0, 18
        if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / block.timestamp - communityFundLastClaimed != communityFundRewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return ((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate))
    if communityFundLastClaimed >= endTime:
        return 0
    if communityFundLastClaimed > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if endTime < communityFundLastClaimed:
        revert with 0, 17
    if not endTime - communityFundLastClaimed:
        return 0
    if endTime - communityFundLastClaimed and communityFundRewardRate > -1 / endTime - communityFundLastClaimed:
        revert with 0, 17
    if not endTime - communityFundLastClaimed:
        revert with 0, 18
    if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / endTime - communityFundLastClaimed != communityFundRewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return ((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate))
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function claimRewards() payable {
    if block.timestamp <= endTime:
        if communityFundLastClaimed < block.timestamp:
            if communityFundLastClaimed > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < communityFundLastClaimed:
                revert with 0, 17
            if block.timestamp - communityFundLastClaimed:
                if block.timestamp - communityFundLastClaimed and communityFundRewardRate > -1 / block.timestamp - communityFundLastClaimed:
                    revert with 0, 17
                if not block.timestamp - communityFundLastClaimed:
                    revert with 0, 18
                if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / block.timestamp - communityFundLastClaimed != communityFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) > 0:
                    if communityFundAddress:
                        if not communityFundAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)):
                            revert with 0, 17
                        if totalSupply + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        if balanceOf[stor11] > !((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)):
                            revert with 0, 17
                        if balanceOf[stor11] + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] = balanceOf[stor11] + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        emit Transfer(((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)), 0, communityFundAddress);
                        communityFundLastClaimed = block.timestamp
    else:
        if communityFundLastClaimed < endTime:
            if communityFundLastClaimed > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if endTime < communityFundLastClaimed:
                revert with 0, 17
            if endTime - communityFundLastClaimed:
                if endTime - communityFundLastClaimed and communityFundRewardRate > -1 / endTime - communityFundLastClaimed:
                    revert with 0, 17
                if not endTime - communityFundLastClaimed:
                    revert with 0, 18
                if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / endTime - communityFundLastClaimed != communityFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) > 0:
                    if communityFundAddress:
                        if not communityFundAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)):
                            revert with 0, 17
                        if totalSupply + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        if balanceOf[stor11] > !((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)):
                            revert with 0, 17
                        if balanceOf[stor11] + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] = balanceOf[stor11] + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        emit Transfer(((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)), 0, communityFundAddress);
                        communityFundLastClaimed = block.timestamp
    if block.timestamp <= endTime:
        if devFundLastClaimed < block.timestamp:
            if devFundLastClaimed > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < devFundLastClaimed:
                revert with 0, 17
            if block.timestamp - devFundLastClaimed:
                if block.timestamp - devFundLastClaimed and devFundRewardRate > -1 / block.timestamp - devFundLastClaimed:
                    revert with 0, 17
                if not block.timestamp - devFundLastClaimed:
                    revert with 0, 18
                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                    if devFundAddress:
                        if not devFundAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                            revert with 0, 17
                        if totalSupply + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        if balanceOf[stor12] > !((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                            revert with 0, 17
                        if balanceOf[stor12] + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < balanceOf[stor12]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor12] = balanceOf[stor12] + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        emit Transfer(((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                        devFundLastClaimed = block.timestamp
    else:
        if devFundLastClaimed < endTime:
            if devFundLastClaimed > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if endTime < devFundLastClaimed:
                revert with 0, 17
            if endTime - devFundLastClaimed:
                if endTime - devFundLastClaimed and devFundRewardRate > -1 / endTime - devFundLastClaimed:
                    revert with 0, 17
                if not endTime - devFundLastClaimed:
                    revert with 0, 18
                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                    if devFundAddress:
                        if not devFundAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                            revert with 0, 17
                        if totalSupply + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        if balanceOf[stor12] > !((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)):
                            revert with 0, 17
                        if balanceOf[stor12] + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < balanceOf[stor12]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor12] = balanceOf[stor12] + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        emit Transfer(((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                        devFundLastClaimed = block.timestamp
}



}

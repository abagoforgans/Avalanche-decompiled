contract main {




// =====================  Runtime code  =====================


const sub_2a307e5b(?) = 100 * 10^18

const sub_ca1beedf(?) = 5000 * 10^18

const COMMUNITY_FUND_POOL_ALLOCATION = 5000 * 10^18

const VESTING_DURATION = (8760 * 24 * 3600)

const DEV_FUND_POOL_ALLOCATION = 5000 * 10^18

const FARMING_POOL_REWARD_ALLOCATION = 35000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address operatorAddress;
uint256 startTime;
uint256 endTime;
uint256 communityFundRewardRate;
uint256 devFundRewardRate;
uint256 sub_75dd274b;
address communityFundAddress;
address devFundAddress;
address sub_624d99deAddress;
uint256 communityFundLastClaimed;
uint256 devFundLastClaimed;
uint256 sub_1b8e8380;
uint8 rewardPoolDistributed;
uint256 taxRate;
address sub_c3bdf613Address;
mapping of uint8 stor21;
address sub_3e5f13d4Address;

function communityFund() payable {
    return communityFundAddress
}

function devFundLastClaimed() payable {
    return devFundLastClaimed
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_1b8e8380(?) payable {
    return sub_1b8e8380
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

function sub_3e5f13d4(?) payable {
    return sub_3e5f13d4Address
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

function sub_624d99de(?) payable {
    return sub_624d99deAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_75dd274b(?) payable {
    return sub_75dd274b
}

function taxRate() payable {
    return taxRate
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function rewardPoolDistributed() payable {
    return bool(rewardPoolDistributed)
}

function communityFundLastClaimed() payable {
    return communityFundLastClaimed
}

function sub_c3bdf613(?) payable {
    return sub_c3bdf613Address
}

function excludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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
    if devFundAddress != msg.sender:
        revert with 0, '!dev'
    communityFundAddress = arg1
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    if devFundAddress != msg.sender:
        revert with 0, '!dev'
    if not arg1:
        revert with 0, 'zero'
    devFundAddress = arg1
}

function sub_69356d47(?) payable {
    require calldata.size - 4 >= 32
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6574617820636f6c6c6563746f722061646472657373206d757374206265206e6f6e2d7a65726f20616464726573,
                    mem[210 len 18]
    sub_c3bdf613Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x736f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function setTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if arg1 >= 500:
        revert with 0, 'tax equal or bigger to 5%'
    taxRate = arg1
}

function excludeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if stor21[address(arg1)]:
        revert with 0, 'address can't be excluded'
    stor21[address(arg1)] = 1
    return 1
}

function includeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if not stor21[address(arg1)]:
        revert with 0, 'address can't be included'
    stor21[address(arg1)] = 0
    return 1
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_3f07d76a(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65746178206f666669636520616464726573732063616e6e6f74206265203020616464726573,
                    mem[202 len 26]
    sub_3e5f13d4Address = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7345524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distributeReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if rewardPoolDistributed:
        revert with 0, 'only can distribute once'
    if not arg1:
        revert with 0, '!_farmingIncentiveFund'
    if not arg2:
        revert with 0, '!_powderGenesisPool'
    rewardPoolDistributed = 1
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + 35000 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 35000 * 10^18
    if balanceOf[address(arg1)] + 35000 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 35000 * 10^18
    emit Transfer(35000 * 10^18, 0, arg1);
    if not arg2:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + 100 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 100 * 10^18
    if balanceOf[address(arg2)] + 100 * 10^18 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += 100 * 10^18
    emit Transfer(100 * 10^18, 0, arg2);
}

function sub_17322581(?) payable {
    if block.timestamp <= endTime:
        if sub_1b8e8380 >= block.timestamp:
            return 0
        if sub_1b8e8380 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_1b8e8380:
            return 0
        require block.timestamp - sub_1b8e8380
        if (block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) / block.timestamp - sub_1b8e8380 != sub_75dd274b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b))
    if sub_1b8e8380 >= endTime:
        return 0
    if sub_1b8e8380 > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - sub_1b8e8380:
        return 0
    require endTime - sub_1b8e8380
    if (endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) / endTime - sub_1b8e8380 != sub_75dd274b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b))
}

function unclaimedDevFund() payable {
    if block.timestamp <= endTime:
        if devFundLastClaimed >= block.timestamp:
            return 0
        if devFundLastClaimed > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - devFundLastClaimed:
            return 0
        require block.timestamp - devFundLastClaimed
        if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
    if devFundLastClaimed >= endTime:
        return 0
    if devFundLastClaimed > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - devFundLastClaimed:
        return 0
    require endTime - devFundLastClaimed
    if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate))
}

function unclaimedTreasuryFund() payable {
    if block.timestamp <= endTime:
        if communityFundLastClaimed >= block.timestamp:
            return 0
        if communityFundLastClaimed > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - communityFundLastClaimed:
            return 0
        require block.timestamp - communityFundLastClaimed
        if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / block.timestamp - communityFundLastClaimed != communityFundRewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate))
    if communityFundLastClaimed >= endTime:
        return 0
    if communityFundLastClaimed > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - communityFundLastClaimed:
        return 0
    require endTime - communityFundLastClaimed
    if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / endTime - communityFundLastClaimed != communityFundRewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate))
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not taxRate:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if stor21[address(arg1)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not arg3:
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not sub_c3bdf613Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if 0 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                if balanceOf[stor20] < balanceOf[stor20]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, arg1, sub_c3bdf613Address);
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[262 len 26],
                                mem[314 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                require arg3
                if arg3 * taxRate / arg3 != taxRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 * taxRate / 10000 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not sub_c3bdf613Address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 * taxRate / 10000 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3 * taxRate / 10000
                if balanceOf[stor20] + (arg3 * taxRate / 10000) < balanceOf[stor20]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor20] += arg3 * taxRate / 10000
                emit Transfer((arg3 * taxRate / 10000), arg1, sub_c3bdf613Address);
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                if arg3 - (arg3 * taxRate / 10000) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[262 len 26],
                                mem[314 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxRate / 10000)
                if balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000)
                emit Transfer((arg3 - (arg3 * taxRate / 10000)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[360 len 24],
                            mem[408 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function claimRewards() payable {
    if block.timestamp <= endTime:
        if communityFundLastClaimed < block.timestamp:
            if communityFundLastClaimed > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - communityFundLastClaimed:
                require block.timestamp - communityFundLastClaimed
                if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / block.timestamp - communityFundLastClaimed != communityFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) > 0:
                    if communityFundAddress:
                        if totalSupply + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        if balanceOf[stor12] + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < balanceOf[stor12]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor12] = balanceOf[stor12] + (block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        emit Transfer(((block.timestamp * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)), 0, communityFundAddress);
                        communityFundLastClaimed = block.timestamp
    else:
        if communityFundLastClaimed < endTime:
            if communityFundLastClaimed > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if endTime - communityFundLastClaimed:
                require endTime - communityFundLastClaimed
                if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) / endTime - communityFundLastClaimed != communityFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) > 0:
                    if communityFundAddress:
                        if totalSupply + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        if balanceOf[stor12] + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate) < balanceOf[stor12]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor12] = balanceOf[stor12] + (endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)
                        emit Transfer(((endTime * communityFundRewardRate) - (communityFundLastClaimed * communityFundRewardRate)), 0, communityFundAddress);
                        communityFundLastClaimed = block.timestamp
    if block.timestamp <= endTime:
        if devFundLastClaimed < block.timestamp:
            if devFundLastClaimed > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - devFundLastClaimed:
                require block.timestamp - devFundLastClaimed
                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / block.timestamp - devFundLastClaimed != devFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                    if devFundAddress:
                        if totalSupply + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        if balanceOf[stor13] + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < balanceOf[stor13]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor13] = balanceOf[stor13] + (block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        emit Transfer(((block.timestamp * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                        devFundLastClaimed = block.timestamp
    else:
        if devFundLastClaimed < endTime:
            if devFundLastClaimed > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if endTime - devFundLastClaimed:
                require endTime - devFundLastClaimed
                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) / endTime - devFundLastClaimed != devFundRewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) > 0:
                    if devFundAddress:
                        if totalSupply + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        if balanceOf[stor13] + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate) < balanceOf[stor13]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor13] = balanceOf[stor13] + (endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)
                        emit Transfer(((endTime * devFundRewardRate) - (devFundLastClaimed * devFundRewardRate)), 0, devFundAddress);
                        devFundLastClaimed = block.timestamp
    if block.timestamp <= endTime:
        if sub_1b8e8380 < block.timestamp:
            if sub_1b8e8380 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - sub_1b8e8380:
                require block.timestamp - sub_1b8e8380
                if (block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) / block.timestamp - sub_1b8e8380 != sub_75dd274b:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) > 0:
                    if sub_624d99deAddress:
                        if totalSupply + (block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b)
                        if balanceOf[stor14] + (block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) < balanceOf[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor14] = balanceOf[stor14] + (block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b)
                        emit Transfer(((block.timestamp * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b)), 0, sub_624d99deAddress);
                        sub_1b8e8380 = block.timestamp
    else:
        if sub_1b8e8380 < endTime:
            if sub_1b8e8380 > endTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if endTime - sub_1b8e8380:
                require endTime - sub_1b8e8380
                if (endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) / endTime - sub_1b8e8380 != sub_75dd274b:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) > 0:
                    if sub_624d99deAddress:
                        if totalSupply + (endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b)
                        if balanceOf[stor14] + (endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b) < balanceOf[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor14] = balanceOf[stor14] + (endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b)
                        emit Transfer(((endTime * sub_75dd274b) - (sub_1b8e8380 * sub_75dd274b)), 0, sub_624d99deAddress);
                        sub_1b8e8380 = block.timestamp
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - drawWinner(uint256 arg1)
#
array of address stor0;
address rewardWalletAddress;
array of address players;
uint256 totalDeposited;
uint256 latestRound;
address lendingPoolAddress;
address sub_b8ab24bdAddress;
address assetAddress;
address sub_48996015Address;
address sub_36b43005Address;
address sub_dad2b06eAddress;
address WAVAXAddress;
address sub_34496167Address;
uint256 sub_cde8e5d3;
uint8 stor14;
uint256 stor14; offset 8
uint256 sub_7796ff37;
uint8 stor15;
uint256 stor15; offset 8
uint256 sub_2f6236be;
uint8 stor16;
uint256 stor16; offset 8
uint256 sub_7e72b29f;
uint32 stor17;
uint256 stor17; offset 24
uint256 sub_0b4b41bc;
uint256 sub_84beb6e6;
address treasuryAddress;
address rewardTokenAddress;
uint256 sub_f12c8e0d;
uint256 sub_7f94bf16;
uint256 lastRewardTimestamp;
uint256 sub_a9ac33dd;
address routerAddress;
mapping of struct userInfo;

function sub_0b4b41bc(?) payable {
    return sub_0b4b41bc
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function sub_2f6236be(?) payable {
    return sub_2f6236be
}

function sub_34496167(?) payable {
    return sub_34496167Address
}

function sub_36b43005(?) payable {
    return sub_36b43005Address
}

function asset() payable {
    return assetAddress
}

function sub_48996015(?) payable {
    return sub_48996015Address
}

function treasury() payable {
    return treasuryAddress
}

function latestRound() payable {
    return latestRound
}

function lotteryState() payable {
    require stor0.length.field_160 < 2
    return stor0.length.field_160
}

function WAVAX() payable {
    return WAVAXAddress
}

function sub_7796ff37(?) payable {
    return sub_7796ff37
}

function sub_7e72b29f(?) payable {
    return sub_7e72b29f
}

function sub_7f94bf16(?) payable {
    return sub_7f94bf16
}

function sub_84beb6e6(?) payable {
    return sub_84beb6e6
}

function owner() payable {
    return address(stor0.length)
}

function lendingPool() payable {
    return lendingPoolAddress
}

function sub_a9ac33dd(?) payable {
    return sub_a9ac33dd
}

function sub_b8ab24bd(?) payable {
    return sub_b8ab24bdAddress
}

function sub_cde8e5d3(?) payable {
    return sub_cde8e5d3
}

function sub_dad2b06e(?) payable {
    return sub_dad2b06eAddress
}

function sub_f12c8e0d(?) payable {
    return sub_f12c8e0d
}

function players(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < players.length
    return players[arg1]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function lastRewardTimestamp() payable {
    return lastRewardTimestamp
}

function router() payable {
    return routerAddress
}

function rewardWallet() payable {
    return rewardWalletAddress
}

function totalDeposited() payable {
    return totalDeposited
}

function _fallback() payable {
    revert
}

function sub_6bc6f057(?) payable {
    return (sub_f12c8e0d + sub_7f94bf16)
}

function sub_38bd0014(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cde8e5d3 = arg1
}

function renounceOwnership() payable {
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(stor0.length), 0);
    address(stor0.length) = 0
}

function updateRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function updateTreasuryWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function updateRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardTokenAddress = arg1
}

function updateRewardWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardWalletAddress = arg1
}

function sub_deecf042(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_34496167Address = address(arg1)
}

function sub_326f7f04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17.field_0 % 16777216 = 24 * 3600 * uint8(arg1) % 16777216
    Mask(232, 0, stor17.field_24) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(stor0.length), arg1);
    address(stor0.length) = arg1
}

function interestEarned() payable {
    require ext_code.size(sub_b8ab24bdAddress)
    staticcall sub_b8ab24bdAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (ext_call.return_data[0] - totalDeposited)
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (arg2 - arg1)
}

function sub_f25675e1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1 + arg3 + arg2) != 10000:
        revert with 0, 'total should be 100%'
    uint8(stor15.field_0) = uint8(arg1)
    Mask(248, 0, stor15.field_8) = 0
    uint8(stor14.field_0) = uint8(arg2)
    Mask(248, 0, stor14.field_8) = 0
    uint8(stor16.field_0) = uint8(arg3)
    Mask(248, 0, stor16.field_8) = 0
}

function sub_0cc066af(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1) == sub_b8ab24bdAddress:
        revert with 0, 'Token should not be bAsset'
    if address(arg1) == rewardTokenAddress:
        revert with 0, 'Token should not be rewardToken'
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function expand(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 <= test266151307()
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        idx = 0
        while idx < arg2:
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _26 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[(32 * idx) + 128] = sha3(mem[_26 + 32 len mem[_26]])
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = idx
            _30 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[(32 * idx) + 128] = sha3(mem[_30 + 32 len mem[_30]])
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function pendingTaksh(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= lastRewardTimestamp:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * sub_a9ac33dd / userInfo[address(arg1)].field_0 != sub_a9ac33dd:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * sub_a9ac33dd / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(arg1)].field_256)
    if not totalDeposited:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * sub_a9ac33dd / userInfo[address(arg1)].field_0 != sub_a9ac33dd:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * sub_a9ac33dd / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(arg1)].field_256)
    if lastRewardTimestamp > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - lastRewardTimestamp:
        if totalDeposited <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposited
        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != sub_a9ac33dd + (0 / totalDeposited):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require block.timestamp - lastRewardTimestamp
    if block.timestamp - lastRewardTimestamp / block.timestamp - lastRewardTimestamp != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not block.timestamp - lastRewardTimestamp:
        if totalDeposited <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposited
        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != sub_a9ac33dd + (0 / totalDeposited):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require block.timestamp - lastRewardTimestamp
    if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d + sub_7f94bf16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
        if totalDeposited <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposited
        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != sub_a9ac33dd + (0 / totalDeposited):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
    if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
        if totalDeposited <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposited
        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != sub_a9ac33dd + (0 / totalDeposited):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_a9ac33dd * userInfo[address(arg1)].field_0) + (0 / totalDeposited * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
    if (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalDeposited <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalDeposited
    if sub_a9ac33dd + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited) < sub_a9ac33dd:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    require userInfo[address(arg1)].field_0
    if (sub_a9ac33dd * userInfo[address(arg1)].field_0) + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != sub_a9ac33dd + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[address(arg1)].field_256 > (sub_a9ac33dd * userInfo[address(arg1)].field_0) + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((sub_a9ac33dd * userInfo[address(arg1)].field_0) + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function updatePool() payable {
    require stor0.length.field_160 <= 1
    if stor0.length.field_160 == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot do any TX during Calculation'
    if block.timestamp > lastRewardTimestamp:
        if totalDeposited:
            if sub_f12c8e0d + sub_7f94bf16:
                if lastRewardTimestamp > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastRewardTimestamp:
                    require ext_code.size(rewardWalletAddress)
                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposited <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposited
                    if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_a9ac33dd += 0 / totalDeposited
                else:
                    require block.timestamp - lastRewardTimestamp
                    if block.timestamp - lastRewardTimestamp / block.timestamp - lastRewardTimestamp != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not block.timestamp - lastRewardTimestamp:
                        if not block.timestamp - lastRewardTimestamp:
                            require ext_code.size(rewardWalletAddress)
                            call rewardWalletAddress.requestReward(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            require block.timestamp - lastRewardTimestamp
                            if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                require ext_code.size(rewardWalletAddress)
                                call rewardWalletAddress.requestReward(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                require ext_code.size(rewardWalletAddress)
                                call rewardWalletAddress.requestReward(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposited <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposited
                        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9ac33dd += 0 / totalDeposited
                    else:
                        require block.timestamp - lastRewardTimestamp
                        if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d + sub_7f94bf16:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                            if not block.timestamp - lastRewardTimestamp:
                                require ext_code.size(rewardWalletAddress)
                                call rewardWalletAddress.requestReward(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require block.timestamp - lastRewardTimestamp
                                if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposited <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalDeposited
                            if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a9ac33dd += 0 / totalDeposited
                        else:
                            require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                            if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not block.timestamp - lastRewardTimestamp:
                                require ext_code.size(rewardWalletAddress)
                                call rewardWalletAddress.requestReward(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require block.timestamp - lastRewardTimestamp
                                if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                                if totalDeposited <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalDeposited
                                if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_a9ac33dd += 0 / totalDeposited
                            else:
                                require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                                if (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalDeposited <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalDeposited
                                if sub_a9ac33dd + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited) < sub_a9ac33dd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_a9ac33dd += (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited
        lastRewardTimestamp = block.timestamp
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor0.length.field_160 <= 1
    if stor0.length.field_160 == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot do any TX during Calculation'
    if latestRound:
        require stor0.length.field_160 <= 1
        if stor0.length.field_160 == 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot do any TX during Calculation'
        if block.timestamp > lastRewardTimestamp:
            if totalDeposited:
                if sub_f12c8e0d + sub_7f94bf16:
                    if lastRewardTimestamp > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - lastRewardTimestamp:
                        require ext_code.size(rewardWalletAddress)
                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposited <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposited
                        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9ac33dd += 0 / totalDeposited
                    else:
                        require block.timestamp - lastRewardTimestamp
                        if block.timestamp - lastRewardTimestamp / block.timestamp - lastRewardTimestamp != 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not block.timestamp - lastRewardTimestamp:
                            if not block.timestamp - lastRewardTimestamp:
                                require ext_code.size(rewardWalletAddress)
                                call rewardWalletAddress.requestReward(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require block.timestamp - lastRewardTimestamp
                                if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposited <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalDeposited
                            if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a9ac33dd += 0 / totalDeposited
                        else:
                            require block.timestamp - lastRewardTimestamp
                            if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d + sub_7f94bf16:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                                if not block.timestamp - lastRewardTimestamp:
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require block.timestamp - lastRewardTimestamp
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                    else:
                                        require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                        if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposited <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalDeposited
                                if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_a9ac33dd += 0 / totalDeposited
                            else:
                                require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                                if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not block.timestamp - lastRewardTimestamp:
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require block.timestamp - lastRewardTimestamp
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                    else:
                                        require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                        if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                                    if totalDeposited <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposited
                                    if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a9ac33dd += 0 / totalDeposited
                                else:
                                    require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                                    if (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposited <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposited
                                    if sub_a9ac33dd + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited) < sub_a9ac33dd:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a9ac33dd += (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited
            lastRewardTimestamp = block.timestamp
    sub_f12c8e0d = arg1
    emit UpdateEmission(arg1);
}

function sub_5b65f8fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0.length.field_160 <= 1
    if stor0.length.field_160:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't deposit while calculating the winner'
    if not latestRound:
        totalDeposited += arg1
        if not userInfo[address(msg.sender)].field_0:
            players.length++
            players[players.length] = msg.sender
        if arg1 <= 0:
            if not userInfo[address(msg.sender)].field_0:
                userInfo[address(msg.sender)].field_256 = 0
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
        else:
            require ext_code.size(sub_b8ab24bdAddress)
            call sub_b8ab24bdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[address(msg.sender)].field_0 += arg1
            if not userInfo[address(msg.sender)].field_0:
                userInfo[address(msg.sender)].field_256 = 0
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
    else:
        require stor0.length.field_160 <= 1
        if stor0.length.field_160 == 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot do any TX during Calculation'
        if block.timestamp > lastRewardTimestamp:
            if totalDeposited:
                if sub_f12c8e0d + sub_7f94bf16:
                    if lastRewardTimestamp > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - lastRewardTimestamp:
                        require ext_code.size(rewardWalletAddress)
                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposited <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposited
                        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9ac33dd += 0 / totalDeposited
                    else:
                        require block.timestamp - lastRewardTimestamp
                        if block.timestamp - lastRewardTimestamp / block.timestamp - lastRewardTimestamp != 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not block.timestamp - lastRewardTimestamp:
                            if not block.timestamp - lastRewardTimestamp:
                                require ext_code.size(rewardWalletAddress)
                                call rewardWalletAddress.requestReward(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require block.timestamp - lastRewardTimestamp
                                if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposited <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalDeposited
                            if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a9ac33dd += 0 / totalDeposited
                        else:
                            require block.timestamp - lastRewardTimestamp
                            if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d + sub_7f94bf16:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                                if not block.timestamp - lastRewardTimestamp:
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require block.timestamp - lastRewardTimestamp
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                    else:
                                        require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                        if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposited <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalDeposited
                                if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_a9ac33dd += 0 / totalDeposited
                            else:
                                require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                                if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not block.timestamp - lastRewardTimestamp:
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require block.timestamp - lastRewardTimestamp
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                    else:
                                        require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                        if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                                    if totalDeposited <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposited
                                    if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a9ac33dd += 0 / totalDeposited
                                else:
                                    require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                                    if (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposited <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposited
                                    if sub_a9ac33dd + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited) < sub_a9ac33dd:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a9ac33dd += (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited
            lastRewardTimestamp = block.timestamp
        totalDeposited += arg1
        if not latestRound:
            if not userInfo[address(msg.sender)].field_0:
                players.length++
                players[players.length] = msg.sender
            if arg1 <= 0:
                if not userInfo[address(msg.sender)].field_0:
                    userInfo[address(msg.sender)].field_256 = 0
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
            else:
                require ext_code.size(sub_b8ab24bdAddress)
                call sub_b8ab24bdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[address(msg.sender)].field_0 += arg1
                if not userInfo[address(msg.sender)].field_0:
                    userInfo[address(msg.sender)].field_256 = 0
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                        revert with 0, 'SafeMath: multiplication overflow'
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
        else:
            if userInfo[address(msg.sender)].field_0 <= 0:
                if not userInfo[address(msg.sender)].field_0:
                    players.length++
                    players[players.length] = msg.sender
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                else:
                    require ext_code.size(sub_b8ab24bdAddress)
                    call sub_b8ab24bdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 += arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                            revert with 0, 'SafeMath: multiplication overflow'
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_256 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                        else:
                            require ext_code.size(sub_b8ab24bdAddress)
                            call sub_b8ab24bdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                    else:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'safeTokenTransfer: transfer failed'
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 > 0:
                            require ext_code.size(sub_b8ab24bdAddress)
                            call sub_b8ab24bdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                revert with 0, 'SafeMath: multiplication overflow'
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                        else:
                            require ext_code.size(sub_b8ab24bdAddress)
                            call sub_b8ab24bdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                    else:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'safeTokenTransfer: transfer failed'
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 > 0:
                            require ext_code.size(sub_b8ab24bdAddress)
                            call sub_b8ab24bdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                revert with 0, 'SafeMath: multiplication overflow'
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
    emit Deposit(msg.sender, arg1);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0.length.field_160 <= 1
    if stor0.length.field_160:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't deposit while calculating the winner'
    if not latestRound:
        totalDeposited += arg1
        if not userInfo[address(msg.sender)].field_0:
            players.length++
            players[players.length] = msg.sender
        if arg1 <= 0:
            if not userInfo[address(msg.sender)].field_0:
                userInfo[address(msg.sender)].field_256 = 0
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
        else:
            require ext_code.size(assetAddress)
            call assetAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(assetAddress)
            call assetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args lendingPoolAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args assetAddress, arg1, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[address(msg.sender)].field_0 += arg1
            if not userInfo[address(msg.sender)].field_0:
                userInfo[address(msg.sender)].field_256 = 0
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                    revert with 0, 'SafeMath: multiplication overflow'
                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
    else:
        require stor0.length.field_160 <= 1
        if stor0.length.field_160 == 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot do any TX during Calculation'
        if block.timestamp > lastRewardTimestamp:
            if totalDeposited:
                if sub_f12c8e0d + sub_7f94bf16:
                    if lastRewardTimestamp > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - lastRewardTimestamp:
                        require ext_code.size(rewardWalletAddress)
                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposited <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposited
                        if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9ac33dd += 0 / totalDeposited
                    else:
                        require block.timestamp - lastRewardTimestamp
                        if block.timestamp - lastRewardTimestamp / block.timestamp - lastRewardTimestamp != 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not block.timestamp - lastRewardTimestamp:
                            if not block.timestamp - lastRewardTimestamp:
                                require ext_code.size(rewardWalletAddress)
                                call rewardWalletAddress.requestReward(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require block.timestamp - lastRewardTimestamp
                                if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposited <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalDeposited
                            if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a9ac33dd += 0 / totalDeposited
                        else:
                            require block.timestamp - lastRewardTimestamp
                            if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d + sub_7f94bf16:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                                if not block.timestamp - lastRewardTimestamp:
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require block.timestamp - lastRewardTimestamp
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                    else:
                                        require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                        if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposited <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalDeposited
                                if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_a9ac33dd += 0 / totalDeposited
                            else:
                                require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                                if (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not block.timestamp - lastRewardTimestamp:
                                    require ext_code.size(rewardWalletAddress)
                                    call rewardWalletAddress.requestReward(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require block.timestamp - lastRewardTimestamp
                                    if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / block.timestamp - lastRewardTimestamp != sub_f12c8e0d:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d):
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                    else:
                                        require (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d)
                                        if (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) / (block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d) != 1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        require ext_code.size(rewardWalletAddress)
                                        call rewardWalletAddress.requestReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ((block.timestamp * sub_f12c8e0d) - (lastRewardTimestamp * sub_f12c8e0d))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp):
                                    if totalDeposited <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposited
                                    if sub_a9ac33dd + (0 / totalDeposited) < sub_a9ac33dd:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a9ac33dd += 0 / totalDeposited
                                else:
                                    require (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp)
                                    if (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / (sub_f12c8e0d * block.timestamp) + (sub_7f94bf16 * block.timestamp) - (sub_f12c8e0d * lastRewardTimestamp) - (sub_7f94bf16 * lastRewardTimestamp) != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposited <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposited
                                    if sub_a9ac33dd + ((10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited) < sub_a9ac33dd:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a9ac33dd += (10^12 * sub_f12c8e0d * block.timestamp) + (10^12 * sub_7f94bf16 * block.timestamp) - (10^12 * sub_f12c8e0d * lastRewardTimestamp) - (10^12 * sub_7f94bf16 * lastRewardTimestamp) / totalDeposited
            lastRewardTimestamp = block.timestamp
        totalDeposited += arg1
        if not latestRound:
            if not userInfo[address(msg.sender)].field_0:
                players.length++
                players[players.length] = msg.sender
            if arg1 <= 0:
                if not userInfo[address(msg.sender)].field_0:
                    userInfo[address(msg.sender)].field_256 = 0
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
            else:
                require ext_code.size(assetAddress)
                call assetAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(assetAddress)
                call assetAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args lendingPoolAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args assetAddress, arg1, address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[address(msg.sender)].field_0 += arg1
                if not userInfo[address(msg.sender)].field_0:
                    userInfo[address(msg.sender)].field_256 = 0
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                        revert with 0, 'SafeMath: multiplication overflow'
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
        else:
            if userInfo[address(msg.sender)].field_0 <= 0:
                if not userInfo[address(msg.sender)].field_0:
                    players.length++
                    players[players.length] = msg.sender
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                else:
                    require ext_code.size(assetAddress)
                    call assetAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(assetAddress)
                    call assetAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args lendingPoolAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args assetAddress, arg1, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 += arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                            revert with 0, 'SafeMath: multiplication overflow'
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_256 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                        else:
                            require ext_code.size(assetAddress)
                            call assetAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(assetAddress)
                            call assetAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args lendingPoolAddress, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args assetAddress, arg1, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                    else:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'safeTokenTransfer: transfer failed'
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 > 0:
                            require ext_code.size(assetAddress)
                            call assetAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(assetAddress)
                            call assetAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args lendingPoolAddress, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args assetAddress, arg1, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                revert with 0, 'SafeMath: multiplication overflow'
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                        else:
                            require ext_code.size(assetAddress)
                            call assetAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(assetAddress)
                            call assetAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args lendingPoolAddress, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args assetAddress, arg1, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
                    else:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'safeTokenTransfer: transfer failed'
                        if not userInfo[address(msg.sender)].field_0:
                            players.length++
                            players[players.length] = msg.sender
                        if arg1 > 0:
                            require ext_code.size(assetAddress)
                            call assetAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(assetAddress)
                            call assetAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args lendingPoolAddress, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(lendingPoolAddress)
                            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args assetAddress, arg1, address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / userInfo[address(msg.sender)].field_0 != sub_a9ac33dd:
                                revert with 0, 'SafeMath: multiplication overflow'
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12
    emit Deposit(msg.sender, arg1);
}

function reinvest() payable {
    require stor0.length.field_160 <= 1
    if stor0.length.field_160:
        revert with 0, 'LOTTERY != OPEN'
    stor0.length++
    stor0[stor0.length].field_0 = sub_b8ab24bdAddress
    mem[0] = 0
    idx = 0
    s = 0
    t = 196
    while idx < stor0.length:
        mem[t] = stor0[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_36b43005Address)
    call sub_36b43005Address.claim(address arg1, address[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=stor0.length, data=mem[196 len 32 * stor0.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_dad2b06eAddress)
    call sub_dad2b06eAddress.exit(bool arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_48996015Address == WAVAXAddress:
        mem[96] = 2
        mem[128] = sub_48996015Address
        mem[160] = assetAddress
        mem[196] = this.address
        require ext_code.size(sub_48996015Address)
        staticcall sub_48996015Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _494 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        _497 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _494 + (32 * _497) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _494 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _497:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_48996015Address)
        staticcall sub_48996015Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _812 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _815 = mem[_812]
        require mem[_812] == mem[_812]
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = _815
        require ext_code.size(sub_48996015Address)
        call sub_48996015Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, _815
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _824 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_824] == bool(mem[_824])
        if sub_48996015Address == WAVAXAddress:
            _830 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_830]
            mem[_830 + 32] = sub_48996015Address
            require 1 < mem[_830]
            mem[_830 + 64] = assetAddress
            mem[_830 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_830 + 100] = _815
            mem[_830 + 132] = 64
            mem[_830 + 164] = mem[_830]
            idx = 0
            s = _830 + 32
            t = _830 + 196
            while idx < mem[_830]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _830 + (32 * mem[_830]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1130 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1139 = mem[_1130]
            require mem[_1130] <= test266151307()
            require _1130 + mem[_1130] + 31 < _1130 + return_data.size
            _1148 = mem[_1130 + mem[_1130]]
            require mem[_1130 + mem[_1130]] <= test266151307()
            require _1130 + ceil32(return_data.size) + (32 * mem[_1130 + mem[_1130]]) + 32 <= test266151307() and (32 * mem[_1130 + mem[_1130]]) + 32 >= 0
            mem[64] = _1130 + ceil32(return_data.size) + (32 * mem[_1130 + mem[_1130]]) + 32
            mem[_1130 + ceil32(return_data.size)] = _1148
            require _1139 + (32 * _1148) + 32 <= return_data.size
            idx = 0
            s = _1130 + _1139 + 32
            t = _1130 + ceil32(return_data.size) + 32
            while idx < _1148:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require 2 < _1148
            _1364 = mem[_1130 + ceil32(return_data.size) + 96]
            _1365 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _815
            mem[mem[64] + 36] = _1364
            mem[mem[64] + 68] = 160
            _1382 = mem[_830]
            mem[mem[64] + 164] = mem[_830]
            idx = 0
            s = _830 + 32
            t = mem[64] + 196
            while idx < _1382:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1365 + 100] = this.address
            mem[_1365 + 132] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1365 + (32 * _1382) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1544 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1553 = mem[_1544]
            require mem[_1544] <= test266151307()
            require _1544 + mem[_1544] + 31 < _1544 + return_data.size
            _1562 = mem[_1544 + mem[_1544]]
            require mem[_1544 + mem[_1544]] <= test266151307()
            require _1544 + ceil32(return_data.size) + (32 * mem[_1544 + mem[_1544]]) + 32 <= test266151307() and (32 * mem[_1544 + mem[_1544]]) + 32 >= 0
            mem[64] = _1544 + ceil32(return_data.size) + (32 * mem[_1544 + mem[_1544]]) + 32
            mem[_1544 + ceil32(return_data.size)] = _1562
            require _1553 + (32 * _1562) + 32 <= return_data.size
            idx = 0
            s = _1544 + _1553 + 32
            t = _1544 + ceil32(return_data.size) + 32
            while idx < _1562:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require 2 < mem[(2 * ceil32(return_data.size)) + 192]
            _1679 = mem[(2 * ceil32(return_data.size)) + 288]
            mem[mem[64] + 4] = lendingPoolAddress
            mem[mem[64] + 36] = _1679
            require ext_code.size(assetAddress)
            call assetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args lendingPoolAddress, _1679
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1706 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1706] == bool(mem[_1706])
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args assetAddress, _1679, address(this.address), 0
        else:
            if assetAddress == WAVAXAddress:
                _834 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_834]
                mem[_834 + 32] = sub_48996015Address
                require 1 < mem[_834]
                mem[_834 + 64] = assetAddress
                mem[_834 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_834 + 100] = _815
                mem[_834 + 132] = 64
                mem[_834 + 164] = mem[_834]
                idx = 0
                s = _834 + 32
                t = _834 + 196
                while idx < mem[_834]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _834 + (32 * mem[_834]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1132 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1141 = mem[_1132]
                require mem[_1132] <= test266151307()
                require _1132 + mem[_1132] + 31 < _1132 + return_data.size
                _1150 = mem[_1132 + mem[_1132]]
                require mem[_1132 + mem[_1132]] <= test266151307()
                require _1132 + ceil32(return_data.size) + (32 * mem[_1132 + mem[_1132]]) + 32 <= test266151307() and (32 * mem[_1132 + mem[_1132]]) + 32 >= 0
                mem[64] = _1132 + ceil32(return_data.size) + (32 * mem[_1132 + mem[_1132]]) + 32
                mem[_1132 + ceil32(return_data.size)] = _1150
                require _1141 + (32 * _1150) + 32 <= return_data.size
                idx = 0
                s = _1132 + _1141 + 32
                t = _1132 + ceil32(return_data.size) + 32
                while idx < _1150:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < _1150
                _1368 = mem[_1132 + ceil32(return_data.size) + 96]
                _1369 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _815
                mem[mem[64] + 36] = _1368
                mem[mem[64] + 68] = 160
                _1384 = mem[_834]
                mem[mem[64] + 164] = mem[_834]
                idx = 0
                s = _834 + 32
                t = mem[64] + 196
                while idx < _1384:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1369 + 100] = this.address
                mem[_1369 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1369 + (32 * _1384) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1546 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1555 = mem[_1546]
                require mem[_1546] <= test266151307()
                require _1546 + mem[_1546] + 31 < _1546 + return_data.size
                _1564 = mem[_1546 + mem[_1546]]
                require mem[_1546 + mem[_1546]] <= test266151307()
                require _1546 + ceil32(return_data.size) + (32 * mem[_1546 + mem[_1546]]) + 32 <= test266151307() and (32 * mem[_1546 + mem[_1546]]) + 32 >= 0
                mem[64] = _1546 + ceil32(return_data.size) + (32 * mem[_1546 + mem[_1546]]) + 32
                mem[_1546 + ceil32(return_data.size)] = _1564
                require _1555 + (32 * _1564) + 32 <= return_data.size
                idx = 0
                s = _1546 + _1555 + 32
                t = _1546 + ceil32(return_data.size) + 32
                while idx < _1564:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < mem[(2 * ceil32(return_data.size)) + 192]
                _1681 = mem[(2 * ceil32(return_data.size)) + 288]
                mem[mem[64] + 4] = lendingPoolAddress
                mem[mem[64] + 36] = _1681
                require ext_code.size(assetAddress)
                call assetAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args lendingPoolAddress, _1681
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1708 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1708] == bool(mem[_1708])
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args assetAddress, _1681, address(this.address), 0
            else:
                _833 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_833]
                mem[_833 + 32] = sub_48996015Address
                require 1 < mem[_833]
                mem[_833 + 64] = WAVAXAddress
                require 2 < mem[_833]
                mem[_833 + 96] = assetAddress
                mem[_833 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_833 + 132] = _815
                mem[_833 + 164] = 64
                mem[_833 + 196] = mem[_833]
                idx = 0
                s = _833 + 32
                t = _833 + 228
                while idx < mem[_833]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _833 + (32 * mem[_833]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1131 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1140 = mem[_1131]
                require mem[_1131] <= test266151307()
                require _1131 + mem[_1131] + 31 < _1131 + return_data.size
                _1149 = mem[_1131 + mem[_1131]]
                require mem[_1131 + mem[_1131]] <= test266151307()
                require _1131 + ceil32(return_data.size) + (32 * mem[_1131 + mem[_1131]]) + 32 <= test266151307() and (32 * mem[_1131 + mem[_1131]]) + 32 >= 0
                mem[64] = _1131 + ceil32(return_data.size) + (32 * mem[_1131 + mem[_1131]]) + 32
                mem[_1131 + ceil32(return_data.size)] = _1149
                require _1140 + (32 * _1149) + 32 <= return_data.size
                idx = 0
                s = _1131 + _1140 + 32
                t = _1131 + ceil32(return_data.size) + 32
                while idx < _1149:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < _1149
                _1366 = mem[_1131 + ceil32(return_data.size) + 96]
                _1367 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _815
                mem[mem[64] + 36] = _1366
                mem[mem[64] + 68] = 160
                _1383 = mem[_833]
                mem[mem[64] + 164] = mem[_833]
                idx = 0
                s = _833 + 32
                t = mem[64] + 196
                while idx < _1383:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1367 + 100] = this.address
                mem[_1367 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1367 + (32 * _1383) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1545 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1554 = mem[_1545]
                require mem[_1545] <= test266151307()
                require _1545 + mem[_1545] + 31 < _1545 + return_data.size
                _1563 = mem[_1545 + mem[_1545]]
                require mem[_1545 + mem[_1545]] <= test266151307()
                require _1545 + ceil32(return_data.size) + (32 * mem[_1545 + mem[_1545]]) + 32 <= test266151307() and (32 * mem[_1545 + mem[_1545]]) + 32 >= 0
                mem[64] = _1545 + ceil32(return_data.size) + (32 * mem[_1545 + mem[_1545]]) + 32
                mem[_1545 + ceil32(return_data.size)] = _1563
                require _1554 + (32 * _1563) + 32 <= return_data.size
                idx = 0
                s = _1545 + _1554 + 32
                t = _1545 + ceil32(return_data.size) + 32
                while idx < _1563:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < mem[(2 * ceil32(return_data.size)) + 192]
                _1680 = mem[(2 * ceil32(return_data.size)) + 288]
                mem[mem[64] + 4] = lendingPoolAddress
                mem[mem[64] + 36] = _1680
                require ext_code.size(assetAddress)
                call assetAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args lendingPoolAddress, _1680
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1707] == bool(mem[_1707])
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args assetAddress, _1680, address(this.address), 0
    else:
        if assetAddress == WAVAXAddress:
            mem[96] = 2
            mem[128] = sub_48996015Address
            mem[160] = assetAddress
            mem[196] = this.address
            require ext_code.size(sub_48996015Address)
            staticcall sub_48996015Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _496 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
            _499 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
            require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require _496 + (32 * _499) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _496 + 224
            t = (2 * ceil32(return_data.size)) + 224
            while idx < _499:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_48996015Address)
            staticcall sub_48996015Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _814 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _817 = mem[_814]
            require mem[_814] == mem[_814]
            mem[mem[64] + 4] = routerAddress
            mem[mem[64] + 36] = _817
            require ext_code.size(sub_48996015Address)
            call sub_48996015Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, _817
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _826 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_826] == bool(mem[_826])
            if sub_48996015Address == WAVAXAddress:
                _832 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_832]
                mem[_832 + 32] = sub_48996015Address
                require 1 < mem[_832]
                mem[_832 + 64] = assetAddress
                mem[_832 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_832 + 100] = _817
                mem[_832 + 132] = 64
                mem[_832 + 164] = mem[_832]
                idx = 0
                s = _832 + 32
                t = _832 + 196
                while idx < mem[_832]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _832 + (32 * mem[_832]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1136 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1145 = mem[_1136]
                require mem[_1136] <= test266151307()
                require _1136 + mem[_1136] + 31 < _1136 + return_data.size
                _1154 = mem[_1136 + mem[_1136]]
                require mem[_1136 + mem[_1136]] <= test266151307()
                require _1136 + ceil32(return_data.size) + (32 * mem[_1136 + mem[_1136]]) + 32 <= test266151307() and (32 * mem[_1136 + mem[_1136]]) + 32 >= 0
                mem[64] = _1136 + ceil32(return_data.size) + (32 * mem[_1136 + mem[_1136]]) + 32
                mem[_1136 + ceil32(return_data.size)] = _1154
                require _1145 + (32 * _1154) + 32 <= return_data.size
                idx = 0
                s = _1136 + _1145 + 32
                t = _1136 + ceil32(return_data.size) + 32
                while idx < _1154:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < _1154
                _1376 = mem[_1136 + ceil32(return_data.size) + 96]
                _1377 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _817
                mem[mem[64] + 36] = _1376
                mem[mem[64] + 68] = 160
                _1388 = mem[_832]
                mem[mem[64] + 164] = mem[_832]
                idx = 0
                s = _832 + 32
                t = mem[64] + 196
                while idx < _1388:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1377 + 100] = this.address
                mem[_1377 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1377 + (32 * _1388) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1550 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1559 = mem[_1550]
                require mem[_1550] <= test266151307()
                require _1550 + mem[_1550] + 31 < _1550 + return_data.size
                _1568 = mem[_1550 + mem[_1550]]
                require mem[_1550 + mem[_1550]] <= test266151307()
                require _1550 + ceil32(return_data.size) + (32 * mem[_1550 + mem[_1550]]) + 32 <= test266151307() and (32 * mem[_1550 + mem[_1550]]) + 32 >= 0
                mem[64] = _1550 + ceil32(return_data.size) + (32 * mem[_1550 + mem[_1550]]) + 32
                mem[_1550 + ceil32(return_data.size)] = _1568
                require _1559 + (32 * _1568) + 32 <= return_data.size
                idx = 0
                s = _1550 + _1559 + 32
                t = _1550 + ceil32(return_data.size) + 32
                while idx < _1568:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < mem[(2 * ceil32(return_data.size)) + 192]
                _1685 = mem[(2 * ceil32(return_data.size)) + 288]
                mem[mem[64] + 4] = lendingPoolAddress
                mem[mem[64] + 36] = _1685
                require ext_code.size(assetAddress)
                call assetAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args lendingPoolAddress, _1685
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1712] == bool(mem[_1712])
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args assetAddress, _1685, address(this.address), 0
            else:
                if assetAddress == WAVAXAddress:
                    _838 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_838]
                    mem[_838 + 32] = sub_48996015Address
                    require 1 < mem[_838]
                    mem[_838 + 64] = assetAddress
                    mem[_838 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_838 + 100] = _817
                    mem[_838 + 132] = 64
                    mem[_838 + 164] = mem[_838]
                    idx = 0
                    s = _838 + 32
                    t = _838 + 196
                    while idx < mem[_838]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _838 + (32 * mem[_838]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1138 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1147 = mem[_1138]
                    require mem[_1138] <= test266151307()
                    require _1138 + mem[_1138] + 31 < _1138 + return_data.size
                    _1156 = mem[_1138 + mem[_1138]]
                    require mem[_1138 + mem[_1138]] <= test266151307()
                    require _1138 + ceil32(return_data.size) + (32 * mem[_1138 + mem[_1138]]) + 32 <= test266151307() and (32 * mem[_1138 + mem[_1138]]) + 32 >= 0
                    mem[64] = _1138 + ceil32(return_data.size) + (32 * mem[_1138 + mem[_1138]]) + 32
                    mem[_1138 + ceil32(return_data.size)] = _1156
                    require _1147 + (32 * _1156) + 32 <= return_data.size
                    idx = 0
                    s = _1138 + _1147 + 32
                    t = _1138 + ceil32(return_data.size) + 32
                    while idx < _1156:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < _1156
                    _1380 = mem[_1138 + ceil32(return_data.size) + 96]
                    _1381 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _817
                    mem[mem[64] + 36] = _1380
                    mem[mem[64] + 68] = 160
                    _1390 = mem[_838]
                    mem[mem[64] + 164] = mem[_838]
                    idx = 0
                    s = _838 + 32
                    t = mem[64] + 196
                    while idx < _1390:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1381 + 100] = this.address
                    mem[_1381 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1381 + (32 * _1390) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1552 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1561 = mem[_1552]
                    require mem[_1552] <= test266151307()
                    require _1552 + mem[_1552] + 31 < _1552 + return_data.size
                    _1570 = mem[_1552 + mem[_1552]]
                    require mem[_1552 + mem[_1552]] <= test266151307()
                    require _1552 + ceil32(return_data.size) + (32 * mem[_1552 + mem[_1552]]) + 32 <= test266151307() and (32 * mem[_1552 + mem[_1552]]) + 32 >= 0
                    mem[64] = _1552 + ceil32(return_data.size) + (32 * mem[_1552 + mem[_1552]]) + 32
                    mem[_1552 + ceil32(return_data.size)] = _1570
                    require _1561 + (32 * _1570) + 32 <= return_data.size
                    idx = 0
                    s = _1552 + _1561 + 32
                    t = _1552 + ceil32(return_data.size) + 32
                    while idx < _1570:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < mem[(2 * ceil32(return_data.size)) + 192]
                    _1687 = mem[(2 * ceil32(return_data.size)) + 288]
                    mem[mem[64] + 4] = lendingPoolAddress
                    mem[mem[64] + 36] = _1687
                    require ext_code.size(assetAddress)
                    call assetAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args lendingPoolAddress, _1687
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1714] == bool(mem[_1714])
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args assetAddress, _1687, address(this.address), 0
                else:
                    _837 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_837]
                    mem[_837 + 32] = sub_48996015Address
                    require 1 < mem[_837]
                    mem[_837 + 64] = WAVAXAddress
                    require 2 < mem[_837]
                    mem[_837 + 96] = assetAddress
                    mem[_837 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_837 + 132] = _817
                    mem[_837 + 164] = 64
                    mem[_837 + 196] = mem[_837]
                    idx = 0
                    s = _837 + 32
                    t = _837 + 228
                    while idx < mem[_837]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _837 + (32 * mem[_837]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1137 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1146 = mem[_1137]
                    require mem[_1137] <= test266151307()
                    require _1137 + mem[_1137] + 31 < _1137 + return_data.size
                    _1155 = mem[_1137 + mem[_1137]]
                    require mem[_1137 + mem[_1137]] <= test266151307()
                    require _1137 + ceil32(return_data.size) + (32 * mem[_1137 + mem[_1137]]) + 32 <= test266151307() and (32 * mem[_1137 + mem[_1137]]) + 32 >= 0
                    mem[64] = _1137 + ceil32(return_data.size) + (32 * mem[_1137 + mem[_1137]]) + 32
                    mem[_1137 + ceil32(return_data.size)] = _1155
                    require _1146 + (32 * _1155) + 32 <= return_data.size
                    idx = 0
                    s = _1137 + _1146 + 32
                    t = _1137 + ceil32(return_data.size) + 32
                    while idx < _1155:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < _1155
                    _1378 = mem[_1137 + ceil32(return_data.size) + 96]
                    _1379 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _817
                    mem[mem[64] + 36] = _1378
                    mem[mem[64] + 68] = 160
                    _1389 = mem[_837]
                    mem[mem[64] + 164] = mem[_837]
                    idx = 0
                    s = _837 + 32
                    t = mem[64] + 196
                    while idx < _1389:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1379 + 100] = this.address
                    mem[_1379 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1379 + (32 * _1389) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1551 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1560 = mem[_1551]
                    require mem[_1551] <= test266151307()
                    require _1551 + mem[_1551] + 31 < _1551 + return_data.size
                    _1569 = mem[_1551 + mem[_1551]]
                    require mem[_1551 + mem[_1551]] <= test266151307()
                    require _1551 + ceil32(return_data.size) + (32 * mem[_1551 + mem[_1551]]) + 32 <= test266151307() and (32 * mem[_1551 + mem[_1551]]) + 32 >= 0
                    mem[64] = _1551 + ceil32(return_data.size) + (32 * mem[_1551 + mem[_1551]]) + 32
                    mem[_1551 + ceil32(return_data.size)] = _1569
                    require _1560 + (32 * _1569) + 32 <= return_data.size
                    idx = 0
                    s = _1551 + _1560 + 32
                    t = _1551 + ceil32(return_data.size) + 32
                    while idx < _1569:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < mem[(2 * ceil32(return_data.size)) + 192]
                    _1686 = mem[(2 * ceil32(return_data.size)) + 288]
                    mem[mem[64] + 4] = lendingPoolAddress
                    mem[mem[64] + 36] = _1686
                    require ext_code.size(assetAddress)
                    call assetAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args lendingPoolAddress, _1686
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1713] == bool(mem[_1713])
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args assetAddress, _1686, address(this.address), 0
        else:
            mem[96] = 3
            mem[128] = sub_48996015Address
            mem[160] = WAVAXAddress
            mem[192] = assetAddress
            mem[228] = this.address
            require ext_code.size(sub_48996015Address)
            staticcall sub_48996015Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 260] = 64
            mem[ceil32(return_data.size) + 292] = 3
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _495 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
            _498 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= test266151307()
            require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 >= 0
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256
            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            require _495 + (32 * _498) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _495 + 256
            t = (2 * ceil32(return_data.size)) + 256
            while idx < _498:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_48996015Address)
            staticcall sub_48996015Address.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _813 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _816 = mem[_813]
            require mem[_813] == mem[_813]
            mem[mem[64] + 4] = routerAddress
            mem[mem[64] + 36] = _816
            require ext_code.size(sub_48996015Address)
            call sub_48996015Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, _816
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _825 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_825] == bool(mem[_825])
            if sub_48996015Address == WAVAXAddress:
                _831 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_831]
                mem[_831 + 32] = sub_48996015Address
                require 1 < mem[_831]
                mem[_831 + 64] = assetAddress
                mem[_831 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_831 + 100] = _816
                mem[_831 + 132] = 64
                mem[_831 + 164] = mem[_831]
                idx = 0
                s = _831 + 32
                t = _831 + 196
                while idx < mem[_831]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _831 + (32 * mem[_831]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1133 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1142 = mem[_1133]
                require mem[_1133] <= test266151307()
                require _1133 + mem[_1133] + 31 < _1133 + return_data.size
                _1151 = mem[_1133 + mem[_1133]]
                require mem[_1133 + mem[_1133]] <= test266151307()
                require _1133 + ceil32(return_data.size) + (32 * mem[_1133 + mem[_1133]]) + 32 <= test266151307() and (32 * mem[_1133 + mem[_1133]]) + 32 >= 0
                mem[64] = _1133 + ceil32(return_data.size) + (32 * mem[_1133 + mem[_1133]]) + 32
                mem[_1133 + ceil32(return_data.size)] = _1151
                require _1142 + (32 * _1151) + 32 <= return_data.size
                idx = 0
                s = _1133 + _1142 + 32
                t = _1133 + ceil32(return_data.size) + 32
                while idx < _1151:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < _1151
                _1370 = mem[_1133 + ceil32(return_data.size) + 96]
                _1371 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _816
                mem[mem[64] + 36] = _1370
                mem[mem[64] + 68] = 160
                _1385 = mem[_831]
                mem[mem[64] + 164] = mem[_831]
                idx = 0
                s = _831 + 32
                t = mem[64] + 196
                while idx < _1385:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1371 + 100] = this.address
                mem[_1371 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1371 + (32 * _1385) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1547 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1556 = mem[_1547]
                require mem[_1547] <= test266151307()
                require _1547 + mem[_1547] + 31 < _1547 + return_data.size
                _1565 = mem[_1547 + mem[_1547]]
                require mem[_1547 + mem[_1547]] <= test266151307()
                require _1547 + ceil32(return_data.size) + (32 * mem[_1547 + mem[_1547]]) + 32 <= test266151307() and (32 * mem[_1547 + mem[_1547]]) + 32 >= 0
                mem[64] = _1547 + ceil32(return_data.size) + (32 * mem[_1547 + mem[_1547]]) + 32
                mem[_1547 + ceil32(return_data.size)] = _1565
                require _1556 + (32 * _1565) + 32 <= return_data.size
                idx = 0
                s = _1547 + _1556 + 32
                t = _1547 + ceil32(return_data.size) + 32
                while idx < _1565:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 2 < mem[(2 * ceil32(return_data.size)) + 224]
                _1682 = mem[(2 * ceil32(return_data.size)) + 320]
                mem[mem[64] + 4] = lendingPoolAddress
                mem[mem[64] + 36] = _1682
                require ext_code.size(assetAddress)
                call assetAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args lendingPoolAddress, _1682
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1709 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1709] == bool(mem[_1709])
                require ext_code.size(lendingPoolAddress)
                call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args assetAddress, _1682, address(this.address), 0
            else:
                if assetAddress == WAVAXAddress:
                    _836 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_836]
                    mem[_836 + 32] = sub_48996015Address
                    require 1 < mem[_836]
                    mem[_836 + 64] = assetAddress
                    mem[_836 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_836 + 100] = _816
                    mem[_836 + 132] = 64
                    mem[_836 + 164] = mem[_836]
                    idx = 0
                    s = _836 + 32
                    t = _836 + 196
                    while idx < mem[_836]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _836 + (32 * mem[_836]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1135 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1144 = mem[_1135]
                    require mem[_1135] <= test266151307()
                    require _1135 + mem[_1135] + 31 < _1135 + return_data.size
                    _1153 = mem[_1135 + mem[_1135]]
                    require mem[_1135 + mem[_1135]] <= test266151307()
                    require _1135 + ceil32(return_data.size) + (32 * mem[_1135 + mem[_1135]]) + 32 <= test266151307() and (32 * mem[_1135 + mem[_1135]]) + 32 >= 0
                    mem[64] = _1135 + ceil32(return_data.size) + (32 * mem[_1135 + mem[_1135]]) + 32
                    mem[_1135 + ceil32(return_data.size)] = _1153
                    require _1144 + (32 * _1153) + 32 <= return_data.size
                    idx = 0
                    s = _1135 + _1144 + 32
                    t = _1135 + ceil32(return_data.size) + 32
                    while idx < _1153:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < _1153
                    _1374 = mem[_1135 + ceil32(return_data.size) + 96]
                    _1375 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _816
                    mem[mem[64] + 36] = _1374
                    mem[mem[64] + 68] = 160
                    _1387 = mem[_836]
                    mem[mem[64] + 164] = mem[_836]
                    idx = 0
                    s = _836 + 32
                    t = mem[64] + 196
                    while idx < _1387:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1375 + 100] = this.address
                    mem[_1375 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1375 + (32 * _1387) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1549 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1558 = mem[_1549]
                    require mem[_1549] <= test266151307()
                    require _1549 + mem[_1549] + 31 < _1549 + return_data.size
                    _1567 = mem[_1549 + mem[_1549]]
                    require mem[_1549 + mem[_1549]] <= test266151307()
                    require _1549 + ceil32(return_data.size) + (32 * mem[_1549 + mem[_1549]]) + 32 <= test266151307() and (32 * mem[_1549 + mem[_1549]]) + 32 >= 0
                    mem[64] = _1549 + ceil32(return_data.size) + (32 * mem[_1549 + mem[_1549]]) + 32
                    mem[_1549 + ceil32(return_data.size)] = _1567
                    require _1558 + (32 * _1567) + 32 <= return_data.size
                    idx = 0
                    s = _1549 + _1558 + 32
                    t = _1549 + ceil32(return_data.size) + 32
                    while idx < _1567:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < mem[(2 * ceil32(return_data.size)) + 224]
                    _1684 = mem[(2 * ceil32(return_data.size)) + 320]
                    mem[mem[64] + 4] = lendingPoolAddress
                    mem[mem[64] + 36] = _1684
                    require ext_code.size(assetAddress)
                    call assetAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args lendingPoolAddress, _1684
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1711 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1711] == bool(mem[_1711])
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args assetAddress, _1684, address(this.address), 0
                else:
                    _835 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    require 0 < mem[_835]
                    mem[_835 + 32] = sub_48996015Address
                    require 1 < mem[_835]
                    mem[_835 + 64] = WAVAXAddress
                    require 2 < mem[_835]
                    mem[_835 + 96] = assetAddress
                    mem[_835 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_835 + 132] = _816
                    mem[_835 + 164] = 64
                    mem[_835 + 196] = mem[_835]
                    idx = 0
                    s = _835 + 32
                    t = _835 + 228
                    while idx < mem[_835]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _835 + (32 * mem[_835]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1134 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1143 = mem[_1134]
                    require mem[_1134] <= test266151307()
                    require _1134 + mem[_1134] + 31 < _1134 + return_data.size
                    _1152 = mem[_1134 + mem[_1134]]
                    require mem[_1134 + mem[_1134]] <= test266151307()
                    require _1134 + ceil32(return_data.size) + (32 * mem[_1134 + mem[_1134]]) + 32 <= test266151307() and (32 * mem[_1134 + mem[_1134]]) + 32 >= 0
                    mem[64] = _1134 + ceil32(return_data.size) + (32 * mem[_1134 + mem[_1134]]) + 32
                    mem[_1134 + ceil32(return_data.size)] = _1152
                    require _1143 + (32 * _1152) + 32 <= return_data.size
                    idx = 0
                    s = _1134 + _1143 + 32
                    t = _1134 + ceil32(return_data.size) + 32
                    while idx < _1152:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < _1152
                    _1372 = mem[_1134 + ceil32(return_data.size) + 96]
                    _1373 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _816
                    mem[mem[64] + 36] = _1372
                    mem[mem[64] + 68] = 160
                    _1386 = mem[_835]
                    mem[mem[64] + 164] = mem[_835]
                    idx = 0
                    s = _835 + 32
                    t = mem[64] + 196
                    while idx < _1386:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1373 + 100] = this.address
                    mem[_1373 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1373 + (32 * _1386) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1548 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1557 = mem[_1548]
                    require mem[_1548] <= test266151307()
                    require _1548 + mem[_1548] + 31 < _1548 + return_data.size
                    _1566 = mem[_1548 + mem[_1548]]
                    require mem[_1548 + mem[_1548]] <= test266151307()
                    require _1548 + ceil32(return_data.size) + (32 * mem[_1548 + mem[_1548]]) + 32 <= test266151307() and (32 * mem[_1548 + mem[_1548]]) + 32 >= 0
                    mem[64] = _1548 + ceil32(return_data.size) + (32 * mem[_1548 + mem[_1548]]) + 32
                    mem[_1548 + ceil32(return_data.size)] = _1566
                    require _1557 + (32 * _1566) + 32 <= return_data.size
                    idx = 0
                    s = _1548 + _1557 + 32
                    t = _1548 + ceil32(return_data.size) + 32
                    while idx < _1566:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 2 < mem[(2 * ceil32(return_data.size)) + 224]
                    _1683 = mem[(2 * ceil32(return_data.size)) + 320]
                    mem[mem[64] + 4] = lendingPoolAddress
                    mem[mem[64] + 36] = _1683
                    require ext_code.size(assetAddress)
                    call assetAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args lendingPoolAddress, _1683
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1710 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1710] == bool(mem[_1710])
                    require ext_code.size(lendingPoolAddress)
                    call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args assetAddress, _1683, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

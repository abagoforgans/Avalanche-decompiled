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

function interestEarned() payable {
    require ext_code.size(sub_b8ab24bdAddress)
    staticcall sub_b8ab24bdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (ext_call.return_data[0] - totalDeposited)
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
    call address(arg1).0xa9059cbb with:
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

function reinvest() payable {
    require stor0.length.field_160 <= 1
    if stor0.length.field_160:
        revert with 0, 'LOTTERY != OPEN'
    stor0.length++
    stor0[stor0.length].field_0 = sub_b8ab24bdAddress
    mem[132] = 64
    mem[164] = stor0.length
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
    mem[100] = this.address
    require ext_code.size(sub_48996015Address)
    staticcall sub_48996015Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = routerAddress
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(sub_48996015Address)
    call sub_48996015Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_48996015Address == WAVAXAddress:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = sub_48996015Address
        mem[(2 * ceil32(return_data.size)) + 160] = assetAddress
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _168 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _171 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
        mem[(4 * ceil32(return_data.size)) + 192] = _171
        require _168 + (32 * _171) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _168 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _171:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(assetAddress)
        staticcall assetAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _222 = mem[_219]
        require mem[_219] == mem[_219]
        mem[mem[64] + 4] = lendingPoolAddress
        mem[mem[64] + 36] = _222
        require ext_code.size(assetAddress)
        call assetAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args lendingPoolAddress, _222
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_231] == bool(mem[_231])
        require ext_code.size(lendingPoolAddress)
        call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args assetAddress, _222, address(this.address), 0
    else:
        if assetAddress == WAVAXAddress:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = sub_48996015Address
            mem[(2 * ceil32(return_data.size)) + 160] = assetAddress
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _170 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _173 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
            mem[(4 * ceil32(return_data.size)) + 192] = _173
            require _170 + (32 * _173) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _170 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _173:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(assetAddress)
            staticcall assetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _224 = mem[_221]
            require mem[_221] == mem[_221]
            mem[mem[64] + 4] = lendingPoolAddress
            mem[mem[64] + 36] = _224
            require ext_code.size(assetAddress)
            call assetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args lendingPoolAddress, _224
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_233] == bool(mem[_233])
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args assetAddress, _224, address(this.address), 0
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = sub_48996015Address
            mem[(2 * ceil32(return_data.size)) + 160] = WAVAXAddress
            mem[(2 * ceil32(return_data.size)) + 192] = assetAddress
            mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 260] = 0
            mem[(2 * ceil32(return_data.size)) + 292] = 160
            mem[(2 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = this.address
            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _169 = mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _172 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= test266151307()
            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 >= 0
            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256
            mem[(4 * ceil32(return_data.size)) + 224] = _172
            require _169 + (32 * _172) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _169 + 256
            t = (4 * ceil32(return_data.size)) + 256
            while idx < _172:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(assetAddress)
            staticcall assetAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _223 = mem[_220]
            require mem[_220] == mem[_220]
            mem[mem[64] + 4] = lendingPoolAddress
            mem[mem[64] + 36] = _223
            require ext_code.size(assetAddress)
            call assetAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args lendingPoolAddress, _223
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_232] == bool(mem[_232])
            require ext_code.size(lendingPoolAddress)
            call lendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args assetAddress, _223, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            call sub_b8ab24bdAddress.0x23b872dd with:
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
                call sub_b8ab24bdAddress.0x23b872dd with:
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
                    call sub_b8ab24bdAddress.0x23b872dd with:
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
                            call sub_b8ab24bdAddress.0x23b872dd with:
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
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
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
                            call sub_b8ab24bdAddress.0x23b872dd with:
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
                            call sub_b8ab24bdAddress.0x23b872dd with:
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
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
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
                            call sub_b8ab24bdAddress.0x23b872dd with:
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
            call assetAddress.0x23b872dd with:
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
                call assetAddress.0x23b872dd with:
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
                    call assetAddress.0x23b872dd with:
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
                            call assetAddress.0x23b872dd with:
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
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
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
                            call assetAddress.0x23b872dd with:
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
                            call assetAddress.0x23b872dd with:
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
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(rewardTokenAddress)
                        if (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[address(msg.sender)].field_0 * sub_a9ac33dd / 10^12) - userInfo[address(msg.sender)].field_256
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
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
                            call assetAddress.0x23b872dd with:
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



}

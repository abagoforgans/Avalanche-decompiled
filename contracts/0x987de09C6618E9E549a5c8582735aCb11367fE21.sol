contract main {




// =====================  Runtime code  =====================


#
#  - sub_3fa85d7f(?)
#  - emergencyWithdrawal(address arg1, uint256 arg2)
#  - sub_60c3d0aa(?)
#  - sub_e4206f10(?)
#  - buyShares(uint256 arg1, address arg2)
#
array of address holders;
mapping of uint256 sub_c2bd1871;
mapping of uint256 sub_dc3bbab7;
mapping of uint32 sub_eda47d8a;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 sub_92cc9479;
uint256 sub_9c5758e5;
uint32 holderCount;
uint256 totalInvestment;
uint256 totalRewardsDistributed;
uint256 sub_69573339;
uint256 sub_da1fc072;
address managerAddress;
uint256 rewardFee;
uint256 initialFee;
uint256 sub_b815e026;
mapping of uint256 sub_8914f301;
address feeCollectorAddress;
address rewardTokenAddress;
address purchaseTokenAddress;
uint256 sub_cc092e8f;
uint256 sub_f437b811;
uint256 sub_26b82902;
uint256 sub_23cb6c74;
array of address sub_347f3f5f;
uint8 sub_1a5ded56;
uint8 stor26; offset 24
uint16 nodeCount; offset 8
uint256 stor26; offset 24
uint256 sellFee;
uint256 sub_89ea3f61;
address sellTokenAddress;
uint256 totalSharesSold;
uint8 stor31;
uint256 sub_89bb6882;
uint8 isTransferEnabled;
array of address stor67072331549493647622825787457569556318728415786901242217649037894484240406165;

function sub_01aba058(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_075567a6(?) payable {
    return bool(uint8(stor26.field_24))
}

function totalInvestment() payable {
    return totalInvestment
}

function sub_1a5ded56(?) payable {
    return sub_1a5ded56
}

function holderCount() payable {
    return holderCount
}

function sub_23cb6c74(?) payable {
    return sub_23cb6c74
}

function sub_26b82902(?) payable {
    return sub_26b82902
}

function holders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < holders.length
    return holders[arg1]
}

function sellFee() payable {
    return sellFee
}

function sub_347f3f5f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_347f3f5f.length
    return sub_347f3f5f[arg1]
}

function manager() payable {
    return managerAddress
}

function sub_69573339(?) payable {
    return sub_69573339
}

function nodeCount() payable {
    return nodeCount
}

function totalSharesSold() payable {
    return totalSharesSold
}

function isShareHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function sub_8914f301(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8914f301[arg1]
}

function sub_89bb6882(?) payable {
    return sub_89bb6882
}

function sub_89ea3f61(?) payable {
    return sub_89ea3f61
}

function rewardFee() payable {
    return rewardFee
}

function sub_92cc9479(?) payable {
    return sub_92cc9479
}

function sellToken() payable {
    return sellTokenAddress
}

function initialFee() payable {
    return initialFee
}

function sub_9c5758e5(?) payable {
    return sub_9c5758e5
}

function purchaseToken() payable {
    return purchaseTokenAddress
}

function sub_b815e026(?) payable {
    return sub_b815e026
}

function sub_c2bd1871(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c2bd1871[arg1]
}

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_cc092e8f(?) payable {
    return sub_cc092e8f
}

function isTransferEnabled() payable {
    return bool(isTransferEnabled)
}

function sub_da1fc072(?) payable {
    return sub_da1fc072
}

function sub_dc3bbab7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_dc3bbab7[arg1]
}

function sub_eda47d8a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_eda47d8a[arg1]
}

function totalRewardsDistributed() payable {
    return totalRewardsDistributed
}

function sub_f437b811(?) payable {
    return sub_f437b811
}

function rewardToken() payable {
    return rewardTokenAddress
}

function sub_ff5dbc50(?) payable {
    return bool(stor31)
}

function _fallback() payable {
    revert
}

function sub_bf90d835(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    initialFee = arg1
}

function sub_c7a15f4c(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    sub_cc092e8f = arg1
}

function sub_d0715b68(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    sub_26b82902 = arg1
}

function sub_ef200b96(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    sub_b815e026 = arg1
}

function getSharePrice() payable {
    if sub_cc092e8f > !sub_26b82902:
        revert with 0, 17
    return (sub_cc092e8f + sub_26b82902)
}

function setSellFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    sellFee = arg1
}

function endDistribution() payable {
    require msg.sender == managerAddress
    uint8(stor26.field_24) = 1
    sub_92cc9479 = sub_9c5758e5
}

function startDistribution() payable {
    require msg.sender == managerAddress
    uint8(stor26.field_24) = 0
    sub_9c5758e5 = sub_92cc9479
}

function setRewardFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    rewardFee = arg1
}

function sub_ea29dad3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    stor5[msg.sender] = uint8(bool(arg1))
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == managerAddress
    managerAddress = arg1
}

function sub_a7011ea1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == managerAddress
    stor31 = uint8(bool(arg1))
}

function sub_c01d50a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require msg.sender == managerAddress
    nodeCount = uint16(arg1)
}

function setSellToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == managerAddress
    sellTokenAddress = arg1
}

function setFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == managerAddress
    feeCollectorAddress = arg1
}

function sub_05551669(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == managerAddress
    isTransferEnabled = uint8(bool(arg1))
}

function sub_0c4ed799(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == managerAddress
    rewardTokenAddress = address(arg1)
}

function sub_6f3d69cd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == managerAddress
    sub_8914f301[address(arg1)] = arg2
}

function sub_9a23f504(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == managerAddress
    purchaseTokenAddress = address(arg1)
}

function sub_ccd1b80f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == managerAddress
    Mask(232, 0, stor26.field_24) = Mask(232, 0, bool(arg1))
}

function sub_1d15c597(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    if totalRewardsDistributed > !arg1:
        revert with 0, 17
    totalRewardsDistributed += arg1
}

function getSellPrice() payable {
    if 1000 < sellFee:
        revert with 0, 17
    if sub_cc092e8f and -sellFee + 1000 > -1 / sub_cc092e8f:
        revert with 0, 17
    return ((1000 * sub_cc092e8f) - (sellFee * sub_cc092e8f) / 1000)
}

function sub_d78ef248(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == managerAddress
    sub_347f3f5f.length++
    stor9449[stor25.length] = address(arg1)
    if sub_1a5ded56 > 254:
        revert with 0, 17
    sub_1a5ded56 = uint8(sub_1a5ded56 + 1)
}

function sub_ce4eda03(?) payable {
    if 1000 < sellFee:
        revert with 0, 17
    if sub_cc092e8f and -sellFee + 1000 > -1 / sub_cc092e8f:
        revert with 0, 17
    if not (1000 * sub_cc092e8f) - (sellFee * sub_cc092e8f) / 1000:
        revert with 0, 18
    return (sub_89ea3f61 / (1000 * sub_cc092e8f) - (sellFee * sub_cc092e8f) / 1000)
}

function sub_fae4e765(?) payable {
    idx = 0
    s = 0
    while idx < holders.length:
        mem[0] = holders[idx]
        mem[32] = 5
        if not stor5[stor0[idx]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_f2478d78(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == managerAddress
    if arg1 <= sub_89ea3f61:
        if sub_89ea3f61 < arg1:
            revert with 0, 17
        if sub_f437b811 > !(sub_89ea3f61 - arg1):
            revert with 0, 17
        sub_f437b811 = sub_f437b811 + sub_89ea3f61 - arg1
    else:
        if arg1 < sub_89ea3f61:
            revert with 0, 17
        if sub_f437b811 < arg1 - sub_89ea3f61:
            revert with 0, 17
        sub_f437b811 = sub_f437b811 - arg1 + sub_89ea3f61
    sub_89ea3f61 = arg1
}

function transferShares(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if managerAddress != msg.sender:
        if not isTransferEnabled:
            revert with 0, 'Can't transfer shares'
    if arg2 > sub_c2bd1871[msg.sender]:
        revert with 0, 'Not Enough Shares.'
    if not stor4[address(arg1)]:
        holders.length++
        holders[holders.length] = arg1
        stor4[address(arg1)] = 1
        if holderCount > 4294967294:
            revert with 0, 17
        holderCount = uint32(holderCount + 1)
    if sub_c2bd1871[msg.sender] < arg2:
        revert with 0, 17
    sub_c2bd1871[msg.sender] -= arg2
    if sub_c2bd1871[arg1] > !arg2:
        revert with 0, 17
    sub_c2bd1871[address(arg1)] = sub_c2bd1871[arg1] + arg2
}

function sub_177bb3c4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    require msg.sender == managerAddress
    if sub_cc092e8f > !sub_26b82902:
        revert with 0, 17
    if not sub_92cc9479:
        revert with 0, 18
    idx = arg1
    while uint32(idx) < uint32(arg2):
        if uint32(idx) >= holders.length:
            revert with 0, 50
        if arg3 / sub_92cc9479 and sub_c2bd1871[stor0[uint32(idx)]] > -1 / arg3 / sub_92cc9479:
            revert with 0, 17
        mem[0] = holders[uint32(idx)]
        mem[32] = 5
        if stor5[stor0[uint32(idx)]]:
            if not sub_cc092e8f + sub_26b82902:
                revert with 0, 18
            if sub_c2bd1871[stor0[uint32(idx)]] > !(arg3 / sub_92cc9479 * sub_c2bd1871[stor0[uint32(idx)]] / sub_cc092e8f + sub_26b82902):
                revert with 0, 17
            mem[0] = holders[uint32(idx)]
            mem[32] = 1
            sub_c2bd1871[stor0[uint32(idx)]] += arg3 / sub_92cc9479 * sub_c2bd1871[stor0[uint32(idx)]] / sub_cc092e8f + sub_26b82902
            if sub_9c5758e5 > !(arg3 / sub_92cc9479 * sub_c2bd1871[stor0[uint32(idx)]] / sub_cc092e8f + sub_26b82902):
                revert with 0, 17
            sub_9c5758e5 += arg3 / sub_92cc9479 * sub_c2bd1871[stor0[uint32(idx)]] / sub_cc092e8f + sub_26b82902
        else:
            _70 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = holders[uint32(idx)]
            mem[mem[64] + 100] = arg3 / sub_92cc9479 * sub_c2bd1871[stor0[uint32(idx)]]
            _71 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_71 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_71 + 36 len 28]
            mem[64] = _70 + 196
            mem[_70 + 132] = 32
            mem[_70 + 164] = 'SafeERC20: low-level call failed'
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            _77 = mem[_71]
            s = 0
            while s < _77:
                mem[s + _70 + 196] = mem[s + _71 + 32]
                s = s + 32
                continue 
            if ceil32(_77) > _77:
                mem[_77 + _70 + 196] = 0
            call rewardTokenAddress.mem[_70 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_70 + 200 len _77 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_70 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_70 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _70 + 264] = mem[idx + _70 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_70 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _70 + ceil32(return_data.size) + 197
                mem[_70 + 196] = return_data.size
                mem[_70 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_70 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_70 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _70 + ceil32(return_data.size) + 265] = mem[idx + _70 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_70 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_70 + 228] == bool(mem[_70 + 228])
                    if not mem[_70 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if uint32(idx) == test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
address sub_0457dad2Address;
array of struct sub_495444e7;
mapping of uint8 stor104;
mapping of uint256 coverCount;
mapping of uint256 sub_24715a07;
mapping of uint256 sub_9bb0a3f5;
mapping of uint256 coverMaxClaimableTimestamp;
mapping of uint256 sub_4baba0f0;
mapping of uint256 sub_0e0cba79;
mapping of address sub_6f54cdf2;
mapping of uint256 coverAmount;
mapping of uint256 sub_916ecfde;
mapping of uint256 sub_1fbfeff5;
mapping of uint256 buyCoverInsurTokenEarned;
uint256 totalInsurTokenRewardAmount;
mapping of uint256 coverRewardPctg;
mapping of uint256 coverClaimedAmount;
mapping of uint256 sub_3f100fd1;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;

function getCoverCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return coverCount[address(arg1)]
}

function sub_026ee189(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor104[arg1])
}

function sub_0457dad2(?) payable {
    return sub_0457dad2Address
}

function sub_0e0cba79(?) payable {
    require calldata.size - 4 >= 64
    return sub_0e0cba79[arg1][arg2]
}

function getCoverClaimedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return coverClaimedAmount[address(arg1)][arg2]
}

function getCoverMaxClaimableTimestamp(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return coverMaxClaimableTimestamp[address(arg1)][arg2]
}

function sub_18b251d0(?) payable {
    require calldata.size - 4 >= 32
    return coverCount[arg1]
}

function getCoverRewardPctg(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return coverRewardPctg[address(arg1)][arg2]
}

function sub_1fbfeff5(?) payable {
    require calldata.size - 4 >= 64
    return sub_1fbfeff5[arg1][arg2]
}

function getCoverEstimatedPremiumAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sub_1fbfeff5[address(arg1)][arg2]
}

function sub_24715a07(?) payable {
    require calldata.size - 4 >= 64
    return sub_24715a07[arg1][arg2]
}

function sub_3f100fd1(?) payable {
    require calldata.size - 4 >= 64
    return sub_3f100fd1[arg1][arg2]
}

function sub_443486ea(?) payable {
    require calldata.size - 4 >= 64
    return coverRewardPctg[arg1][arg2]
}

function sub_45eb753a(?) payable {
    require calldata.size - 4 >= 64
    return coverClaimedAmount[arg1][arg2]
}

function sub_495444e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_495444e7.length
    return address(sub_495444e7[arg1].field_0)
}

function sub_4b185d10(?) payable {
    return totalInsurTokenRewardAmount
}

function sub_4baba0f0(?) payable {
    require calldata.size - 4 >= 64
    return sub_4baba0f0[arg1][arg2]
}

function sub_6f54cdf2(?) payable {
    require calldata.size - 4 >= 64
    return sub_6f54cdf2[arg1][arg2]
}

function getCoverBeginTimestamp(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sub_24715a07[address(arg1)][arg2]
}

function owner() payable {
    return owner
}

function sub_916ecfde(?) payable {
    require calldata.size - 4 >= 64
    return sub_916ecfde[arg1][arg2]
}

function sub_9bb0a3f5(?) payable {
    require calldata.size - 4 >= 64
    return sub_9bb0a3f5[arg1][arg2]
}

function getBuyCoverInsurTokenEarned(address arg1) payable {
    require calldata.size - 4 >= 32
    return buyCoverInsurTokenEarned[address(arg1)]
}

function getCoverAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return coverAmount[address(arg1)][arg2]
}

function sub_b40e84c1(?) payable {
    require calldata.size - 4 >= 64
    return coverMaxClaimableTimestamp[arg1][arg2]
}

function sub_c79f99b8(?) payable {
    require calldata.size - 4 >= 64
    return coverAmount[arg1][arg2]
}

function getCoverCurrency(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sub_6f54cdf2[address(arg1)][arg2]
}

function sub_cda26924(?) payable {
    require calldata.size - 4 >= 32
    return buyCoverInsurTokenEarned[arg1]
}

function hasCoverOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor104[address(arg1)])
}

function getCoverProductId(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sub_4baba0f0[address(arg1)][arg2]
}

function getTotalInsurTokenRewardAmount() payable {
    return totalInsurTokenRewardAmount
}

function getCoverEndTimestamp(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sub_9bb0a3f5[address(arg1)][arg2]
}

function getCoverReferralRewardPctg(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sub_3f100fd1[address(arg1)][arg2]
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
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

function addCoverOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'OVA: 1'
    if stor104[address(arg1)]:
        revert with 0, 'ACO: 1'
    sub_495444e7.length++
    stor9787[stor103.length] = arg1
    stor104[address(arg1)] = 1
}

function getAdjustedCoverStatus(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_916ecfde[address(arg1)][arg2]:
        return sub_916ecfde[address(arg1)][arg2]
    if block.timestamp < sub_9bb0a3f5[address(arg1)][arg2]:
        return sub_916ecfde[address(arg1)][arg2]
    return 1
}

function setup(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    sub_ffe6e7d7Address = arg1
    sub_0457dad2Address = arg2
}

function getAllCoverCount() payable {
    idx = 0
    s = 0
    while idx < sub_495444e7.length:
        mem[0] = address(sub_495444e7[idx].field_0)
        mem[32] = 105
        if coverCount[address(stor103[idx].field_0)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = coverCount[address(stor103[idx].field_0)] + s
        continue 
    return (stor[_10] * sub_495444e7.length)
}

function isCoverClaimable(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_916ecfde[address(arg1)][arg2] == 2:
        return 0
    if sub_916ecfde[address(arg1)][arg2] == 3:
        return 0
    if sub_916ecfde[address(arg1)][arg2] == 4:
        return 0
    if sub_24715a07[address(arg1)][arg2] > block.timestamp:
        return 0
    if block.timestamp >= coverMaxClaimableTimestamp[address(arg1)][arg2]:
        return 0
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function decreaseTotalInsurTokenRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 > totalInsurTokenRewardAmount:
        revert with 0, 'SafeMath: subtraction overflow'
    totalInsurTokenRewardAmount -= arg1
}

function increaseTotalInsurTokenRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 + totalInsurTokenRewardAmount < totalInsurTokenRewardAmount:
        revert with 0, 'SafeMath: addition overflow'
    totalInsurTokenRewardAmount += arg1
}

function increaseCoverClaimedAmount(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg3 + coverClaimedAmount[address(arg1)][arg2] < coverClaimedAmount[address(arg1)][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    coverClaimedAmount[address(arg1)][arg2] += arg3
}

function decreaseBuyCoverInsurTokenEarned(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVA: 1'
    if arg2 > buyCoverInsurTokenEarned[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    buyCoverInsurTokenEarned[address(arg1)] -= arg2
}

function setCoverAmount(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    coverAmount[address(arg1)][arg2] = arg3
}

function increaseCoverCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVA: 1'
    if coverCount[address(arg1)] + 1 < coverCount[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    coverCount[address(arg1)]++
    return (coverCount[address(arg1)] + 1)
}

function setCoverStatus(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_916ecfde[address(arg1)][arg2] = arg3
}

function setCoverCurrency(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_6f54cdf2[address(arg1)][arg2] = arg3
}

function setCoverProductId(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_4baba0f0[address(arg1)][arg2] = arg3
}

function setCoverEndTimestamp(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_9bb0a3f5[address(arg1)][arg2] = arg3
}

function setCoverRewardPctg(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    coverRewardPctg[address(arg1)][arg2] = arg3
}

function setCoverBeginTimestamp(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_24715a07[address(arg1)][arg2] = arg3
}

function setCoverReferralRewardPctg(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_3f100fd1[address(arg1)][arg2] = arg3
}

function setCoverEstimatedPremiumAmount(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_1fbfeff5[address(arg1)][arg2] = arg3
}

function setCoverMaxClaimableTimestamp(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    coverMaxClaimableTimestamp[address(arg1)][arg2] = arg3
}

function increaseBuyCoverInsurTokenEarned(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVA: 1'
    if arg2 + buyCoverInsurTokenEarned[address(arg1)] < buyCoverInsurTokenEarned[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    buyCoverInsurTokenEarned[address(arg1)] += arg2
}

function getAllCoverOwnerList() payable {
    if not sub_495444e7.length:
        mem[(32 * sub_495444e7.length) + 128] = 32
        mem[(32 * sub_495444e7.length) + 160] = sub_495444e7.length
        mem[(32 * sub_495444e7.length) + 192 len floor32(sub_495444e7.length)] = mem[128 len floor32(sub_495444e7.length)]
        return memory
          from (32 * sub_495444e7.length) + 128
           len (96 * sub_495444e7.length) + 64
    mem[128] = address(sub_495444e7.field_0)
    idx = 128
    s = 0
    while (32 * sub_495444e7.length) + 96 > idx:
        mem[idx + 32] = address(sub_495444e7[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_495444e7.length) + 192 len floor32(sub_495444e7.length)] = mem[128 len floor32(sub_495444e7.length)]
    return Array(len=sub_495444e7.length, data=mem[128 len floor32(sub_495444e7.length)], mem[(32 * sub_495444e7.length) + floor32(sub_495444e7.length) + 192 len (32 * sub_495444e7.length) - floor32(sub_495444e7.length)]), 
}

function setNewCoverDetails(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 288
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'OVCI: 1'
    if arg2 <= 0:
        revert with 0, 'OVCI: 2'
    if arg2 > coverCount[address(arg1)]:
        revert with 0, 'OVCI: 2'
    sub_4baba0f0[address(arg1)][arg2] = arg3
    coverAmount[address(arg1)][arg2] = arg4
    sub_6f54cdf2[address(arg1)][arg2] = arg5
    sub_24715a07[address(arg1)][arg2] = arg6
    sub_9bb0a3f5[address(arg1)][arg2] = arg7
    coverMaxClaimableTimestamp[address(arg1)][arg2] = arg8
    sub_1fbfeff5[address(arg1)][arg2] = arg9
    sub_916ecfde[address(arg1)][arg2] = 0
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        totalInsurTokenRewardAmount = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            totalInsurTokenRewardAmount = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                totalInsurTokenRewardAmount = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    totalInsurTokenRewardAmount = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        totalInsurTokenRewardAmount = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        totalInsurTokenRewardAmount = 0
                        uint8(stor0.field_8) = 0
}



}

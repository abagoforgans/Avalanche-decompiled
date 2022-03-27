contract main {




// =====================  Runtime code  =====================


const cycleBalance = ext_call.return_data[0]

const Factory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x81440c939f2c1e34fc7048e518a637205a632a74


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
uint32 stor2;
address stor2;
uint256 stor2;
uint256 stor3;
array of struct rewardWeight;

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function getVaultRewardsCount() payable {
    return rewardWeight.length
}

function owner() payable {
    return owner
}

function getRewardWeight(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if rewardWeight[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < rewardWeight.length
        return rewardWeight[idx].field_256
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                59,
                0x535374616b696e6752657761726420636f6e747261637420646f6573206e6f7420657869737420696e207265776172647320636f6c6c656374696f,
                mem[223 len 5]
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardWeight.length
    return rewardWeight[arg1].field_0, rewardWeight[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_2d3434aa(?) payable {
    return address(stor2), stor3
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2c2eebea(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
    emit 0x5bf81f1c: arg1
}

function sub_7b5362ad(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor2) = arg1
    emit 0x547a8a8e: arg1
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
}

function updateRewardWeight(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if rewardWeight[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < rewardWeight.length
        rewardWeight[idx].field_256 = arg2
        emit RewardWeightUpdated(address(arg1), arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x414f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getRewardIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if rewardWeight[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return idx
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                59,
                0x535374616b696e6752657761726420636f6e747261637420646f6573206e6f7420657869737420696e207265776172647320636f6c6c656374696f,
                mem[223 len 5]
}

function addRewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if rewardWeight[idx].field_0 == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        51,
                        0x644469737472696275746f723a2052657761726420636f6e74726163742068617320616c7265616479206265656e2061646465,
                        mem[215 len 13]
        idx = idx + 1
        continue 
    rewardWeight.length++
    rewardWeight[rewardWeight.length].field_0 = arg1
    rewardWeight[rewardWeight.length].field_256 = 10
    emit RewardContractAdded(arg1);
}

function deleteRewardData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= rewardWeight.length:
        revert with 0, 'Distributor: Index out of bounds'
    idx = arg1
    while idx < rewardWeight.length - 1:
        require idx + 1 < rewardWeight.length
        require idx < rewardWeight.length
        mem[0] = 4
        rewardWeight[idx].field_0 = rewardWeight[idx + 1].field_0
        rewardWeight[idx].field_256 = rewardWeight[idx + 1].field_256
        idx = idx + 1
        continue 
    require rewardWeight.length
    rewardWeight[rewardWeight.length - 1].field_0 = 0
    rewardWeight[rewardWeight.length - 1].field_256 = 0
    rewardWeight.length--
    emit RewardContractDeleted(rewardWeight[arg1].field_0);
}

function getVaultTVL(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceLPinSystem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAVAXquoteForLPamount(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getCoreRewardsTVL() payable {
    require ext_code.size(address(stor2))
    staticcall address(stor2).stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor2))
    staticcall address(stor2).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(9314583757479222836, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(9314583757479222836, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            return 0
        require 0 / ext_call.return_data[0]
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        return (2 * 0 / ext_call.return_data[0])
    require ext_call.return_data[50 len 14]
    if ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]:
        return 0
    require ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]
    if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    return (2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0])
}

function getTotalWeight() payable {
    idx = 0
    s = stor3
    while idx < rewardWeight.length:
        mem[0] = 4
        if s + rewardWeight[idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + rewardWeight[idx].field_256
        continue 
    return (stor3 + (stor3 * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (stor3 * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length) + (s * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length * rewardWeight.length))
}

function distribute() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x654469737472696275746f7256323a2043616c6c6572206973206e6f7420616e20454f,
                    mem[199 len 29]
    mem[100] = this.address
    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4469737472696275746f7256323a204e6f204359434c4520746f20646973747269627574,
                    mem[201 len 27]
    emit CycleDistributedTotal(ext_call.return_data[0]);
    require rewardWeight.length <= test266151307()
    mem[96] = rewardWeight.length
    mem[64] = (32 * rewardWeight.length) + 128
    if not rewardWeight.length:
        idx = 0
        while idx < rewardWeight.length:
            require ext_code.size(rewardWeight[idx].field_0)
            staticcall rewardWeight[idx].field_0.stakingToken() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceLPinSystem() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAVAXquoteForLPamount(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < rewardWeight.length
            mem[0] = 4
            if not ext_call.return_data[0]:
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = 0
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * rewardWeight[idx].field_256 / ext_call.return_data[0] != rewardWeight[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if ext_call.return_data[0] * rewardWeight[idx].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = ext_call.return_data[0] * rewardWeight[idx].field_256
            require idx < rewardWeight.length
            mem[0] = 4
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = rewardWeight[idx].field_0
            idx = idx + 1
            continue 
        require ext_code.size(address(stor2))
        staticcall address(stor2).stakingToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor2))
        staticcall address(stor2).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1611 = mem[64]
        mem[mem[64] + 32] = 0x81440c939f2c1e34fc7048e518a637205a632a74000000000000000000000000
        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
        _1612 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        _1614 = sha3(mem[_1612 + 32 len mem[_1612]])
        mem[_1611 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[_1611 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
        mem[_1611 + 125] = _1614
        mem[_1611 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
        mem[_1611 + 72] = 85
        mem[64] = _1611 + 189
        require ext_code.size(address(sha3(0, 17269419903419772280, _1614, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
        staticcall address(sha3(0, 17269419903419772280, _1614, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                gas gas_remaining wei
        mem[_1611 + 189 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1611 + 225] = address(stor2)
                mem[_1611 + 257] = ext_call.return_data[0]
                mem[_1611 + 189] = 68
                mem[_1611 + 225 len 28] = Mask(224, 0, stor2)
                mem[_1611 + 221 len 4] = unknown_0xa9059cbb(?????)
                mem[_1611 + 289] = 32
                mem[_1611 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1611 + 459 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_1611 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_1611 + 445 len 4] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1611 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1611 + 463 len 22]
                else:
                    mem[_1611 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_1611 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1611 + ceil32(return_data.size) + 464 len 22]
            else:
                require 0 / ext_call.return_data[0]
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                if not uint255(0 / ext_call.return_data[0]):
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1611 + 225] = address(stor2)
                    mem[_1611 + 257] = ext_call.return_data[0]
                    mem[_1611 + 189] = 68
                    mem[_1611 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_1611 + 221 len 4] = unknown_0xa9059cbb(?????)
                    mem[_1611 + 289] = 32
                    mem[_1611 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1611 + 459 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[_1611 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_1611 + 445 len 4] = 0
                    mem[_1611 + 417 len 0] = 0
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1611 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1611 + 463 len 22]
                    else:
                        mem[_1611 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1611 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1611 + ceil32(return_data.size) + 464 len 22]
                else:
                    require 2 * 0 / ext_call.return_data[0]
                    if 2 * 0 / ext_call.return_data[0] * stor3 / 2 * 0 / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                    if 2 * 0 / ext_call.return_data[0] * stor3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _3075 = mem[96]
                    idx = 0
                    while idx < _3075:
                        require idx < mem[96]
                        _3105 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _3112 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if 2 * 0 / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * 0 / ext_call.return_data[0] * stor3
                            _3270 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / 2 * 0 / ext_call.return_data[0] * stor3
                            _3271 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3271 + 32] = mem[_3271 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _3270 + 164
                            mem[_3270 + 100] = 32
                            mem[_3270 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3270 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _3390 = mem[_3271]
                            t = _3271 + 32
                            u = _3270 + 164
                            s = mem[_3271]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_3270 + floor32(mem[_3271]) + 164] = mem[_3271 + -(mem[_3271] % 32) + floor32(mem[_3271]) + 64 len mem[_3271] % 32] or Mask(8 * -(mem[_3271] % 32) + 32, -(8 * -(mem[_3271] % 32) + 32) + 256, mem[_3270 + floor32(mem[_3271]) + 164])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[_3270 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3270 + 168 len _3390 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3270 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3270 + 168] = 32
                                    mem[_3270 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_3270 + idx + 232] = mem[_3270 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _3270 + -mem[64] + 264
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3270 + 274 len 22]
                                require ext_code.size(address(_3105))
                                call address(_3105).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / 2 * 0 / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3270 + 164] = address(_3105)
                                mem[_3270 + 196] = 0 / 2 * 0 / ext_call.return_data[0] * stor3
                            else:
                                mem[64] = _3270 + ceil32(return_data.size) + 165
                                mem[_3270 + 164] = return_data.size
                                mem[_3270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3270 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3270 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_3270 + ceil32(return_data.size) + idx + 233] = mem[_3270 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3270 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_3270 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3270 + ceil32(return_data.size) + 275 len 22]
                                require ext_code.size(address(_3105))
                                call address(_3105).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / 2 * 0 / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3270 + ceil32(return_data.size) + 165] = address(_3105)
                                mem[_3270 + ceil32(return_data.size) + 197] = 0 / 2 * 0 / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_3105), 0 / 2 * 0 / ext_call.return_data[0] * stor3);
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[(32 * idx) + 128] + 32] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 2 * 0 / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * 0 / ext_call.return_data[0] * stor3
                            _3317 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] * _3112 / 2 * 0 / ext_call.return_data[0] * stor3
                            _3318 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3318 + 32] = mem[_3318 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _3317 + 164
                            mem[_3317 + 100] = 32
                            mem[_3317 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3317 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _3422 = mem[_3318]
                            t = _3318 + 32
                            u = mem[64]
                            s = mem[_3318]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_3318])] = mem[_3318 + floor32(mem[_3318]) + -(mem[_3318] % 32) + 64 len mem[_3318] % 32] or Mask(8 * -(mem[_3318] % 32) + 32, -(8 * -(mem[_3318] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3318])])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3422 + _3317 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _4539 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3317 + 100]
                                    _4541 = mem[_3317 + 100]
                                    idx = 0
                                    while idx < _4541:
                                        mem[_4539 + idx + 68] = mem[_3317 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _4541 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _4541 + _4539 + -mem[64] + 68
                                    mem[floor32(_4541) + _4539 + 68] = mem[floor32(_4541) + _4539 + -(_4541 % 32) + 100 len _4541 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_4541) + _4539 + -mem[64] + 100
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _4467 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4467] = return_data.size
                                mem[_4467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4543 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3317 + 100]
                                    _4545 = mem[_3317 + 100]
                                    idx = 0
                                    while idx < _4545:
                                        mem[_4543 + idx + 68] = mem[_3317 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _4545 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _4545 + _4543 + -mem[64] + 68
                                    mem[floor32(_4545) + _4543 + 68] = mem[floor32(_4545) + _4543 + -(_4545 % 32) + 100 len _4545 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_4545) + _4543 + -mem[64] + 100
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_4467 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_3105))
                            call address(_3105).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * _3112 / 2 * 0 / ext_call.return_data[0] * stor3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3105)
                            mem[mem[64] + 32] = ext_call.return_data[0] * _3112 / 2 * 0 / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_3105), ext_call.return_data[0] * _3112 / 2 * 0 / ext_call.return_data[0] * stor3);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3165 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _3166 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3165 + 100] = 32
                    mem[_3165 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3165 + 270 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _3314 = mem[_3166]
                    mem[_3165 + 164 len floor32(mem[_3166])] = mem[_3166 + 32 len floor32(mem[_3166])]
                    mem[_3165 + floor32(mem[_3166]) + -(mem[_3166] % 32) + 196 len mem[_3166] % 32] = mem[_3166 + floor32(mem[_3166]) + -(mem[_3166] % 32) + 64 len mem[_3166] % 32]
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                         gas gas_remaining wei
                        args mem[_3165 + 168 len _3314 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3165 + 274 len 22]
                    else:
                        mem[_3165 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_3165 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3165 + ceil32(return_data.size) + 275 len 22]
        else:
            require ext_call.return_data[50 len 14]
            if ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1611 + 225] = address(stor2)
                mem[_1611 + 257] = ext_call.return_data[0]
                mem[_1611 + 189] = 68
                mem[_1611 + 225 len 28] = Mask(224, 0, stor2)
                mem[_1611 + 221 len 4] = unknown_0xa9059cbb(?????)
                mem[_1611 + 289] = 32
                mem[_1611 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1611 + 459 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_1611 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_1611 + 445 len 4] = 0
                mem[_1611 + 417 len 0] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1611 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1611 + 463 len 22]
                else:
                    mem[_1611 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_1611 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1611 + ceil32(return_data.size) + 464 len 22]
            else:
                require ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]
                if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                if not uint255(ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]):
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1611 + 225] = address(stor2)
                    mem[_1611 + 257] = ext_call.return_data[0]
                    mem[_1611 + 189] = 68
                    mem[_1611 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_1611 + 221 len 4] = unknown_0xa9059cbb(?????)
                    mem[_1611 + 289] = 32
                    mem[_1611 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1611 + 459 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[_1611 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_1611 + 445 len 4] = 0
                    mem[_1611 + 417 len 0] = 0
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1611 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1611 + 463 len 22]
                    else:
                        mem[_1611 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1611 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1611 + ceil32(return_data.size) + 464 len 22]
                else:
                    require 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]
                    if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] * stor3 / 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1611 + 290 len 31]
                    if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] * stor3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _3074 = mem[96]
                    idx = 0
                    while idx < _3074:
                        require idx < mem[96]
                        _3098 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _3110 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _3251 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _3252 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3252 + 32] = mem[_3252 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _3251 + 164
                            mem[_3251 + 100] = 32
                            mem[_3251 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3251 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _3386 = mem[_3252]
                            t = _3252 + 32
                            u = _3251 + 164
                            s = mem[_3252]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_3251 + floor32(mem[_3252]) + 164] = mem[_3252 + -(mem[_3252] % 32) + floor32(mem[_3252]) + 64 len mem[_3252] % 32] or Mask(8 * -(mem[_3252] % 32) + 32, -(8 * -(mem[_3252] % 32) + 32) + 256, mem[_3251 + floor32(mem[_3252]) + 164])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[_3251 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3251 + 168 len _3386 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3251 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3251 + 168] = 32
                                    mem[_3251 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_3251 + idx + 232] = mem[_3251 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _3251 + -mem[64] + 264
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3251 + 274 len 22]
                                require ext_code.size(address(_3098))
                                call address(_3098).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3251 + 164] = address(_3098)
                                mem[_3251 + 196] = 0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            else:
                                mem[64] = _3251 + ceil32(return_data.size) + 165
                                mem[_3251 + 164] = return_data.size
                                mem[_3251 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3251 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3251 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_3251 + ceil32(return_data.size) + idx + 233] = mem[_3251 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3251 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_3251 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3251 + ceil32(return_data.size) + 275 len 22]
                                require ext_code.size(address(_3098))
                                call address(_3098).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3251 + ceil32(return_data.size) + 165] = address(_3098)
                                mem[_3251 + ceil32(return_data.size) + 197] = 0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_3098), 0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3);
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[(32 * idx) + 128] + 32] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _3302 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] * _3110 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _3303 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3303 + 32] = mem[_3303 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _3302 + 164
                            mem[_3302 + 100] = 32
                            mem[_3302 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3302 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _3406 = mem[_3303]
                            t = _3303 + 32
                            u = _3302 + 164
                            s = mem[_3303]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_3302 + floor32(mem[_3303]) + 164] = mem[_3303 + -(mem[_3303] % 32) + floor32(mem[_3303]) + 64 len mem[_3303] % 32] or Mask(8 * -(mem[_3303] % 32) + 32, -(8 * -(mem[_3303] % 32) + 32) + 256, mem[_3302 + floor32(mem[_3303]) + 164])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[_3302 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3302 + 168 len _3406 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3302 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3302 + 168] = 32
                                    mem[_3302 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_3302 + idx + 232] = mem[_3302 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _3302 + -mem[64] + 264
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3302 + 274 len 22]
                                require ext_code.size(address(_3098))
                                call address(_3098).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * _3110 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3302 + 164] = address(_3098)
                                mem[_3302 + 196] = ext_call.return_data[0] * _3110 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            else:
                                mem[64] = _3302 + ceil32(return_data.size) + 165
                                mem[_3302 + 164] = return_data.size
                                mem[_3302 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3302 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3302 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_3302 + ceil32(return_data.size) + idx + 233] = mem[_3302 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3302 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_3302 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3302 + ceil32(return_data.size) + 275 len 22]
                                require ext_code.size(address(_3098))
                                call address(_3098).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * _3110 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3302 + ceil32(return_data.size) + 165] = address(_3098)
                                mem[_3302 + ceil32(return_data.size) + 197] = ext_call.return_data[0] * _3110 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_3098), ext_call.return_data[0] * _3110 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3160 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _3161 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3160 + 100] = 32
                    mem[_3160 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3160 + 270 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _3299 = mem[_3161]
                    mem[_3160 + 164 len floor32(mem[_3161])] = mem[_3161 + 32 len floor32(mem[_3161])]
                    mem[_3160 + floor32(mem[_3161]) + -(mem[_3161] % 32) + 196 len mem[_3161] % 32] = mem[_3161 + floor32(mem[_3161]) + -(mem[_3161] % 32) + 64 len mem[_3161] % 32]
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                         gas gas_remaining wei
                        args mem[_3160 + 168 len _3299 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3160 + 274 len 22]
                    else:
                        mem[_3160 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_3160 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3160 + ceil32(return_data.size) + 275 len 22]
    else:
        mem[64] = (32 * rewardWeight.length) + 192
        mem[(32 * rewardWeight.length) + 128] = 0
        mem[(32 * rewardWeight.length) + 160] = 0
        mem[var21001] = (32 * rewardWeight.length) + 128
        s = var21001
        idx = var21002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * rewardWeight.length) + 128] = 0
            mem[(32 * rewardWeight.length) + 160] = 0
            mem[s + 32] = (32 * rewardWeight.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < rewardWeight.length:
            require ext_code.size(rewardWeight[idx].field_0)
            staticcall rewardWeight[idx].field_0.stakingToken() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceLPinSystem() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAVAXquoteForLPamount(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < rewardWeight.length
            mem[0] = 4
            if not ext_call.return_data[0]:
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = 0
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * rewardWeight[idx].field_256 / ext_call.return_data[0] != rewardWeight[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if ext_call.return_data[0] * rewardWeight[idx].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = ext_call.return_data[0] * rewardWeight[idx].field_256
            require idx < rewardWeight.length
            mem[0] = 4
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = rewardWeight[idx].field_0
            idx = idx + 1
            continue 
        require ext_code.size(address(stor2))
        staticcall address(stor2).stakingToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor2))
        staticcall address(stor2).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _4786 = mem[64]
        mem[mem[64] + 32] = 0x81440c939f2c1e34fc7048e518a637205a632a74000000000000000000000000
        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
        _4787 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        _4789 = sha3(mem[_4787 + 32 len mem[_4787]])
        mem[_4786 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[_4786 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
        mem[_4786 + 125] = _4789
        mem[_4786 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
        mem[_4786 + 72] = 85
        mem[64] = _4786 + 189
        require ext_code.size(address(sha3(0, 17269419903419772280, _4789, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
        staticcall address(sha3(0, 17269419903419772280, _4789, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                gas gas_remaining wei
        mem[_4786 + 189 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_4786 + 225] = address(stor2)
                mem[_4786 + 257] = ext_call.return_data[0]
                mem[_4786 + 189] = 68
                mem[_4786 + 225 len 28] = Mask(224, 0, stor2)
                mem[_4786 + 221 len 4] = unknown_0xa9059cbb(?????)
                mem[_4786 + 289] = 32
                mem[_4786 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4786 + 459 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_4786 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_4786 + 445 len 4] = 0
                mem[_4786 + 417 len 0] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4786 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4786 + 463 len 22]
                else:
                    mem[_4786 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_4786 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4786 + ceil32(return_data.size) + 464 len 22]
            else:
                require 0 / ext_call.return_data[0]
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                if not uint255(0 / ext_call.return_data[0]):
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4786 + 225] = address(stor2)
                    mem[_4786 + 257] = ext_call.return_data[0]
                    mem[_4786 + 189] = 68
                    mem[_4786 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_4786 + 221 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4786 + 289] = 32
                    mem[_4786 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4786 + 459 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[_4786 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_4786 + 445 len 4] = 0
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4786 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4786 + 463 len 22]
                    else:
                        mem[_4786 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_4786 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4786 + ceil32(return_data.size) + 464 len 22]
                else:
                    require 2 * 0 / ext_call.return_data[0]
                    if 2 * 0 / ext_call.return_data[0] * stor3 / 2 * 0 / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                    if 2 * 0 / ext_call.return_data[0] * stor3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _5514 = mem[96]
                    idx = 0
                    while idx < _5514:
                        require idx < mem[96]
                        _5579 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _5598 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if 2 * 0 / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * 0 / ext_call.return_data[0] * stor3
                            _5742 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / 2 * 0 / ext_call.return_data[0] * stor3
                            _5743 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5743 + 32] = mem[_5743 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _5742 + 164
                            mem[_5742 + 100] = 32
                            mem[_5742 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5742 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _5850 = mem[_5743]
                            t = _5743 + 32
                            u = _5742 + 164
                            s = mem[_5743]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_5742 + floor32(mem[_5743]) + 164] = mem[_5743 + -(mem[_5743] % 32) + floor32(mem[_5743]) + 64 len mem[_5743] % 32] or Mask(8 * -(mem[_5743] % 32) + 32, -(8 * -(mem[_5743] % 32) + 32) + 256, mem[_5742 + floor32(mem[_5743]) + 164])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[_5742 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5742 + 168 len _5850 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5742 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5742 + 168] = 32
                                    mem[_5742 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_5742 + idx + 232] = mem[_5742 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _5742 + -mem[64] + 264
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_5742 + 274 len 22]
                                require ext_code.size(address(_5579))
                                call address(_5579).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / 2 * 0 / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5742 + 164] = address(_5579)
                                mem[_5742 + 196] = 0 / 2 * 0 / ext_call.return_data[0] * stor3
                            else:
                                mem[64] = _5742 + ceil32(return_data.size) + 165
                                mem[_5742 + 164] = return_data.size
                                mem[_5742 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5742 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5742 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[_5742 + ceil32(return_data.size) + idx + 233] = mem[_5742 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5742 + ceil32(return_data.size) + 233]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_5742 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_5742 + ceil32(return_data.size) + 275 len 22]
                                require ext_code.size(address(_5579))
                                call address(_5579).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / 2 * 0 / ext_call.return_data[0] * stor3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5742 + ceil32(return_data.size) + 165] = address(_5579)
                                mem[_5742 + ceil32(return_data.size) + 197] = 0 / 2 * 0 / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_5579), 0 / 2 * 0 / ext_call.return_data[0] * stor3);
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[(32 * idx) + 128] + 32] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 2 * 0 / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * 0 / ext_call.return_data[0] * stor3
                            _5782 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] * _5598 / 2 * 0 / ext_call.return_data[0] * stor3
                            _5783 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5783 + 32] = mem[_5783 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _5782 + 164
                            mem[_5782 + 100] = 32
                            mem[_5782 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5782 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _5882 = mem[_5783]
                            t = _5783 + 32
                            u = mem[64]
                            s = mem[_5783]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_5783])] = mem[_5783 + floor32(mem[_5783]) + -(mem[_5783] % 32) + 64 len mem[_5783] % 32] or Mask(8 * -(mem[_5783] % 32) + 32, -(8 * -(mem[_5783] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5783])])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5882 + _5782 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _6251 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5782 + 100]
                                    _6253 = mem[_5782 + 100]
                                    idx = 0
                                    while idx < _6253:
                                        mem[_6251 + idx + 68] = mem[_5782 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6253 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6253 + _6251 + -mem[64] + 68
                                    mem[floor32(_6253) + _6251 + 68] = mem[floor32(_6253) + _6251 + -(_6253 % 32) + 100 len _6253 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6253) + _6251 + -mem[64] + 100
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _6189 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6189] = return_data.size
                                mem[_6189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6255 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5782 + 100]
                                    _6257 = mem[_5782 + 100]
                                    idx = 0
                                    while idx < _6257:
                                        mem[_6255 + idx + 68] = mem[_5782 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6257 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6257 + _6255 + -mem[64] + 68
                                    mem[floor32(_6257) + _6255 + 68] = mem[floor32(_6257) + _6255 + -(_6257 % 32) + 100 len _6257 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6257) + _6255 + -mem[64] + 100
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_6189 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_5579))
                            call address(_5579).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * _5598 / 2 * 0 / ext_call.return_data[0] * stor3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_5579)
                            mem[mem[64] + 32] = ext_call.return_data[0] * _5598 / 2 * 0 / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_5579), ext_call.return_data[0] * _5598 / 2 * 0 / ext_call.return_data[0] * stor3);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5648 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _5649 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_5648 + 100] = 32
                    mem[_5648 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5648 + 270 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5779 = mem[_5649]
                    mem[_5648 + 164 len floor32(mem[_5649])] = mem[_5649 + 32 len floor32(mem[_5649])]
                    mem[_5648 + floor32(mem[_5649]) + -(mem[_5649] % 32) + 196 len mem[_5649] % 32] = mem[_5649 + floor32(mem[_5649]) + -(mem[_5649] % 32) + 64 len mem[_5649] % 32]
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                         gas gas_remaining wei
                        args mem[_5648 + 168 len _5779 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5648 + 274 len 22]
                    else:
                        mem[_5648 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5648 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5648 + ceil32(return_data.size) + 275 len 22]
        else:
            require ext_call.return_data[50 len 14]
            if ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_4786 + 225] = address(stor2)
                mem[_4786 + 257] = ext_call.return_data[0]
                mem[_4786 + 189] = 68
                mem[_4786 + 225 len 28] = Mask(224, 0, stor2)
                mem[_4786 + 221 len 4] = unknown_0xa9059cbb(?????)
                mem[_4786 + 289] = 32
                mem[_4786 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4786 + 459 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_4786 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_4786 + 445 len 4] = 0
                mem[_4786 + 417 len 0] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4786 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4786 + 463 len 22]
                else:
                    mem[_4786 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_4786 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4786 + ceil32(return_data.size) + 464 len 22]
            else:
                require ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]
                if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                if not uint255(ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]):
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[128] + 32] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4786 + 225] = address(stor2)
                    mem[_4786 + 257] = ext_call.return_data[0]
                    mem[_4786 + 189] = 68
                    mem[_4786 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_4786 + 221 len 4] = unknown_0xa9059cbb(?????)
                    mem[_4786 + 289] = 32
                    mem[_4786 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4786 + 459 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[_4786 + 353 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_4786 + 445 len 4] = 0
                    mem[_4786 + 417 len 0] = 0
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4786 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4786 + 463 len 22]
                    else:
                        mem[_4786 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_4786 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4786 + ceil32(return_data.size) + 464 len 22]
                else:
                    require 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0]
                    if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] * stor3 / 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4786 + 290 len 31]
                    if 2 * ext_call.return_data[50 len 14] * ext_call.return_data[0] / ext_call.return_data[0] * stor3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _5513 = mem[96]
                    idx = 0
                    while idx < _5513:
                        require idx < mem[96]
                        _5572 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _5596 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _5723 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _5724 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5724 + 32] = mem[_5724 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _5723 + 164
                            mem[_5723 + 100] = 32
                            mem[_5723 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5723 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _5846 = mem[_5724]
                            t = _5724 + 32
                            u = mem[64]
                            s = mem[_5724]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_5724])] = mem[_5724 + floor32(mem[_5724]) + -(mem[_5724] % 32) + 64 len mem[_5724] % 32] or Mask(8 * -(mem[_5724] % 32) + 32, -(8 * -(mem[_5724] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5724])])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5846 + _5723 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _6235 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5723 + 100]
                                    _6237 = mem[_5723 + 100]
                                    idx = 0
                                    while idx < _6237:
                                        mem[_6235 + idx + 68] = mem[_5723 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6237 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6237 + _6235 + -mem[64] + 68
                                    mem[floor32(_6237) + _6235 + 68] = mem[floor32(_6237) + _6235 + -(_6237 % 32) + 100 len _6237 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6237) + _6235 + -mem[64] + 100
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _6179 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6179] = return_data.size
                                mem[_6179 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6239 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5723 + 100]
                                    _6241 = mem[_5723 + 100]
                                    idx = 0
                                    while idx < _6241:
                                        mem[_6239 + idx + 68] = mem[_5723 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6241 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6241 + _6239 + -mem[64] + 68
                                    mem[floor32(_6241) + _6239 + 68] = mem[floor32(_6241) + _6239 + -(_6241 % 32) + 100 len _6241 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6241) + _6239 + -mem[64] + 100
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_6179 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_5572))
                            call address(_5572).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_5572)
                            mem[mem[64] + 32] = 0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_5572), 0 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3);
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * mem[mem[(32 * idx) + 128] + 32] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _5767 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] * _5596 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            _5768 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5768 + 32] = mem[_5768 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = _5767 + 164
                            mem[_5767 + 100] = 32
                            mem[_5767 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5767 + 270 len 26]
                            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _5866 = mem[_5768]
                            t = _5768 + 32
                            u = mem[64]
                            s = mem[_5768]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_5768])] = mem[_5768 + floor32(mem[_5768]) + -(mem[_5768] % 32) + 64 len mem[_5768] % 32] or Mask(8 * -(mem[_5768] % 32) + 32, -(8 * -(mem[_5768] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5768])])
                            call 0x81440c939f2c1e34fc7048e518a637205a632a74.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5866 + _5767 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _6227 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5767 + 100]
                                    _6229 = mem[_5767 + 100]
                                    idx = 0
                                    while idx < _6229:
                                        mem[_6227 + idx + 68] = mem[_5767 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6229 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6229 + _6227 + -mem[64] + 68
                                    mem[floor32(_6229) + _6227 + 68] = mem[floor32(_6229) + _6227 + -(_6229 % 32) + 100 len _6229 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6229) + _6227 + -mem[64] + 100
                                if mem[96] > 0:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _6178 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6178] = return_data.size
                                mem[_6178 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6231 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5767 + 100]
                                    _6233 = mem[_5767 + 100]
                                    idx = 0
                                    while idx < _6233:
                                        mem[_6231 + idx + 68] = mem[_5767 + idx + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6233 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6233 + _6231 + -mem[64] + 68
                                    mem[floor32(_6233) + _6231 + 68] = mem[floor32(_6233) + _6231 + -(_6233 % 32) + 100 len _6233 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6233) + _6231 + -mem[64] + 100
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[_6178 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_5572))
                            call address(_5572).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * _5596 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_5572)
                            mem[mem[64] + 32] = ext_call.return_data[0] * _5596 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3
                            emit CycleDistributed(address(_5572), ext_call.return_data[0] * _5596 / 2 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / ext_call.return_data[0] * stor3);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5643 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _5644 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_5643 + 100] = 32
                    mem[_5643 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5643 + 270 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5764 = mem[_5644]
                    mem[_5643 + 164 len floor32(mem[_5644])] = mem[_5644 + 32 len floor32(mem[_5644])]
                    mem[_5643 + floor32(mem[_5644]) + -(mem[_5644] % 32) + 196 len mem[_5644] % 32] = mem[_5644 + floor32(mem[_5644]) + -(mem[_5644] % 32) + 64 len mem[_5644] % 32]
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
                         gas gas_remaining wei
                        args mem[_5643 + 168 len _5764 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5643 + 274 len 22]
                    else:
                        mem[_5643 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5643 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5643 + ceil32(return_data.size) + 275 len 22]
    require ext_code.size(address(stor2))
    call address(stor2).notifyRewardAmount(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CycleDistributed(address(stor2), ext_call.return_data[0]);
    stor1 = 1
}



}

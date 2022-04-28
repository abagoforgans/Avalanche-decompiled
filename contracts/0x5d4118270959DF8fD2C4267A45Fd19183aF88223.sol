contract main {




// =====================  Runtime code  =====================


#
#  - batchLiquidateTroves(address[] arg1)
#  - liquidate(address arg1)
#  - liquidateTroves(uint256 arg1)
#  - redeemCollateral(uint256 arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#
const sub_4fa8e0d0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const _100pct = 10^18

const BETA = 2

const MIN_NET_DEBT = (5 * 10^16 * 3600)

const MAX_BORROWING_FEE = 5 * 10^16

const REDEMPTION_FEE_FLOOR = 5 * 10^15

const LUSD_GAS_COMPENSATION = 20 * 10^18

const PERCENT_DIVISOR = 200

const CCR = 15 * 10^17

const SECONDS_IN_ONE_MINUTE = 60

const MCR = 11 * 10^17

const DECIMAL_PRECISION = 10^18

const NAME = ''

const BOOTSTRAP_PERIOD = (336 * 24 * 3600)

const MINUTE_DECAY_FACTOR = 999037758833783000

const BORROWING_FEE_FLOOR = 5 * 10^15


address activePoolAddress;
address defaultPoolAddress;
bool stor2; offset 256
uint8 initialized; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
address priceFeedAddress;
address borrowerOperationsAddress;
address stabilityPoolAddress;
address stor5;
address stor6;
address lusdTokenAddress;
address lqtyTokenAddress;
address lqtyStakingAddress;
address sortedTrovesAddress;
uint256 baseRate;
uint256 lastFeeOperationTime;
uint256 deploymentTime;
mapping of struct troveStatus;
uint256 totalStakes;
uint256 totalStakesSnapshot;
uint256 totalCollateralSnapshot;
uint256 L_ETH;
uint256 l_LUSDDebt;
mapping of struct rewardSnapshots;
array of address troveFromTroveOwnersArray;
uint256 lastETHError_Redistribution;
uint256 lastLUSDDebtError_Redistribution;
array of address stor38878206584692966203415385907871375197469080758325516314230789535345649042549;

function stabilityPool() payable {
    return stabilityPoolAddress
}

function lastLUSDDebtError_Redistribution() payable {
    return lastLUSDDebtError_Redistribution
}

function initialized() payable {
    return bool(initialized)
}

function rewardSnapshots(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardSnapshots[arg1].field_0, rewardSnapshots[arg1].field_256
}

function baseRate() payable {
    return baseRate
}

function lqtyToken() payable {
    return lqtyTokenAddress
}

function getTroveStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    require troveStatus[address(arg1)].field_768 <= 4
    return troveStatus[address(arg1)].field_768
}

function defaultPool() payable {
    return defaultPoolAddress
}

function getTroveColl(address arg1) payable {
    require calldata.size - 4 >= 32
    return troveStatus[address(arg1)].field_256
}

function getTroveOwnersCount() payable {
    return troveFromTroveOwnersArray.length
}

function getTroveStake(address arg1) payable {
    require calldata.size - 4 >= 32
    return troveStatus[address(arg1)].field_512
}

function Troves(address arg1) payable {
    require calldata.size - 4 >= 32
    require troveStatus[arg1].field_768 <= 4
    return troveStatus[arg1].field_0, 
           troveStatus[arg1].field_256,
           troveStatus[arg1].field_512,
           troveStatus[arg1].field_768,
           troveStatus[arg1].field_776
}

function priceFeed() payable {
    return priceFeedAddress
}

function TroveOwners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < troveFromTroveOwnersArray.length
    return troveFromTroveOwnersArray[arg1]
}

function lastETHError_Redistribution() payable {
    return lastETHError_Redistribution
}

function activePool() payable {
    return activePoolAddress
}

function totalStakesSnapshot() payable {
    return totalStakesSnapshot
}

function totalCollateralSnapshot() payable {
    return totalCollateralSnapshot
}

function L_ETH() payable {
    return L_ETH
}

function lqtyStaking() payable {
    return lqtyStakingAddress
}

function sortedTroves() payable {
    return sortedTrovesAddress
}

function borrowerOperationsAddress() payable {
    return borrowerOperationsAddress
}

function lusdToken() payable {
    return lusdTokenAddress
}

function totalStakes() payable {
    return totalStakes
}

function lastFeeOperationTime() payable {
    return lastFeeOperationTime
}

function getTroveDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    return troveStatus[address(arg1)].field_0
}

function getTroveFromTroveOwnersArray(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < troveFromTroveOwnersArray.length
    return troveFromTroveOwnersArray[arg1]
}

function L_LUSDDebt() payable {
    return l_LUSDDebt
}

function deploymentTime() payable {
    return deploymentTime
}

function _fallback() payable {
    revert
}

function getRedemptionRate() payable {
    if baseRate + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'SafeMath: addition overflow'
    if baseRate + 5 * 10^15 < 10^18:
        return (baseRate + 5 * 10^15)
    return 10^18
}

function getBorrowingRate() payable {
    if baseRate + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'SafeMath: addition overflow'
    if baseRate + 5 * 10^15 < 5 * 10^16:
        return (baseRate + 5 * 10^15)
    return 5 * 10^16
}

function hasPendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 == 1:
        return (rewardSnapshots[address(arg1)].field_0 < L_ETH)
    else:
        return 0
}

function setTroveStatus(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    require arg2 <= 4
    troveStatus[address(arg1)].field_768 = arg2 or Mask(248, 8, troveStatus[address(arg1)].field_768)
}

function updateTroveRewardSnapshots(address arg1) payable {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    rewardSnapshots[address(arg1)].field_0 = L_ETH
    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
}

function removeStake(address arg1) payable {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    if troveStatus[address(arg1)].field_512 > totalStakes:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStakes -= troveStatus[address(arg1)].field_512
    troveStatus[address(arg1)].field_512 = 0
}

function decreaseTroveDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    if arg2 > troveStatus[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    troveStatus[address(arg1)].field_0 -= arg2
    return (troveStatus[address(arg1)].field_0 - arg2)
}

function decreaseTroveColl(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    if arg2 > troveStatus[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    troveStatus[address(arg1)].field_256 -= arg2
    return (troveStatus[address(arg1)].field_256 - arg2)
}

function increaseTroveDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    if arg2 + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    troveStatus[address(arg1)].field_0 += arg2
    return (arg2 + troveStatus[address(arg1)].field_0)
}

function increaseTroveColl(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    if arg2 + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    troveStatus[address(arg1)].field_256 += arg2
    return (arg2 + troveStatus[address(arg1)].field_256)
}

function getEntireSystemDebt() payable {
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function getEntireSystemColl() payable {
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function addTroveOwnerToArray(address arg1) payable {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    troveFromTroveOwnersArray.length++
    stor55F4[stor21.length] = arg1
    if 1 > troveFromTroveOwnersArray.length:
        revert with 0, 'SafeMath: subtraction overflow'
    troveStatus[address(arg1)].field_776 = uint128(troveFromTroveOwnersArray.length - 1)
    return uint128(troveFromTroveOwnersArray.length - 1)
}

function getBorrowingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if baseRate + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'SafeMath: addition overflow'
    if baseRate + 5 * 10^15 >= 5 * 10^16:
        if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (5 * 10^16 * arg1 / 10^18)
    if not baseRate + 5 * 10^15:
        return 0
    if (5 * 10^15 * arg1) + (baseRate * arg1) / baseRate + 5 * 10^15 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((5 * 10^15 * arg1) + (baseRate * arg1) / 10^18)
}

function collToDebt(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not arg1:
            return 0
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (arg2 * arg1 / 10^18)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^uint8(ext_call.return_data[0]))
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (arg2 * arg1 / 10^uint8(ext_call.return_data[0]))
}

function debtToColl(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not arg1:
            if not arg2:
                revert with 0, 'SafeMath: division by zero'
            return (0 / arg2)
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * arg1 / arg2)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg2)
    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2:
        revert with 0, 'SafeMath: division by zero'
    return (10^uint8(ext_call.return_data[0]) * arg1 / arg2)
}

function getPendingETHReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if rewardSnapshots[address(arg1)].field_0 > L_ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    if not L_ETH - rewardSnapshots[address(arg1)].field_0:
        return 0
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        return 0
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            return 0
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^uint8(ext_call.return_data[0]))
    if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
}

function getPendingLUSDDebtReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        return 0
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        return 0
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            return 0
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^uint8(ext_call.return_data[0]))
    if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
}

function closeTrove(address arg1) payable {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    if troveFromTroveOwnersArray.length <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6454726f76654d616e616765723a204f6e6c79206f6e652074726f766520696e20746865207379737465,
                    mem[206 len 22]
    require ext_code.size(sortedTrovesAddress)
    staticcall sortedTrovesAddress.0xde8fa431 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6454726f76654d616e616765723a204f6e6c79206f6e652074726f766520696e20746865207379737465,
                    mem[206 len 22]
    troveStatus[address(arg1)].field_768 = 2
    troveStatus[address(arg1)].field_256 = 0
    troveStatus[address(arg1)].field_0 = 0
    rewardSnapshots[address(arg1)].field_0 = 0
    rewardSnapshots[address(arg1)].field_256 = 0
    require troveStatus[address(arg1)].field_768 <= 4
    require troveStatus[address(arg1)].field_768
    require troveStatus[address(arg1)].field_768 <= 4
    require troveStatus[address(arg1)].field_768 != 1
    if 1 > troveFromTroveOwnersArray.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require troveStatus[address(arg1)].field_776 <= troveFromTroveOwnersArray.length - 1
    require troveFromTroveOwnersArray.length - 1 < troveFromTroveOwnersArray.length
    require troveStatus[address(arg1)].field_776 < troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[stor14[address(arg1)].field_776] = troveFromTroveOwnersArray[troveFromTroveOwnersArray.length]
    troveStatus[stor21[stor21.length]].field_776 = troveStatus[address(arg1)].field_776
    emit TroveIndexUpdated(troveFromTroveOwnersArray[troveFromTroveOwnersArray.length], troveStatus[address(arg1)].field_776);
    require troveFromTroveOwnersArray.length
    troveFromTroveOwnersArray[troveFromTroveOwnersArray.length] = 0
    troveFromTroveOwnersArray.length--
    require ext_code.size(sortedTrovesAddress)
    call sortedTrovesAddress.0x29092d0e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateStakeAndTotalStakes(address arg1) payable {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    if 0 == totalCollateralSnapshot:
        troveStatus[address(arg1)].field_512 = troveStatus[address(arg1)].field_256
        if troveStatus[address(arg1)].field_512 > totalStakes:
            revert with 0, 'SafeMath: subtraction overflow'
        if troveStatus[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalStakes = troveStatus[address(arg1)].field_256 + totalStakes - troveStatus[address(arg1)].field_512
        emit TotalStakesUpdated((troveStatus[address(arg1)].field_256 + totalStakes - troveStatus[address(arg1)].field_512));
        return troveStatus[address(arg1)].field_256
    require totalStakesSnapshot > 0
    if not troveStatus[address(arg1)].field_256:
        if not totalCollateralSnapshot:
            revert with 0, 'SafeMath: division by zero'
        troveStatus[address(arg1)].field_512 = 0 / totalCollateralSnapshot
        if troveStatus[address(arg1)].field_512 > totalStakes:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / totalCollateralSnapshot < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalStakes = (0 / totalCollateralSnapshot) + totalStakes - troveStatus[address(arg1)].field_512
        emit TotalStakesUpdated(((0 / totalCollateralSnapshot) + totalStakes - troveStatus[address(arg1)].field_512));
        return (0 / totalCollateralSnapshot)
    if totalStakesSnapshot * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != totalStakesSnapshot:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalCollateralSnapshot:
        revert with 0, 'SafeMath: division by zero'
    troveStatus[address(arg1)].field_512 = totalStakesSnapshot * troveStatus[address(arg1)].field_256 / totalCollateralSnapshot
    if troveStatus[address(arg1)].field_512 > totalStakes:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalStakesSnapshot * troveStatus[address(arg1)].field_256 / totalCollateralSnapshot < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalStakes = (totalStakesSnapshot * troveStatus[address(arg1)].field_256 / totalCollateralSnapshot) + totalStakes - troveStatus[address(arg1)].field_512
    emit TotalStakesUpdated(((totalStakesSnapshot * troveStatus[address(arg1)].field_256 / totalCollateralSnapshot) + totalStakes - troveStatus[address(arg1)].field_512));
    return (totalStakesSnapshot * troveStatus[address(arg1)].field_256 / totalCollateralSnapshot)
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10, address arg11) payable {
    require calldata.size - 4 >= 352
    if uint8(stor2.field_168):
        deploymentTime = block.timestamp
        borrowerOperationsAddress = arg1
        activePoolAddress = arg2
        defaultPoolAddress = arg3
        stabilityPoolAddress = arg4
        stor5 = arg5
        stor6 = arg6
        priceFeedAddress = arg7
        lusdTokenAddress = arg8
        sortedTrovesAddress = arg9
        lqtyTokenAddress = arg10
        lqtyStakingAddress = arg11
        emit BorrowerOperationsAddressChanged(arg1);
        emit ActivePoolAddressChanged(arg2);
        emit DefaultPoolAddressChanged(arg3);
        emit StabilityPoolAddressChanged(arg4);
        emit GasPoolAddressChanged(arg5);
        emit CollSurplusPoolAddressChanged(arg6);
        emit PriceFeedAddressChanged(arg7);
        emit LUSDTokenAddressChanged(arg8);
        emit SortedTrovesAddressChanged(arg9);
        emit LQTYTokenAddressChanged(arg10);
        emit LQTYStakingAddressChanged(arg11);
    else:
        if ext_code.size(this.address):
            if initialized:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor2.field_168):
            deploymentTime = block.timestamp
            borrowerOperationsAddress = arg1
            activePoolAddress = arg2
            defaultPoolAddress = arg3
            stabilityPoolAddress = arg4
            stor5 = arg5
            stor6 = arg6
            priceFeedAddress = arg7
            lusdTokenAddress = arg8
            sortedTrovesAddress = arg9
            lqtyTokenAddress = arg10
            lqtyStakingAddress = arg11
            emit BorrowerOperationsAddressChanged(arg1);
            emit ActivePoolAddressChanged(arg2);
            emit DefaultPoolAddressChanged(arg3);
            emit StabilityPoolAddressChanged(arg4);
            emit GasPoolAddressChanged(arg5);
            emit CollSurplusPoolAddressChanged(arg6);
            emit PriceFeedAddressChanged(arg7);
            emit LUSDTokenAddressChanged(arg8);
            emit SortedTrovesAddressChanged(arg9);
            emit LQTYTokenAddressChanged(arg10);
            emit LQTYStakingAddressChanged(arg11);
        else:
            initialized = 1
            uint8(stor2.field_168) = 1
            Mask(88, 0, stor2.field_168) = 0
            stor2.field_256 % 1 = 0
            deploymentTime = block.timestamp
            borrowerOperationsAddress = arg1
            activePoolAddress = arg2
            defaultPoolAddress = arg3
            stabilityPoolAddress = arg4
            stor5 = arg5
            stor6 = arg6
            priceFeedAddress = arg7
            lusdTokenAddress = arg8
            sortedTrovesAddress = arg9
            lqtyTokenAddress = arg10
            lqtyStakingAddress = arg11
            emit BorrowerOperationsAddressChanged(arg1);
            emit ActivePoolAddressChanged(arg2);
            emit DefaultPoolAddressChanged(arg3);
            emit StabilityPoolAddressChanged(arg4);
            emit GasPoolAddressChanged(arg5);
            emit CollSurplusPoolAddressChanged(arg6);
            emit PriceFeedAddressChanged(arg7);
            emit LUSDTokenAddressChanged(arg8);
            emit SortedTrovesAddressChanged(arg9);
            emit LQTYTokenAddressChanged(arg10);
            emit LQTYStakingAddressChanged(arg11);
            uint8(stor2.field_168) = 0
}

function getTCR(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not 2 * ext_call.return_data[0]:
            if not uint255(ext_call.return_data[0]):
                return -1
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * ext_call.return_data[0])
        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not uint255(ext_call.return_data[0]):
            return -1
        if not 2 * 10^18 * ext_call.return_data[0] / 10^18:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * ext_call.return_data[0])
        if arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 2 * 10^18 * ext_call.return_data[0] / 10^18 != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 2 * ext_call.return_data[0])
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * ext_call.return_data[0]:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not uint255(ext_call.return_data[0]):
            return -1
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * ext_call.return_data[0])
        if arg1 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 * 0 / 10^uint8(ext_call.return_data[0]) / 2 * ext_call.return_data[0])
    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not uint255(ext_call.return_data[0]):
        return -1
    if not 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 2 * ext_call.return_data[0])
    if arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != arg1:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 2 * ext_call.return_data[0])
}

function checkRecoveryMode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not 2 * ext_call.return_data[0]:
            if not uint255(ext_call.return_data[0]):
                return 0
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (15 * 10^17 > 0 / 2 * ext_call.return_data[0])
        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not uint255(ext_call.return_data[0]):
            return 0
        if not 2 * 10^18 * ext_call.return_data[0] / 10^18:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (15 * 10^17 > 0 / 2 * ext_call.return_data[0])
        if arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 2 * 10^18 * ext_call.return_data[0] / 10^18 != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (15 * 10^17 > arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 2 * ext_call.return_data[0])
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * ext_call.return_data[0]:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not uint255(ext_call.return_data[0]):
            return 0
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (15 * 10^17 > 0 / 2 * ext_call.return_data[0])
        if arg1 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (15 * 10^17 > arg1 * 0 / 10^uint8(ext_call.return_data[0]) / 2 * ext_call.return_data[0])
    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not uint255(ext_call.return_data[0]):
        return 0
    if not 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (15 * 10^17 > 0 / 2 * ext_call.return_data[0])
    if arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != arg1:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (15 * 10^17 > arg1 * 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 2 * ext_call.return_data[0])
}

function getRedemptionRateWithDecay() payable {
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _85 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_85] = 26
                    mem[_85 + 32] = 'SafeMath: division by zero'
                    _91 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_91] = 26
                    mem[_91 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 26
                mem[_89 + 32] = 'SafeMath: division by zero'
                _93 = mem[64]
                mem[64] = mem[64] + 64
                mem[_93] = 26
                mem[_93 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = 26
                mem[_84 + 32] = 'SafeMath: division by zero'
                if not s:
                    _127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_127] = 26
                    mem[_127 + 32] = 'SafeMath: division by zero'
                    _135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_135] = 30
                    mem[_135 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_183] = 26
                        mem[_183 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _149 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _149 + 68] = mem[idx + _135 + 32]
                        idx = idx + 32
                        continue 
                    mem[_149 + 68] = mem[_149 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _149 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                _143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_143] = 30
                mem[_143 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_206] = 26
                    mem[_206 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _161 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _161 + 68] = mem[idx + _143 + 32]
                    idx = idx + 32
                    continue 
                mem[_161 + 68] = mem[_161 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _161 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _88 = mem[64]
            mem[64] = mem[64] + 64
            mem[_88] = 26
            mem[_88 + 32] = 'SafeMath: division by zero'
            if not s:
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = 26
                mem[_130 + 32] = 'SafeMath: division by zero'
                _142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_142] = 30
                mem[_142 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_203] = 26
                    mem[_203 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _158 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _158 + 68] = mem[idx + _142 + 32]
                    idx = idx + 32
                    continue 
                mem[_158 + 68] = mem[_158 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _158 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'SafeMath: addition overflow'
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 30
            mem[_148 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= idx:
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _148 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        if not s:
            _75 = mem[64]
            mem[64] = mem[64] + 64
            mem[_75] = 26
            mem[_75 + 32] = 'SafeMath: division by zero'
            if baseRate:
                if 0 / baseRate:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return 5 * 10^15
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _83 = mem[64]
        mem[64] = mem[64] + 64
        mem[_83] = 26
        mem[_83 + 32] = 'SafeMath: division by zero'
        if not baseRate:
            return 5 * 10^15
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 10^18:
            return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                return 5 * 10^15
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 10^18:
                return ((10^18 * baseRate / 10^18) + 5 * 10^15)
        else:
            idx = block.timestamp - lastFeeOperationTime / 60
            s = 999037758833783000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _82 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_82] = 26
                        mem[_82 + 32] = 'SafeMath: division by zero'
                        _90 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_90] = 26
                        mem[_90 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _87 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_87] = 26
                    mem[_87 + 32] = 'SafeMath: division by zero'
                    _92 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_92] = 26
                    mem[_92 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _81 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_81] = 26
                    mem[_81 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_124] = 26
                        mem[_124 + 32] = 'SafeMath: division by zero'
                        _134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_134] = 30
                        mem[_134 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_176] = 26
                            mem[_176 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        _145 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _145 + 68] = mem[idx + _134 + 32]
                            idx = idx + 32
                            continue 
                        mem[_145 + 68] = mem[_145 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _145 + -mem[64] + 100
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_129] = 26
                    mem[_129 + 32] = 'SafeMath: division by zero'
                    _139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_139] = 30
                    mem[_139 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_194] = 26
                        mem[_194 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    _155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _155 + 68] = mem[idx + _139 + 32]
                        idx = idx + 32
                        continue 
                    mem[_155 + 68] = mem[_155 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _155 + -mem[64] + 100
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 26
                mem[_86 + 32] = 'SafeMath: division by zero'
                if not s:
                    _128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_128] = 26
                    mem[_128 + 32] = 'SafeMath: division by zero'
                    _138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_138] = 30
                    mem[_138 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_191] = 26
                        mem[_191 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _152 + 68] = mem[idx + _138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_152 + 68] = mem[_152 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _152 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_132] = 26
                mem[_132 + 32] = 'SafeMath: division by zero'
                _144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_144] = 30
                mem[_144 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_212] = 26
                    mem[_212 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _164 + 68] = mem[idx + _144 + 32]
                    idx = idx + 32
                    continue 
                mem[_164 + 68] = mem[_164 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _164 + -mem[64] + 100
            if not s:
                _70 = mem[64]
                mem[64] = mem[64] + 64
                mem[_70] = 26
                mem[_70 + 32] = 'SafeMath: division by zero'
                if baseRate:
                    if 0 / baseRate:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                return 5 * 10^15
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = 26
            mem[_80 + 32] = 'SafeMath: division by zero'
            if not baseRate:
                return 5 * 10^15
            if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 10^18:
                return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    return 10^18
}

function getBorrowingRateWithDecay() payable {
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _85 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_85] = 26
                    mem[_85 + 32] = 'SafeMath: division by zero'
                    _91 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_91] = 26
                    mem[_91 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 26
                mem[_89 + 32] = 'SafeMath: division by zero'
                _93 = mem[64]
                mem[64] = mem[64] + 64
                mem[_93] = 26
                mem[_93 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = 26
                mem[_84 + 32] = 'SafeMath: division by zero'
                if not s:
                    _127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_127] = 26
                    mem[_127 + 32] = 'SafeMath: division by zero'
                    _135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_135] = 30
                    mem[_135 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_183] = 26
                        mem[_183 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _149 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _149 + 68] = mem[idx + _135 + 32]
                        idx = idx + 32
                        continue 
                    mem[_149 + 68] = mem[_149 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _149 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                _143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_143] = 30
                mem[_143 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_206] = 26
                    mem[_206 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _161 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _161 + 68] = mem[idx + _143 + 32]
                    idx = idx + 32
                    continue 
                mem[_161 + 68] = mem[_161 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _161 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _88 = mem[64]
            mem[64] = mem[64] + 64
            mem[_88] = 26
            mem[_88 + 32] = 'SafeMath: division by zero'
            if not s:
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = 26
                mem[_130 + 32] = 'SafeMath: division by zero'
                _142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_142] = 30
                mem[_142 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_203] = 26
                    mem[_203 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _158 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _158 + 68] = mem[idx + _142 + 32]
                    idx = idx + 32
                    continue 
                mem[_158 + 68] = mem[_158 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _158 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'SafeMath: addition overflow'
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 30
            mem[_148 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= idx:
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _148 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        if not s:
            _75 = mem[64]
            mem[64] = mem[64] + 64
            mem[_75] = 26
            mem[_75 + 32] = 'SafeMath: division by zero'
            if baseRate:
                if 0 / baseRate:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return 5 * 10^15
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _83 = mem[64]
        mem[64] = mem[64] + 64
        mem[_83] = 26
        mem[_83 + 32] = 'SafeMath: division by zero'
        if not baseRate:
            return 5 * 10^15
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^16:
            return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                return 5 * 10^15
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^16:
                return ((10^18 * baseRate / 10^18) + 5 * 10^15)
        else:
            idx = block.timestamp - lastFeeOperationTime / 60
            s = 999037758833783000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _82 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_82] = 26
                        mem[_82 + 32] = 'SafeMath: division by zero'
                        _90 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_90] = 26
                        mem[_90 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _87 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_87] = 26
                    mem[_87 + 32] = 'SafeMath: division by zero'
                    _92 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_92] = 26
                    mem[_92 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _81 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_81] = 26
                    mem[_81 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_124] = 26
                        mem[_124 + 32] = 'SafeMath: division by zero'
                        _134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_134] = 30
                        mem[_134 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_176] = 26
                            mem[_176 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        _145 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _145 + 68] = mem[idx + _134 + 32]
                            idx = idx + 32
                            continue 
                        mem[_145 + 68] = mem[_145 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _145 + -mem[64] + 100
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_129] = 26
                    mem[_129 + 32] = 'SafeMath: division by zero'
                    _139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_139] = 30
                    mem[_139 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_194] = 26
                        mem[_194 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    _155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _155 + 68] = mem[idx + _139 + 32]
                        idx = idx + 32
                        continue 
                    mem[_155 + 68] = mem[_155 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _155 + -mem[64] + 100
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 26
                mem[_86 + 32] = 'SafeMath: division by zero'
                if not s:
                    _128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_128] = 26
                    mem[_128 + 32] = 'SafeMath: division by zero'
                    _138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_138] = 30
                    mem[_138 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_191] = 26
                        mem[_191 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _152 + 68] = mem[idx + _138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_152 + 68] = mem[_152 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _152 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_132] = 26
                mem[_132 + 32] = 'SafeMath: division by zero'
                _144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_144] = 30
                mem[_144 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_212] = 26
                    mem[_212 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _164 + 68] = mem[idx + _144 + 32]
                    idx = idx + 32
                    continue 
                mem[_164 + 68] = mem[_164 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _164 + -mem[64] + 100
            if not s:
                _70 = mem[64]
                mem[64] = mem[64] + 64
                mem[_70] = 26
                mem[_70 + 32] = 'SafeMath: division by zero'
                if baseRate:
                    if 0 / baseRate:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                return 5 * 10^15
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = 26
            mem[_80 + 32] = 'SafeMath: division by zero'
            if not baseRate:
                return 5 * 10^15
            if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^16:
                return (((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15)
    return 5 * 10^16
}

function decayBaseRateFromBorrowing() payable {
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_127] = 26
                    mem[_127 + 32] = 'SafeMath: division by zero'
                    _133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_133] = 26
                    mem[_133 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                _135 = mem[64]
                mem[64] = mem[64] + 64
                mem[_135] = 26
                mem[_135 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_126] = 26
                mem[_126 + 32] = 'SafeMath: division by zero'
                if not s:
                    _169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_169] = 26
                    mem[_169 + 32] = 'SafeMath: division by zero'
                    _207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_207] = 30
                    mem[_207 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_311] = 26
                        mem[_311 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _237 + 68] = mem[idx + _207 + 32]
                        idx = idx + 32
                        continue 
                    mem[_237 + 68] = mem[_237 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _237 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_173] = 26
                mem[_173 + 32] = 'SafeMath: division by zero'
                _223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_223] = 30
                mem[_223 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _328 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_328] = 26
                    mem[_328 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _261 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _261 + 68] = mem[idx + _223 + 32]
                    idx = idx + 32
                    continue 
                mem[_261 + 68] = mem[_261 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _261 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_130] = 26
            mem[_130 + 32] = 'SafeMath: division by zero'
            if not s:
                _172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_172] = 26
                mem[_172 + 32] = 'SafeMath: division by zero'
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 30
                mem[_222 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _325 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_325] = 26
                    mem[_325 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _258 + 68] = mem[idx + _222 + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'SafeMath: addition overflow'
            _175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_175] = 26
            mem[_175 + 32] = 'SafeMath: division by zero'
            _236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_236] = 30
            mem[_236 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= idx:
                _337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_337] = 26
                mem[_337 + 32] = 'SafeMath: division by zero'
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _288 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _288 + 68] = mem[idx + _236 + 32]
                idx = idx + 32
                continue 
            mem[_288 + 68] = mem[_288 + 70 len 30]
            revert with memory
              from mem[64]
               len _288 + -mem[64] + 100
        if not s:
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if baseRate:
                if 0 / baseRate:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            baseRate = 0
            emit BaseRateUpdated(0);
        else:
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_125] = 26
            mem[_125 + 32] = 'SafeMath: division by zero'
            if not baseRate:
                baseRate = 0
                emit BaseRateUpdated(0);
            else:
                if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 <= 10^18
                baseRate = (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18
                emit BaseRateUpdated(((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18));
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                baseRate = 0
                emit BaseRateUpdated(0);
            else:
                if 10^18 * baseRate / baseRate != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require 10^18 * baseRate / 10^18 <= 10^18
                baseRate = 10^18 * baseRate / 10^18
                emit BaseRateUpdated((10^18 * baseRate / 10^18));
        else:
            idx = block.timestamp - lastFeeOperationTime / 60
            s = 999037758833783000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_124] = 26
                        mem[_124 + 32] = 'SafeMath: division by zero'
                        _132 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_132] = 26
                        mem[_132 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_129] = 26
                    mem[_129 + 32] = 'SafeMath: division by zero'
                    _134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_134] = 26
                    mem[_134 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _123 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_123] = 26
                    mem[_123 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _166 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_166] = 26
                        mem[_166 + 32] = 'SafeMath: division by zero'
                        _202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_202] = 30
                        mem[_202 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _300 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_300] = 26
                            mem[_300 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        _229 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _229 + 68] = mem[idx + _202 + 32]
                            idx = idx + 32
                            continue 
                        mem[_229 + 68] = mem[_229 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _229 + -mem[64] + 100
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_171] = 26
                    mem[_171 + 32] = 'SafeMath: division by zero'
                    _215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_215] = 30
                    mem[_215 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_319] = 26
                        mem[_319 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    _249 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _249 + 68] = mem[idx + _215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_249 + 68] = mem[_249 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _249 + -mem[64] + 100
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_128] = 26
                mem[_128 + 32] = 'SafeMath: division by zero'
                if not s:
                    _170 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_170] = 26
                    mem[_170 + 32] = 'SafeMath: division by zero'
                    _214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_214] = 30
                    mem[_214 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_316] = 26
                        mem[_316 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _246 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _246 + 68] = mem[idx + _214 + 32]
                        idx = idx + 32
                        continue 
                    mem[_246 + 68] = mem[_246 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _246 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 26
                mem[_174 + 32] = 'SafeMath: division by zero'
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 30
                mem[_228 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _332 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_332] = 26
                    mem[_332 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _274 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _274 + 68] = mem[idx + _228 + 32]
                    idx = idx + 32
                    continue 
                mem[_274 + 68] = mem[_274 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _274 + -mem[64] + 100
            if not s:
                _112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_112] = 26
                mem[_112 + 32] = 'SafeMath: division by zero'
                if baseRate:
                    if 0 / baseRate:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                baseRate = 0
                emit BaseRateUpdated(0);
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 26
                mem[_122 + 32] = 'SafeMath: division by zero'
                if not baseRate:
                    baseRate = 0
                    emit BaseRateUpdated(0);
                else:
                    if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 <= 10^18
                    baseRate = (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18
                    emit BaseRateUpdated(((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18));
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - lastFeeOperationTime >= 60:
        lastFeeOperationTime = block.timestamp
        emit LastFeeOpTimeUpdated(block.timestamp);
}

function getBorrowingFeeWithDecay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_109] = 26
                    mem[_109 + 32] = 'SafeMath: division by zero'
                    _115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_115] = 26
                    mem[_115 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_113] = 26
                mem[_113 + 32] = 'SafeMath: division by zero'
                _117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_117] = 26
                mem[_117 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 26
                mem[_108 + 32] = 'SafeMath: division by zero'
                if not s:
                    _151 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_151] = 26
                    mem[_151 + 32] = 'SafeMath: division by zero'
                    _159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_159] = 30
                    mem[_159 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_203] = 26
                        mem[_203 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _173 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _173 + 68] = mem[idx + _159 + 32]
                        idx = idx + 32
                        continue 
                    mem[_173 + 68] = mem[_173 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _173 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_155] = 26
                mem[_155 + 32] = 'SafeMath: division by zero'
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 30
                mem[_167 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _218 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_218] = 26
                    mem[_218 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _185 + 68] = mem[idx + _167 + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if not s:
                _154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_154] = 26
                mem[_154 + 32] = 'SafeMath: division by zero'
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 30
                mem[_166 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_215] = 26
                    mem[_215 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _182 + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
                mem[_182 + 68] = mem[_182 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _182 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'SafeMath: addition overflow'
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 26
            mem[_157 + 32] = 'SafeMath: division by zero'
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 30
            mem[_172 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= idx:
                _227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_227] = 26
                mem[_227 + 32] = 'SafeMath: division by zero'
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _192 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _192 + 68] = mem[idx + _172 + 32]
                idx = idx + 32
                continue 
            mem[_192 + 68] = mem[_192 + 70 len 30]
            revert with memory
              from mem[64]
               len _192 + -mem[64] + 100
        if not s:
            _99 = mem[64]
            mem[64] = mem[64] + 64
            mem[_99] = 26
            mem[_99 + 32] = 'SafeMath: division by zero'
            if not baseRate:
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 26
                mem[_129 + 32] = 'SafeMath: division by zero'
            else:
                if 0 / baseRate:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_137] = 26
                mem[_137 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return (5 * 10^15 * arg1 / 10^18)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _107 = mem[64]
        mem[64] = mem[64] + 64
        mem[_107] = 26
        mem[_107 + 32] = 'SafeMath: division by zero'
        if not baseRate:
            _136 = mem[64]
            mem[64] = mem[64] + 64
            mem[_136] = 26
            mem[_136 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return (5 * 10^15 * arg1 / 10^18)
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _141 = mem[64]
        mem[64] = mem[64] + 64
        mem[_141] = 26
        mem[_141 + 32] = 'SafeMath: division by zero'
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return (5 * 10^15 * arg1 / 10^18)
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 >= 5 * 10^16:
                if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return (5 * 10^16 * arg1 / 10^18)
            if not (10^18 * baseRate / 10^18) + 5 * 10^15:
                return 0
            if (5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / (10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            return ((5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / 10^18)
        idx = block.timestamp - lastFeeOperationTime / 60
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_106] = 26
                    mem[_106 + 32] = 'SafeMath: division by zero'
                    _114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_114] = 26
                    mem[_114 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _111 = mem[64]
                mem[64] = mem[64] + 64
                mem[_111] = 26
                mem[_111 + 32] = 'SafeMath: division by zero'
                _116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_116] = 26
                mem[_116 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 26
                mem[_105 + 32] = 'SafeMath: division by zero'
                if not s:
                    _148 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_148] = 26
                    mem[_148 + 32] = 'SafeMath: division by zero'
                    _158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_158] = 30
                    mem[_158 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _198 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_198] = 26
                        mem[_198 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _169 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _169 + 68] = mem[idx + _158 + 32]
                        idx = idx + 32
                        continue 
                    mem[_169 + 68] = mem[_169 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _169 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_153] = 26
                mem[_153 + 32] = 'SafeMath: division by zero'
                _163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_163] = 30
                mem[_163 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_210] = 26
                    mem[_210 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _179 + 68] = mem[idx + _163 + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 68] = mem[_179 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_110] = 26
            mem[_110 + 32] = 'SafeMath: division by zero'
            if not s:
                _152 = mem[64]
                mem[64] = mem[64] + 64
                mem[_152] = 26
                mem[_152 + 32] = 'SafeMath: division by zero'
                _162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_162] = 30
                mem[_162 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_207] = 26
                    mem[_207 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _176 + 68] = mem[idx + _162 + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'SafeMath: addition overflow'
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 30
            mem[_168 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= idx:
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 26
                mem[_222 + 32] = 'SafeMath: division by zero'
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _188 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _188 + 68] = mem[idx + _168 + 32]
                idx = idx + 32
                continue 
            mem[_188 + 68] = mem[_188 + 70 len 30]
            revert with memory
              from mem[64]
               len _188 + -mem[64] + 100
        if not s:
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = 26
            mem[_94 + 32] = 'SafeMath: division by zero'
            if not baseRate:
                _124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_124] = 26
                mem[_124 + 32] = 'SafeMath: division by zero'
            else:
                if 0 / baseRate:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return (5 * 10^15 * arg1 / 10^18)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _104 = mem[64]
        mem[64] = mem[64] + 64
        mem[_104] = 26
        mem[_104 + 32] = 'SafeMath: division by zero'
        if not baseRate:
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = 26
            mem[_132 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return (5 * 10^15 * arg1 / 10^18)
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _140 = mem[64]
        mem[64] = mem[64] + 64
        mem[_140] = 26
        mem[_140 + 32] = 'SafeMath: division by zero'
    if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
        revert with 0, 'SafeMath: addition overflow'
    if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 >= 5 * 10^16:
        if 5 * 10^16 * arg1 / 5 * 10^16 != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return (5 * 10^16 * arg1 / 10^18)
    if not ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15:
        return 0
    if (5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return ((5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / 10^18)
}

function getRedemptionFeeWithDecay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if lastFeeOperationTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if block.timestamp - lastFeeOperationTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _125 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_125] = 26
                    mem[_125 + 32] = 'SafeMath: division by zero'
                    _131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_131] = 26
                    mem[_131 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 26
                mem[_129 + 32] = 'SafeMath: division by zero'
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_124] = 26
                mem[_124 + 32] = 'SafeMath: division by zero'
                if not s:
                    _167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_167] = 26
                    mem[_167 + 32] = 'SafeMath: division by zero'
                    _175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_175] = 30
                    mem[_175 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_219] = 26
                        mem[_219 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _189 + 68] = mem[idx + _175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_189 + 68] = mem[_189 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _189 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                _183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_183] = 30
                mem[_183 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = 26
                    mem[_234 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _201 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _201 + 68] = mem[idx + _183 + 32]
                    idx = idx + 32
                    continue 
                mem[_201 + 68] = mem[_201 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _201 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if not s:
                _170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_170] = 26
                mem[_170 + 32] = 'SafeMath: division by zero'
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 30
                mem[_182 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = 26
                    mem[_231 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _198 + 68] = mem[idx + _182 + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 68] = mem[_198 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'SafeMath: addition overflow'
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 26
            mem[_173 + 32] = 'SafeMath: division by zero'
            _188 = mem[64]
            mem[64] = mem[64] + 64
            mem[_188] = 30
            mem[_188 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= idx:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _208 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _208 + 68] = mem[idx + _188 + 32]
                idx = idx + 32
                continue 
            mem[_208 + 68] = mem[_208 + 70 len 30]
            revert with memory
              from mem[64]
               len _208 + -mem[64] + 100
        if not s:
            _115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_115] = 26
            mem[_115 + 32] = 'SafeMath: division by zero'
            if not baseRate:
                _145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_145] = 26
                mem[_145 + 32] = 'SafeMath: division by zero'
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _267 = mem[64]
                mem[64] = mem[64] + 64
                mem[_267] = 26
                mem[_267 + 32] = 'SafeMath: division by zero'
            else:
                if 0 / baseRate:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_153] = 26
                mem[_153 + 32] = 'SafeMath: division by zero'
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_277] = 26
                mem[_277 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 10^18 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            return (5 * 10^15 * arg1 / 10^18)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 26
        mem[_123 + 32] = 'SafeMath: division by zero'
        if not baseRate:
            _152 = mem[64]
            mem[64] = mem[64] + 64
            mem[_152] = 26
            mem[_152 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_276] = 26
            mem[_276 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 10^18 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            return (5 * 10^15 * arg1 / 10^18)
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 26
        mem[_157 + 32] = 'SafeMath: division by zero'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 >= 10^18:
            if 10^18 * arg1 / 10^18 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _281 = mem[64]
            mem[64] = mem[64] + 64
            mem[_281] = 26
            mem[_281 + 32] = 'SafeMath: division by zero'
            if 10^18 * arg1 / 10^18 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            return (10^18 * arg1 / 10^18)
        if not ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15:
            _273 = mem[64]
            mem[64] = mem[64] + 64
            mem[_273] = 26
            mem[_273 + 32] = 'SafeMath: division by zero'
            if 0 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            else:
                return 0
        if (5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _279 = mem[64]
        mem[64] = mem[64] + 64
        mem[_279] = 26
        mem[_279 + 32] = 'SafeMath: division by zero'
    else:
        if not block.timestamp - lastFeeOperationTime / 60:
            if not baseRate:
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if 5 * 10^15 * arg1 / 10^18 >= arg1:
                    revert with 0, 
                                32,
                                54,
                                0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                                mem[474 len 10]
                return (5 * 10^15 * arg1 / 10^18)
            if 10^18 * baseRate / baseRate != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * baseRate / 10^18) + 5 * 10^15 >= 10^18:
                if 10^18 * arg1 / 10^18 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if 10^18 * arg1 / 10^18 >= arg1:
                    revert with 0, 
                                32,
                                54,
                                0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                                mem[474 len 10]
                return (10^18 * arg1 / 10^18)
            if not (10^18 * baseRate / 10^18) + 5 * 10^15:
                if 0 >= arg1:
                    revert with 0, 
                                32,
                                54,
                                0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                                mem[474 len 10]
                else:
                    return 0
            if (5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / (10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if (5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / 10^18 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[474 len 10]
            return ((5 * 10^15 * arg1) + (10^18 * baseRate / 10^18 * arg1) / 10^18)
        idx = block.timestamp - lastFeeOperationTime / 60
        s = 999037758833783000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_122] = 26
                    mem[_122 + 32] = 'SafeMath: division by zero'
                    _130 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_130] = 26
                    mem[_130 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 26
                mem[_127 + 32] = 'SafeMath: division by zero'
                _132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_132] = 26
                mem[_132 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_121] = 26
                mem[_121 + 32] = 'SafeMath: division by zero'
                if not s:
                    _164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_164] = 26
                    mem[_164 + 32] = 'SafeMath: division by zero'
                    _174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_174] = 30
                    mem[_174 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_214] = 26
                        mem[_214 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    _185 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _185 + 68] = mem[idx + _174 + 32]
                        idx = idx + 32
                        continue 
                    mem[_185 + 68] = mem[_185 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _185 + -mem[64] + 100
                if s * s / s != s:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _169 = mem[64]
                mem[64] = mem[64] + 64
                mem[_169] = 26
                mem[_169 + 32] = 'SafeMath: division by zero'
                _179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_179] = 30
                mem[_179 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_226] = 26
                    mem[_226 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                _195 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _195 + 68] = mem[idx + _179 + 32]
                    idx = idx + 32
                    continue 
                mem[_195 + 68] = mem[_195 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _195 + -mem[64] + 100
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 26
            mem[_126 + 32] = 'SafeMath: division by zero'
            if not s:
                _168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_168] = 26
                mem[_168 + 32] = 'SafeMath: division by zero'
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 30
                mem[_178 + 32] = 'SafeMath: subtraction overflow'
                if 1 <= idx:
                    _223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_223] = 26
                    mem[_223 + 32] = 'SafeMath: division by zero'
                    idx = idx - 1 / 2
                    s = 0
                    continue 
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _192 + 68] = mem[idx + _178 + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 68] = mem[_192 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            if s * s / s != s:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (s * s) + 5 * 10^17 < s * s:
                revert with 0, 'SafeMath: addition overflow'
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 26
            mem[_172 + 32] = 'SafeMath: division by zero'
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 30
            mem[_184 + 32] = 'SafeMath: subtraction overflow'
            if 1 <= idx:
                _238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_238] = 26
                mem[_238 + 32] = 'SafeMath: division by zero'
                idx = idx - 1 / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            _204 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _204 + 68] = mem[idx + _184 + 32]
                idx = idx + 32
                continue 
            mem[_204 + 68] = mem[_204 + 70 len 30]
            revert with memory
              from mem[64]
               len _204 + -mem[64] + 100
        if not s:
            _110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_110] = 26
            mem[_110 + 32] = 'SafeMath: division by zero'
            if not baseRate:
                _140 = mem[64]
                mem[64] = mem[64] + 64
                mem[_140] = 26
                mem[_140 + 32] = 'SafeMath: division by zero'
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _264 = mem[64]
                mem[64] = mem[64] + 64
                mem[_264] = 26
                mem[_264 + 32] = 'SafeMath: division by zero'
            else:
                if 0 / baseRate:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_149] = 26
                mem[_149 + 32] = 'SafeMath: division by zero'
                if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_272] = 26
                mem[_272 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 10^18 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            return (5 * 10^15 * arg1 / 10^18)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _120 = mem[64]
        mem[64] = mem[64] + 64
        mem[_120] = 26
        mem[_120 + 32] = 'SafeMath: division by zero'
        if not baseRate:
            _148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_148] = 26
            mem[_148 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 5 * 10^15 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if 5 * 10^15 * arg1 / 10^18 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            return (5 * 10^15 * arg1 / 10^18)
        if (10^18 * s) + 5 * 10^17 / 10^18 * baseRate / baseRate != (10^18 * s) + 5 * 10^17 / 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _156 = mem[64]
        mem[64] = mem[64] + 64
        mem[_156] = 26
        mem[_156 + 32] = 'SafeMath: division by zero'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 < 5 * 10^15:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 >= 10^18:
            if 10^18 * arg1 / 10^18 != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _280 = mem[64]
            mem[64] = mem[64] + 64
            mem[_280] = 26
            mem[_280 + 32] = 'SafeMath: division by zero'
            if 10^18 * arg1 / 10^18 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            return (10^18 * arg1 / 10^18)
        if not ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15:
            _268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_268] = 26
            mem[_268 + 32] = 'SafeMath: division by zero'
            if 0 >= arg1:
                revert with 0, 
                            32,
                            54,
                            0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                            mem[mem[64] + 122 len 10]
            else:
                return 0
        if (5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18) + 5 * 10^15 != arg1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _278 = mem[64]
        mem[64] = mem[64] + 64
        mem[_278] = 26
        mem[_278 + 32] = 'SafeMath: division by zero'
    if (5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / 10^18 >= arg1:
        revert with 0, 
                    32,
                    54,
                    0x6f54726f76654d616e616765723a2046656520776f756c642065617420757020616c6c2072657475726e656420636f6c6c6174657261,
                    mem[mem[64] + 122 len 10]
    return ((5 * 10^15 * arg1) + ((10^18 * s) + 5 * 10^17 / 10^18 * baseRate / 10^18 * arg1) / 10^18)
}

function getEntireDebtAndColl(address arg1) payable {
    require calldata.size - 4 >= 32
    if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        if rewardSnapshots[address(arg1)].field_0 > L_ETH:
            revert with 0, 'SafeMath: subtraction overflow'
        if not L_ETH - rewardSnapshots[address(arg1)].field_0:
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
            if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, 
                   ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256,
                   0,
                   (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, 
                   (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
                   0,
                   0 / 10^uint8(ext_call.return_data[0])
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return troveStatus[address(arg1)].field_0, 
               ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
               0,
               (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        if rewardSnapshots[address(arg1)].field_0 > L_ETH:
            revert with 0, 'SafeMath: subtraction overflow'
        if not L_ETH - rewardSnapshots[address(arg1)].field_0:
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
            if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, 
                   ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256,
                   0,
                   (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, 
                   (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
                   0,
                   0 / 10^uint8(ext_call.return_data[0])
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return troveStatus[address(arg1)].field_0, 
               ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
               0,
               (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            if rewardSnapshots[address(arg1)].field_0 > L_ETH:
                revert with 0, 'SafeMath: subtraction overflow'
            if not L_ETH - rewardSnapshots[address(arg1)].field_0:
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
            require troveStatus[address(arg1)].field_768 <= 4
            if troveStatus[address(arg1)].field_768 != 1:
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_512:
                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, 0, 0
                if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return troveStatus[address(arg1)].field_0, 
                       ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256,
                       0,
                       (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_512:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return troveStatus[address(arg1)].field_0, 
                       (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
                       0,
                       0 / 10^uint8(ext_call.return_data[0])
            if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return troveStatus[address(arg1)].field_0, 
                   ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
                   0,
                   (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if rewardSnapshots[address(arg1)].field_0 > L_ETH:
            revert with 0, 'SafeMath: subtraction overflow'
        if not L_ETH - rewardSnapshots[address(arg1)].field_0:
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0, 
                   troveStatus[address(arg1)].field_256,
                   (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18,
                   0
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0, 
                   troveStatus[address(arg1)].field_256,
                   (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18,
                   0
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0, 
                       troveStatus[address(arg1)].field_256,
                       (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18,
                       0
            if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0, 
                   ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256,
                   (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18,
                   (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0, 
                   (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
                   (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18,
                   0 / 10^uint8(ext_call.return_data[0])
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0, 
               ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
               (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18,
               (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if rewardSnapshots[address(arg1)].field_0 > L_ETH:
            revert with 0, 'SafeMath: subtraction overflow'
        if not L_ETH - rewardSnapshots[address(arg1)].field_0:
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
                   troveStatus[address(arg1)].field_256,
                   0 / 10^uint8(ext_call.return_data[0]),
                   0
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
                   troveStatus[address(arg1)].field_256,
                   0 / 10^uint8(ext_call.return_data[0]),
                   0
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
                       troveStatus[address(arg1)].field_256,
                       0 / 10^uint8(ext_call.return_data[0]),
                       0
            if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
                   ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256,
                   0 / 10^uint8(ext_call.return_data[0]),
                   (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
                   (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
                   0 / 10^uint8(ext_call.return_data[0]),
                   0 / 10^uint8(ext_call.return_data[0])
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
               ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
               0 / 10^uint8(ext_call.return_data[0]),
               (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
    if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if rewardSnapshots[address(arg1)].field_0 > L_ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    if not L_ETH - rewardSnapshots[address(arg1)].field_0:
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
               troveStatus[address(arg1)].field_256,
               (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]),
               0
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
               troveStatus[address(arg1)].field_256,
               (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]),
               0
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
                   troveStatus[address(arg1)].field_256,
                   (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]),
                   0
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
               ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256,
               (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]),
               (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
               (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
               (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]),
               0 / 10^uint8(ext_call.return_data[0])
    if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0, 
           ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256,
           (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]),
           (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
}

function applyPendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x8b54726f76654d616e616765723a2043616c6c6572206973206e6f742074686520426f72726f7765724f7065726174696f6e7320636f6e74726163,
                    mem[223 len 5]
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 == 1:
        if rewardSnapshots[address(arg1)].field_0 < L_ETH:
            require troveStatus[address(arg1)].field_768 <= 4
            if troveStatus[address(arg1)].field_768 != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x6554726f76654d616e616765723a2054726f766520646f6573206e6f74206578697374206f7220697320636c6f7365,
                            mem[211 len 17]
            if rewardSnapshots[address(arg1)].field_0 > L_ETH:
                revert with 0, 'SafeMath: subtraction overflow'
            if not L_ETH - rewardSnapshots[address(arg1)].field_0:
                if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                    require ext_code.size(defaultPoolAddress)
                    call defaultPoolAddress.0x38d995a8 with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(activePoolAddress)
                    call activePoolAddress.0xcfb9329a with:
                         gas gas_remaining wei
                        args 0
                else:
                    require troveStatus[address(arg1)].field_768 <= 4
                    if troveStatus[address(arg1)].field_768 != 1:
                        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardSnapshots[address(arg1)].field_0 = L_ETH
                        rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                        emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                        require ext_code.size(defaultPoolAddress)
                        call defaultPoolAddress.0x38d995a8 with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(activePoolAddress)
                        call activePoolAddress.0xcfb9329a with:
                             gas gas_remaining wei
                            args 0
                    else:
                        require ext_code.size(activePoolAddress)
                        staticcall activePoolAddress.0x498a6600 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            if not troveStatus[address(arg1)].field_512:
                                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                        else:
                            require ext_code.size(activePoolAddress)
                            staticcall activePoolAddress.0x498a6600 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not troveStatus[address(arg1)].field_512:
                                if not 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                troveStatus[address(arg1)].field_0 += 0 / 10^uint8(ext_call.return_data[0])
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args (0 / 10^uint8(ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args (0 / 10^uint8(ext_call.return_data[0]))
                            else:
                                if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(defaultPoolAddress)
                call defaultPoolAddress.0xbe41205f with:
                     gas gas_remaining wei
                    args 0
            else:
                require troveStatus[address(arg1)].field_768 <= 4
                if troveStatus[address(arg1)].field_768 != 1:
                    if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardSnapshots[address(arg1)].field_0 = L_ETH
                        rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                        emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                        require ext_code.size(defaultPoolAddress)
                        call defaultPoolAddress.0x38d995a8 with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(activePoolAddress)
                        call activePoolAddress.0xcfb9329a with:
                             gas gas_remaining wei
                            args 0
                    else:
                        require troveStatus[address(arg1)].field_768 <= 4
                        if troveStatus[address(arg1)].field_768 != 1:
                            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                            require ext_code.size(defaultPoolAddress)
                            call defaultPoolAddress.0x38d995a8 with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(activePoolAddress)
                            call activePoolAddress.0xcfb9329a with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            require ext_code.size(activePoolAddress)
                            staticcall activePoolAddress.0x498a6600 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                if not troveStatus[address(arg1)].field_512:
                                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                            else:
                                require ext_code.size(activePoolAddress)
                                staticcall activePoolAddress.0x498a6600 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not troveStatus[address(arg1)].field_512:
                                    if not 10^uint8(ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: division by zero'
                                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    troveStatus[address(arg1)].field_0 += 0 / 10^uint8(ext_call.return_data[0])
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args (0 / 10^uint8(ext_call.return_data[0]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args (0 / 10^uint8(ext_call.return_data[0]))
                                else:
                                    if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not 10^uint8(ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: division by zero'
                                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(defaultPoolAddress)
                    call defaultPoolAddress.0xbe41205f with:
                         gas gas_remaining wei
                        args 0
                else:
                    require ext_code.size(activePoolAddress)
                    staticcall activePoolAddress.0x498a6600 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        if not troveStatus[address(arg1)].field_512:
                            if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require troveStatus[address(arg1)].field_768 <= 4
                                if troveStatus[address(arg1)].field_768 != 1:
                                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require ext_code.size(activePoolAddress)
                                    staticcall activePoolAddress.0x498a6600 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                        if not troveStatus[address(arg1)].field_512:
                                            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args 0
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                    else:
                                        require ext_code.size(activePoolAddress)
                                        staticcall activePoolAddress.0x498a6600 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not troveStatus[address(arg1)].field_512:
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += 0 / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(defaultPoolAddress)
                            call defaultPoolAddress.0xbe41205f with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
                                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require troveStatus[address(arg1)].field_768 <= 4
                                if troveStatus[address(arg1)].field_768 != 1:
                                    if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
                                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require ext_code.size(activePoolAddress)
                                    staticcall activePoolAddress.0x498a6600 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                        if not troveStatus[address(arg1)].field_512:
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
                                            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args 0
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                    else:
                                        require ext_code.size(activePoolAddress)
                                        staticcall activePoolAddress.0x498a6600 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not troveStatus[address(arg1)].field_512:
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += 0 / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(defaultPoolAddress)
                            call defaultPoolAddress.0xbe41205f with:
                                 gas gas_remaining wei
                                args ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18)
                    else:
                        require ext_code.size(activePoolAddress)
                        staticcall activePoolAddress.0x498a6600 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not troveStatus[address(arg1)].field_512:
                            if not 10^uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                troveStatus[address(arg1)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require troveStatus[address(arg1)].field_768 <= 4
                                if troveStatus[address(arg1)].field_768 != 1:
                                    if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    troveStatus[address(arg1)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require ext_code.size(activePoolAddress)
                                    staticcall activePoolAddress.0x498a6600 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                        if not troveStatus[address(arg1)].field_512:
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                                            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args 0
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                    else:
                                        require ext_code.size(activePoolAddress)
                                        staticcall activePoolAddress.0x498a6600 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not troveStatus[address(arg1)].field_512:
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += 0 / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(defaultPoolAddress)
                            call defaultPoolAddress.0xbe41205f with:
                                 gas gas_remaining wei
                                args (0 / 10^uint8(ext_call.return_data[0]))
                        else:
                            if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not 10^uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardSnapshots[address(arg1)].field_0 = L_ETH
                                rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                require ext_code.size(defaultPoolAddress)
                                call defaultPoolAddress.0x38d995a8 with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(activePoolAddress)
                                call activePoolAddress.0xcfb9329a with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require troveStatus[address(arg1)].field_768 <= 4
                                if troveStatus[address(arg1)].field_768 != 1:
                                    if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewardSnapshots[address(arg1)].field_0 = L_ETH
                                    rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                    emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                    require ext_code.size(defaultPoolAddress)
                                    call defaultPoolAddress.0x38d995a8 with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(activePoolAddress)
                                    call activePoolAddress.0xcfb9329a with:
                                         gas gas_remaining wei
                                        args 0
                                else:
                                    require ext_code.size(activePoolAddress)
                                    staticcall activePoolAddress.0x498a6600 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                        if not troveStatus[address(arg1)].field_512:
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args 0
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18)
                                    else:
                                        require ext_code.size(activePoolAddress)
                                        staticcall activePoolAddress.0x498a6600 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not troveStatus[address(arg1)].field_512:
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += 0 / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args (0 / 10^uint8(ext_call.return_data[0]))
                                        else:
                                            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not 10^uint8(ext_call.return_data[0]):
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_256 += (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            troveStatus[address(arg1)].field_0 += (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])
                                            rewardSnapshots[address(arg1)].field_0 = L_ETH
                                            rewardSnapshots[address(arg1)].field_256 = l_LUSDDebt
                                            emit TroveSnapshotsUpdated(L_ETH, l_LUSDDebt);
                                            require ext_code.size(defaultPoolAddress)
                                            call defaultPoolAddress.0x38d995a8 with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(activePoolAddress)
                                            call activePoolAddress.0xcfb9329a with:
                                                 gas gas_remaining wei
                                                args ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(defaultPoolAddress)
                            call defaultPoolAddress.0xbe41205f with:
                                 gas gas_remaining wei
                                args ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x65c3770d: troveStatus[address(arg1)].field_0, troveStatus[address(arg1)].field_256, troveStatus[address(arg1)].field_512, 0, arg1
}

function getCurrentICR(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if rewardSnapshots[address(arg1)].field_0 > L_ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    if not L_ETH - rewardSnapshots[address(arg1)].field_0:
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                revert with 0, 'SafeMath: subtraction overflow'
            if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            require troveStatus[address(arg1)].field_768 <= 4
            if troveStatus[address(arg1)].field_768 != 1:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_512:
                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(activePoolAddress)
                    staticcall activePoolAddress.0x498a6600 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        if not troveStatus[address(arg1)].field_256:
                            if not troveStatus[address(arg1)].field_0:
                                return -1
                            if not troveStatus[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / troveStatus[address(arg1)].field_0)
                        if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                            if not troveStatus[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / troveStatus[address(arg1)].field_0)
                        if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                    require ext_code.size(activePoolAddress)
                    staticcall activePoolAddress.0x498a6600 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not troveStatus[address(arg1)].field_256:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not 0 / 10^uint8(ext_call.return_data[0]):
                            if not troveStatus[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / troveStatus[address(arg1)].field_0)
                        if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            return -1
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                    if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_512:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            return -1
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                    if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / troveStatus[address(arg1)].field_0)
        if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / troveStatus[address(arg1)].field_0)
        if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if arg2 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (arg2 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
        return -1
    if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != arg2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
        revert with 0, 'SafeMath: division by zero'
    return (arg2 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
}

function getNominalICR(address arg1) payable {
    require calldata.size - 4 >= 32
    if rewardSnapshots[address(arg1)].field_0 > L_ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    if not L_ETH - rewardSnapshots[address(arg1)].field_0:
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
                revert with 0, 'SafeMath: subtraction overflow'
            if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            require troveStatus[address(arg1)].field_768 <= 4
            if troveStatus[address(arg1)].field_768 != 1:
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_512:
                    if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(activePoolAddress)
                    staticcall activePoolAddress.0x498a6600 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        if not troveStatus[address(arg1)].field_256:
                            if not troveStatus[address(arg1)].field_0:
                                return -1
                            if not troveStatus[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / troveStatus[address(arg1)].field_0)
                        if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                            if not troveStatus[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / troveStatus[address(arg1)].field_0)
                        if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / troveStatus[address(arg1)].field_0)
                    require ext_code.size(activePoolAddress)
                    staticcall activePoolAddress.0x498a6600 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not troveStatus[address(arg1)].field_256:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not 0 / 10^uint8(ext_call.return_data[0]):
                            if not troveStatus[address(arg1)].field_0:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / troveStatus[address(arg1)].field_0)
                        if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            return -1
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_512:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not troveStatus[address(arg1)].field_256:
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            return -1
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                    if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 10^18 * troveStatus[address(arg1)].field_256 / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / 10^18 * troveStatus[address(arg1)].field_256 / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 10^18 * troveStatus[address(arg1)].field_256 / troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 10^18 * troveStatus[address(arg1)].field_256 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^18) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
            revert with 0, 'SafeMath: subtraction overflow'
        if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require troveStatus[address(arg1)].field_768 <= 4
        if troveStatus[address(arg1)].field_768 != 1:
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not troveStatus[address(arg1)].field_512:
                if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                        if not troveStatus[address(arg1)].field_0:
                            return -1
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not 0 / 10^uint8(ext_call.return_data[0]):
                        if not troveStatus[address(arg1)].field_0:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / troveStatus[address(arg1)].field_0)
                    if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not troveStatus[address(arg1)].field_512:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        return -1
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * (10^18 * 0 / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != L_ETH - rewardSnapshots[address(arg1)].field_0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if rewardSnapshots[address(arg1)].field_256 > l_LUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    if not l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
    require troveStatus[address(arg1)].field_768 <= 4
    if troveStatus[address(arg1)].field_768 != 1:
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not troveStatus[address(arg1)].field_512:
            if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                    if not troveStatus[address(arg1)].field_0:
                        return -1
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / troveStatus[address(arg1)].field_0)
            require ext_code.size(activePoolAddress)
            staticcall activePoolAddress.0x498a6600 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                if not troveStatus[address(arg1)].field_0:
                    return -1
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not troveStatus[address(arg1)].field_0:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / troveStatus[address(arg1)].field_0)
                if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
                if not troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / troveStatus[address(arg1)].field_0)
        if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    return -1
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^18) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not troveStatus[address(arg1)].field_512:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    return -1
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        require ext_code.size(activePoolAddress)
        staticcall activePoolAddress.0x498a6600 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not 0 / 10^uint8(ext_call.return_data[0]):
                if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
            if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
            if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (0 / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if (l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / troveStatus[address(arg1)].field_512 != l_LUSDDebt - rewardSnapshots[address(arg1)].field_256:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 < troveStatus[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0 < troveStatus[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                return -1
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18:
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^18 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            return -1
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
        if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / ((L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_256 != 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
        return -1
    if not (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]):
        if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
    if 100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0:
        revert with 0, 'SafeMath: division by zero'
    return (100 * 10^18 * (10^18 * (L_ETH * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_0 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + (10^18 * troveStatus[address(arg1)].field_256) / 10^uint8(ext_call.return_data[0]) / ((l_LUSDDebt * troveStatus[address(arg1)].field_512) - (rewardSnapshots[address(arg1)].field_256 * troveStatus[address(arg1)].field_512) / 10^uint8(ext_call.return_data[0])) + troveStatus[address(arg1)].field_0)
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - withdrawFromSP(uint256 arg1)
#  - offset(uint256 arg1, uint256 arg2)
#  - provideToSP(uint256 arg1, address arg2)
#  - withdrawETHGainToTrove(address arg1, address arg2)
#
const sub_4fa8e0d0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const _100pct = 10^18

const MIN_NET_DEBT = (5 * 10^16 * 3600)

const LUSD_GAS_COMPENSATION = 20 * 10^18

const PERCENT_DIVISOR = 200

const CCR = 15 * 10^17

const MCR = 11 * 10^17

const DECIMAL_PRECISION = 10^18

const NAME = ''

const SCALE_FACTOR = 10^9

const BORROWING_FEE_FLOOR = 5 * 10^15


address activePoolAddress;
address defaultPoolAddress;
bool stor2; offset 256
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
address priceFeedAddress;
address borrowerOperationsAddress;
address troveManagerAddress;
address lusdTokenAddress;
address sortedTrovesAddress;
address communityIssuanceAddress;
uint256 ETH;
uint256 totalLUSDDeposits;
address collTokenAddress;
mapping of struct deposits;
mapping of struct depositSnapshots;
mapping of struct frontEnds;
mapping of uint256 frontEndStakes;
mapping of struct frontEndSnapshots;
uint256 P;
uint128 currentScale;
uint128 currentEpoch; offset 128
mapping of uint256 epochToScaleToSum;
mapping of uint256 epochToScaleToG;
uint256 lastLQTYError;
uint256 lastETHError_Offset;
uint256 lastLUSDLossError_Offset;

function getETH() {
    return ETH
}

function initialized() {
    return bool(uint8(stor2.field_160))
}

function frontEndSnapshots(address arg1) {
    require calldata.size - 4 >= 32
    return frontEndSnapshots[arg1].field_0, 
           frontEndSnapshots[arg1].field_256,
           frontEndSnapshots[arg1].field_512,
           frontEndSnapshots[arg1].field_768,
           frontEndSnapshots[arg1].field_896
}

function epochToScaleToSum(uint128 arg1, uint128 arg2) {
    require calldata.size - 4 >= 64
    return epochToScaleToSum[arg1][arg2]
}

function defaultPool() {
    return defaultPoolAddress
}

function troveManager() {
    return troveManagerAddress
}

function collTokenAddress() {
    return collTokenAddress
}

function lastLUSDLossError_Offset() {
    return lastLUSDLossError_Offset
}

function frontEndStakes(address arg1) {
    require calldata.size - 4 >= 32
    return frontEndStakes[arg1]
}

function priceFeed() {
    return priceFeedAddress
}

function currentEpoch() {
    return currentEpoch
}

function borrowerOperations() {
    return borrowerOperationsAddress
}

function activePool() {
    return activePoolAddress
}

function epochToScaleToG(uint128 arg1, uint128 arg2) {
    require calldata.size - 4 >= 64
    return epochToScaleToG[arg1][arg2]
}

function depositSnapshots(address arg1) {
    require calldata.size - 4 >= 32
    return depositSnapshots[arg1].field_0, 
           depositSnapshots[arg1].field_256,
           depositSnapshots[arg1].field_512,
           depositSnapshots[arg1].field_768,
           depositSnapshots[arg1].field_896
}

function P() {
    return P
}

function communityIssuance() {
    return communityIssuanceAddress
}

function getTotalLUSDDeposits() {
    return totalLUSDDeposits
}

function currentScale() {
    return currentScale
}

function frontEnds(address arg1) {
    require calldata.size - 4 >= 32
    return frontEnds[arg1].field_0, bool(frontEnds[arg1].field_256)
}

function sortedTroves() {
    return sortedTrovesAddress
}

function lusdToken() {
    return lusdTokenAddress
}

function lastLQTYError() {
    return lastLQTYError
}

function lastETHError_Offset() {
    return lastETHError_Offset
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1].field_0, deposits[arg1].field_256
}

function _fallback() payable {
    revert
}

function increaseColl(uint256 arg1) {
    require calldata.size - 4 >= 32
    if activePoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7353746162696c697479506f6f6c3a2043616c6c6572206973206e6f7420416374697665506f6f,
                    mem[203 len 25]
    if arg1 + ETH < ETH:
        revert with 0, 'SafeMath: addition overflow'
    ETH += arg1
    emit 0x6cceb6d6: (arg1 + ETH)
}

function getEntireSystemDebt() {
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

function getEntireSystemColl() {
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

function registerFrontEnd(uint256 arg1) {
    require calldata.size - 4 >= 32
    if frontEnds[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6f53746162696c697479506f6f6c3a206d757374206e6f7420616c7265616479206265206120726567697374657265642066726f6e7420656e,
                    mem[221 len 7]
    if deposits[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6453746162696c697479506f6f6c3a2055736572206d7573742068617665206e6f206465706f7369,
                    mem[204 len 24]
    if arg1 > 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x7753746162696c697479506f6f6c3a204b69636b6261636b2072617465206d75737420626520696e2072616e6765205b302c31,
                    mem[215 len 13]
    frontEnds[msg.sender].field_0 = arg1
    frontEnds[msg.sender].field_256 = 1
    emit FrontEndRegistered(arg1, msg.sender);
}

function collToDebt(uint256 arg1, uint256 arg2) {
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
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (arg2 * arg1 / 10^uint8(ext_call.return_data[0]))
}

function debtToColl(uint256 arg1, uint256 arg2) {
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
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2:
        revert with 0, 'SafeMath: division by zero'
    return (10^uint8(ext_call.return_data[0]) * arg1 / arg2)
}

function getCompoundedFrontEndStake(address arg1) {
    require calldata.size - 4 >= 32
    if frontEndStakes[address(arg1)]:
        if frontEndSnapshots[address(arg1)].field_896 >= currentEpoch:
            if frontEndSnapshots[address(arg1)].field_768 > currentScale:
                revert with 0, 32, 40, 0x744c697175697479536166654d6174683132383a207375627472616374696f6e206f766572666c6f, mem[524 len 24]
            if not uint128(currentScale - frontEndSnapshots[address(arg1)].field_768):
                if not frontEndStakes[address(arg1)]:
                    if not frontEndSnapshots[address(arg1)].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / frontEndSnapshots[address(arg1)].field_256 >= frontEndStakes[address(arg1)] / 10^9:
                        return (0 / frontEndSnapshots[address(arg1)].field_256)
                else:
                    if P * frontEndStakes[address(arg1)] / frontEndStakes[address(arg1)] != P:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not frontEndSnapshots[address(arg1)].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if P * frontEndStakes[address(arg1)] / frontEndSnapshots[address(arg1)].field_256 >= frontEndStakes[address(arg1)] / 10^9:
                        return (P * frontEndStakes[address(arg1)] / frontEndSnapshots[address(arg1)].field_256)
            else:
                if 1 == uint128(currentScale - frontEndSnapshots[address(arg1)].field_768):
                    if not frontEndStakes[address(arg1)]:
                        if not frontEndSnapshots[address(arg1)].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / frontEndSnapshots[address(arg1)].field_256 / 10^9 >= frontEndStakes[address(arg1)] / 10^9:
                            return (0 / frontEndSnapshots[address(arg1)].field_256 / 10^9)
                    else:
                        if P * frontEndStakes[address(arg1)] / frontEndStakes[address(arg1)] != P:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not frontEndSnapshots[address(arg1)].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if P * frontEndStakes[address(arg1)] / frontEndSnapshots[address(arg1)].field_256 / 10^9 >= frontEndStakes[address(arg1)] / 10^9:
                            return (P * frontEndStakes[address(arg1)] / frontEndSnapshots[address(arg1)].field_256 / 10^9)
            return 0
        else:
            return 0
    else:
        return 0
}

function getCompoundedLUSDDeposit(address arg1) {
    require calldata.size - 4 >= 32
    if deposits[address(arg1)].field_0:
        if depositSnapshots[address(arg1)].field_896 >= currentEpoch:
            if depositSnapshots[address(arg1)].field_768 > currentScale:
                revert with 0, 32, 40, 0x744c697175697479536166654d6174683132383a207375627472616374696f6e206f766572666c6f, mem[524 len 24]
            if not uint128(currentScale - depositSnapshots[address(arg1)].field_768):
                if not deposits[address(arg1)].field_0:
                    if not depositSnapshots[address(arg1)].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / depositSnapshots[address(arg1)].field_256 >= deposits[address(arg1)].field_0 / 10^9:
                        return (0 / depositSnapshots[address(arg1)].field_256)
                else:
                    if P * deposits[address(arg1)].field_0 / deposits[address(arg1)].field_0 != P:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not depositSnapshots[address(arg1)].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if P * deposits[address(arg1)].field_0 / depositSnapshots[address(arg1)].field_256 >= deposits[address(arg1)].field_0 / 10^9:
                        return (P * deposits[address(arg1)].field_0 / depositSnapshots[address(arg1)].field_256)
            else:
                if 1 == uint128(currentScale - depositSnapshots[address(arg1)].field_768):
                    if not deposits[address(arg1)].field_0:
                        if not depositSnapshots[address(arg1)].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / depositSnapshots[address(arg1)].field_256 / 10^9 >= deposits[address(arg1)].field_0 / 10^9:
                            return (0 / depositSnapshots[address(arg1)].field_256 / 10^9)
                    else:
                        if P * deposits[address(arg1)].field_0 / deposits[address(arg1)].field_0 != P:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not depositSnapshots[address(arg1)].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if P * deposits[address(arg1)].field_0 / depositSnapshots[address(arg1)].field_256 / 10^9 >= deposits[address(arg1)].field_0 / 10^9:
                            return (P * deposits[address(arg1)].field_0 / depositSnapshots[address(arg1)].field_256 / 10^9)
            return 0
        else:
            return 0
    else:
        return 0
}

function getFrontEndLQTYGain(address arg1) {
    require calldata.size - 4 >= 32
    if not frontEndStakes[address(arg1)]:
        return 0
    if frontEnds[address(arg1)].field_0 > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if frontEndSnapshots[address(arg1)].field_512 > epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768]:
        revert with 0, 'SafeMath: subtraction overflow'
    if uint128(frontEndSnapshots[address(arg1)].field_768 + 1) < frontEndSnapshots[address(arg1)].field_768:
        revert with 0, 32, 37, 0x774c697175697479536166654d6174683132383a206164646974696f6e206f766572666c6f, mem[649 len 27]
    if epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not frontEndStakes[address(arg1)]:
        if not frontEndSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not -frontEnds[address(arg1)].field_0 + 10^18:
            return 0
        if (10^18 * 0 / frontEndSnapshots[address(arg1)].field_256 / 10^18) - (frontEnds[address(arg1)].field_0 * 0 / frontEndSnapshots[address(arg1)].field_256 / 10^18) / -frontEnds[address(arg1)].field_0 + 10^18 != 0 / frontEndSnapshots[address(arg1)].field_256 / 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
        return ((10^18 * 0 / frontEndSnapshots[address(arg1)].field_256 / 10^18) - (frontEnds[address(arg1)].field_0 * 0 / frontEndSnapshots[address(arg1)].field_256 / 10^18) / 10^18)
    if (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndStakes[address(arg1)] != (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] - frontEndSnapshots[address(arg1)].field_512:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if not frontEndSnapshots[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not -frontEnds[address(arg1)].field_0 + 10^18:
        return 0
    if (10^18 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) - (frontEnds[address(arg1)].field_0 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) / -frontEnds[address(arg1)].field_0 + 10^18 != (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
    return ((10^18 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) - (frontEnds[address(arg1)].field_0 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) / 10^18)
}

function getDepositorETHGain(address arg1) {
    require calldata.size - 4 >= 32
    if not deposits[address(arg1)].field_0:
        return 0
    if depositSnapshots[address(arg1)].field_0 > epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768]:
        revert with 0, 'SafeMath: subtraction overflow'
    if uint128(depositSnapshots[address(arg1)].field_768 + 1) < depositSnapshots[address(arg1)].field_768:
        revert with 0, 32, 37, 0x774c697175697479536166654d6174683132383a206164646974696f6e206f766572666c6f, mem[585 len 27]
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not deposits[address(arg1)].field_0:
            if not depositSnapshots[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            return (0 / depositSnapshots[address(arg1)].field_256 / 10^18)
        if (epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_0 * deposits[address(arg1)].field_0) / deposits[address(arg1)].field_0 != (epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] - depositSnapshots[address(arg1)].field_0:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        return ((epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_0 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18)
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
    if epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not deposits[address(arg1)].field_0:
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 'SafeMath: division by zero'
        return (0 / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18))
    if (epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_0 * deposits[address(arg1)].field_0) / deposits[address(arg1)].field_0 != (epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] - depositSnapshots[address(arg1)].field_0:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    if not depositSnapshots[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not 10^(-uint8(ext_call.return_data[0]) + 18):
        revert with 0, 'SafeMath: division by zero'
    return ((epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_0 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^(-uint8(ext_call.return_data[0]) + 18))
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) {
    require calldata.size - 4 >= 256
    if uint8(stor2.field_168):
        P = 10^18
        collTokenAddress = arg1
        borrowerOperationsAddress = arg2
        troveManagerAddress = arg3
        activePoolAddress = arg4
        lusdTokenAddress = arg5
        sortedTrovesAddress = arg6
        priceFeedAddress = arg7
        communityIssuanceAddress = arg8
        emit 0x8adeca1d: arg1
        emit BorrowerOperationsAddressChanged(arg2);
        emit TroveManagerAddressChanged(arg3);
        emit ActivePoolAddressChanged(arg4);
        emit LUSDTokenAddressChanged(arg5);
        emit SortedTrovesAddressChanged(arg6);
        emit PriceFeedAddressChanged(arg7);
        emit CommunityIssuanceAddressChanged(arg8);
        mem[196 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    else:
        if not ext_code.size(this.address):
            if uint8(stor2.field_168):
                P = 10^18
                collTokenAddress = arg1
                borrowerOperationsAddress = arg2
                troveManagerAddress = arg3
                activePoolAddress = arg4
                lusdTokenAddress = arg5
                sortedTrovesAddress = arg6
                priceFeedAddress = arg7
                communityIssuanceAddress = arg8
                emit 0x8adeca1d: arg1
                emit BorrowerOperationsAddressChanged(arg2);
                emit TroveManagerAddressChanged(arg3);
                emit ActivePoolAddressChanged(arg4);
                emit LUSDTokenAddressChanged(arg5);
                emit SortedTrovesAddressChanged(arg6);
                emit PriceFeedAddressChanged(arg7);
                emit CommunityIssuanceAddressChanged(arg8);
                mem[196 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call arg1 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
            else:
                uint8(stor2.field_160) = 1
                uint8(stor2.field_168) = 1
                Mask(88, 0, stor2.field_168) = 0
                stor2.field_256 % 1 = 0
                P = 10^18
                collTokenAddress = arg1
                borrowerOperationsAddress = arg2
                troveManagerAddress = arg3
                activePoolAddress = arg4
                lusdTokenAddress = arg5
                sortedTrovesAddress = arg6
                priceFeedAddress = arg7
                communityIssuanceAddress = arg8
                emit 0x8adeca1d: arg1
                emit BorrowerOperationsAddressChanged(arg2);
                emit TroveManagerAddressChanged(arg3);
                emit ActivePoolAddressChanged(arg4);
                emit LUSDTokenAddressChanged(arg5);
                emit SortedTrovesAddressChanged(arg6);
                emit PriceFeedAddressChanged(arg7);
                emit CommunityIssuanceAddressChanged(arg8);
                mem[196 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
        else:
            if uint8(stor2.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
            if not uint8(stor2.field_168):
                uint8(stor2.field_160) = 1
                uint8(stor2.field_168) = 1
                Mask(88, 0, stor2.field_168) = 0
                stor2.field_256 % 1 = 0
            P = 10^18
            collTokenAddress = arg1
            borrowerOperationsAddress = arg2
            troveManagerAddress = arg3
            activePoolAddress = arg4
            lusdTokenAddress = arg5
            sortedTrovesAddress = arg6
            priceFeedAddress = arg7
            communityIssuanceAddress = arg8
            emit 0x8adeca1d: arg1
            emit BorrowerOperationsAddressChanged(arg2);
            emit TroveManagerAddressChanged(arg3);
            emit ActivePoolAddressChanged(arg4);
            emit LUSDTokenAddressChanged(arg5);
            emit SortedTrovesAddressChanged(arg6);
            emit PriceFeedAddressChanged(arg7);
            emit CommunityIssuanceAddressChanged(arg8);
            mem[196 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call arg1 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
            revert with 0, '!safeApprove'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeApprove'
    if not uint8(stor2.field_168):
        uint8(stor2.field_168) = 0
}

function getDepositorLQTYGain(address arg1) {
    require calldata.size - 4 >= 32
    if not deposits[address(arg1)].field_0:
        return 0
    if depositSnapshots[address(arg1)].field_512 > epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768]:
        revert with 0, 'SafeMath: subtraction overflow'
    if uint128(depositSnapshots[address(arg1)].field_768 + 1) < depositSnapshots[address(arg1)].field_768:
        revert with 0, 32, 37, 0x774c697175697479536166654d6174683132383a206164646974696f6e206f766572666c6f, mem[585 len 27]
    if epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not deposits[address(arg1)].field_256:
        if not deposits[address(arg1)].field_0:
            if not depositSnapshots[address(arg1)].field_256:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * 0 / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^18 != 0 / depositSnapshots[address(arg1)].field_256 / 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return (10^18 * 0 / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^18)
        if (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / deposits[address(arg1)].field_0 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] - depositSnapshots[address(arg1)].field_512:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^18 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return (10^18 * (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^18)
    if not deposits[address(arg1)].field_0:
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not frontEnds[stor11[address(arg1)].field_256].field_0:
            return 0
        if 0 / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / frontEnds[stor11[address(arg1)].field_256].field_0 != 0 / depositSnapshots[address(arg1)].field_256 / 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return (0 / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / 10^18)
    if (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / deposits[address(arg1)].field_0 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] - depositSnapshots[address(arg1)].field_512:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    if not depositSnapshots[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not frontEnds[stor11[address(arg1)].field_256].field_0:
        return 0
    if (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / frontEnds[stor11[address(arg1)].field_256].field_0 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
    return ((epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / 10^18)
}



}

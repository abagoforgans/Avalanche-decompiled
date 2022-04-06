contract main {




// =====================  Runtime code  =====================


#
#  - withdrawFromSP(uint256 arg1)
#  - offset(uint256 arg1, uint256 arg2)
#  - provideToSP(uint256 arg1, address arg2)
#  - withdrawETHGainToTrove(address arg1, address arg2)
#
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
address priceFeedAddress;
address owner;
address borrowerOperationsAddress;
address troveManagerAddress;
address lusdTokenAddress;
address sortedTrovesAddress;
address communityIssuanceAddress;
uint256 ETH;
uint256 totalLUSDDeposits;
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

function owner() {
    return owner
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

function isOwner() {
    return (msg.sender == owner)
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
                    0x6353746162696c697479506f6f6c3a206d757374206e6f7420616c7265616479206265206120726567697374657265642066726f6e7420656e,
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

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0, 'Account code size cannot be zero'
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    if not arg3:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg3):
        revert with 0, 'Account code size cannot be zero'
    if not arg4:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg4):
        revert with 0, 'Account code size cannot be zero'
    if not arg5:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg5):
        revert with 0, 'Account code size cannot be zero'
    if not arg6:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg6):
        revert with 0, 'Account code size cannot be zero'
    if not arg7:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg7):
        revert with 0, 'Account code size cannot be zero'
    borrowerOperationsAddress = arg1
    troveManagerAddress = arg2
    activePoolAddress = arg3
    lusdTokenAddress = arg4
    sortedTrovesAddress = arg5
    priceFeedAddress = arg6
    communityIssuanceAddress = arg7
    emit BorrowerOperationsAddressChanged(arg1);
    emit TroveManagerAddressChanged(arg2);
    emit ActivePoolAddressChanged(arg3);
    emit LUSDTokenAddressChanged(arg4);
    emit SortedTrovesAddressChanged(arg5);
    emit PriceFeedAddressChanged(arg6);
    emit CommunityIssuanceAddressChanged(arg7);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getDepositorETHGain(address arg1) {
    require calldata.size - 4 >= 32
    if not deposits[address(arg1)].field_0:
        return 0
    if depositSnapshots[address(arg1)].field_0 > epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768]:
        revert with 0, 'SafeMath: subtraction overflow'
    if uint128(depositSnapshots[address(arg1)].field_768 + 1) < depositSnapshots[address(arg1)].field_768:
        revert with 0, 32, 37, 0x774c697175697479536166654d6174683132383a206164646974696f6e206f766572666c6f, mem[585 len 27]
    if epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not deposits[address(arg1)].field_0:
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        return (0 / depositSnapshots[address(arg1)].field_256 / 10^18)
    if (epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_0 * deposits[address(arg1)].field_0) / deposits[address(arg1)].field_0 != (epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] - depositSnapshots[address(arg1)].field_0:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    if not depositSnapshots[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    return ((epochToScaleToSum[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToSum[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_0 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18)
}

function getCompoundedFrontEndStake(address arg1) {
    require calldata.size - 4 >= 32
    if frontEndStakes[address(arg1)]:
        if frontEndSnapshots[address(arg1)].field_896 >= currentEpoch:
            if frontEndSnapshots[address(arg1)].field_768 > currentScale:
                revert with 0, 32, 40, 0x254c697175697479536166654d6174683132383a207375627472616374696f6e206f766572666c6f, mem[524 len 24]
            if not uint128(currentScale - frontEndSnapshots[address(arg1)].field_768):
                if not frontEndStakes[address(arg1)]:
                    if not frontEndSnapshots[address(arg1)].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / frontEndSnapshots[address(arg1)].field_256 >= frontEndStakes[address(arg1)] / 10^9:
                        return (0 / frontEndSnapshots[address(arg1)].field_256)
                else:
                    if P * frontEndStakes[address(arg1)] / frontEndStakes[address(arg1)] != P:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
                revert with 0, 32, 40, 0x254c697175697479536166654d6174683132383a207375627472616374696f6e206f766572666c6f, mem[524 len 24]
            if not uint128(currentScale - depositSnapshots[address(arg1)].field_768):
                if not deposits[address(arg1)].field_0:
                    if not depositSnapshots[address(arg1)].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / depositSnapshots[address(arg1)].field_256 >= deposits[address(arg1)].field_0 / 10^9:
                        return (0 / depositSnapshots[address(arg1)].field_256)
                else:
                    if P * deposits[address(arg1)].field_0 / deposits[address(arg1)].field_0 != P:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
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
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
        return ((10^18 * 0 / frontEndSnapshots[address(arg1)].field_256 / 10^18) - (frontEnds[address(arg1)].field_0 * 0 / frontEndSnapshots[address(arg1)].field_256 / 10^18) / 10^18)
    if (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndStakes[address(arg1)] != (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] - frontEndSnapshots[address(arg1)].field_512:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if not frontEndSnapshots[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not -frontEnds[address(arg1)].field_0 + 10^18:
        return 0
    if (10^18 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) - (frontEnds[address(arg1)].field_0 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) / -frontEnds[address(arg1)].field_0 + 10^18 != (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
    return ((10^18 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) - (frontEnds[address(arg1)].field_0 * (epochToScaleToG[stor15[address(arg1)].field_896 << 128][stor15[address(arg1)].field_768 + 1 << 128] / 10^9 * frontEndStakes[address(arg1)]) + (epochToScaleToG[stor15[address(arg1)].field_768][stor15[address(arg1)].field_768] * frontEndStakes[address(arg1)]) - (frontEndSnapshots[address(arg1)].field_512 * frontEndStakes[address(arg1)]) / frontEndSnapshots[address(arg1)].field_256 / 10^18) / 10^18)
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
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return (10^18 * 0 / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^18)
        if (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / deposits[address(arg1)].field_0 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] - depositSnapshots[address(arg1)].field_512:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^18 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return (10^18 * (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 / 10^18)
    if not deposits[address(arg1)].field_0:
        if not depositSnapshots[address(arg1)].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not frontEnds[stor11[address(arg1)].field_256].field_0:
            return 0
        if 0 / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / frontEnds[stor11[address(arg1)].field_256].field_0 != 0 / depositSnapshots[address(arg1)].field_256 / 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return (0 / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / 10^18)
    if (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / deposits[address(arg1)].field_0 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9) + epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] - depositSnapshots[address(arg1)].field_512:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    if not depositSnapshots[address(arg1)].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not frontEnds[stor11[address(arg1)].field_256].field_0:
        return 0
    if (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / frontEnds[stor11[address(arg1)].field_256].field_0 != (epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
    return ((epochToScaleToG[stor12[address(arg1)].field_896 << 128][stor12[address(arg1)].field_768 + 1 << 128] / 10^9 * deposits[address(arg1)].field_0) + (epochToScaleToG[stor12[address(arg1)].field_768][stor12[address(arg1)].field_768] * deposits[address(arg1)].field_0) - (depositSnapshots[address(arg1)].field_512 * deposits[address(arg1)].field_0) / depositSnapshots[address(arg1)].field_256 / 10^18 * frontEnds[stor11[address(arg1)].field_256].field_0 / 10^18)
}



}

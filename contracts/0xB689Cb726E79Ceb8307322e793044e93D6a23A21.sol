contract main {




// =====================  Runtime code  =====================


#
#  - repayLUSD(uint256 arg1, address arg2, address arg3)
#  - withdrawLUSD(uint256 arg1, uint256 arg2, address arg3, address arg4)
#  - withdrawColl(uint256 arg1, address arg2, address arg3)
#  - adjustTrove(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6, address arg7)
#  - sub_8f09162b(?)
#  - moveETHGainToTrove(uint256 arg1, address arg2, address arg3, address arg4)
#  - addColl(uint256 arg1, address arg2, address arg3)
#
const sub_4fa8e0d0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const _100pct = 10^18

const MIN_NET_DEBT = (5 * 10^16 * 3600)

const LUSD_GAS_COMPENSATION = 20 * 10^18

const PERCENT_DIVISOR = 200

const CCR = 15 * 10^17

const MCR = 11 * 10^17

const DECIMAL_PRECISION = 10^18

const NAME = 'BorrowerOperations'

const BORROWING_FEE_FLOOR = 5 * 10^15


address activePoolAddress;
address defaultPoolAddress;
bool stor2; offset 256
uint8 initialized; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
address priceFeedAddress;
address lqtyStakingAddress;
address stor4;
address stor5;
address troveManagerAddress;
address sortedTrovesAddress;
address sub_cda775f9Address;
address lqtyStakingAddress;
address lusdTokenAddress;
address collTokenAddress;

function initialized() {
    return bool(initialized)
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

function priceFeed() {
    return priceFeedAddress
}

function lqtyStakingAddress() {
    return lqtyStakingAddress
}

function activePool() {
    return activePoolAddress
}

function lqtyStaking() {
    return lqtyStakingAddress
}

function sortedTroves() {
    return sortedTrovesAddress
}

function lusdToken() {
    return lusdTokenAddress
}

function sub_cda775f9(?) {
    return sub_cda775f9Address
}

function _fallback() payable {
    revert
}

function getCompositeDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 + 20 * 10^18 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    return (arg1 + 20 * 10^18)
}

function claimCollateral() {
    require ext_code.size(sub_cda775f9Address)
    call sub_cda775f9Address.0xb32beb5b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10, address arg11) {
    require calldata.size - 4 >= 352
    if uint8(stor2.field_168):
        collTokenAddress = arg1
        troveManagerAddress = arg2
        activePoolAddress = arg3
        defaultPoolAddress = arg4
        stor4 = arg5
        stor5 = arg6
        sub_cda775f9Address = arg7
        priceFeedAddress = arg8
        sortedTrovesAddress = arg9
        lusdTokenAddress = arg10
        lqtyStakingAddress = arg11
        lqtyStakingAddress = arg11
        emit 0x8adeca1d: arg1
        emit TroveManagerAddressChanged(arg2);
        emit ActivePoolAddressChanged(arg3);
        emit DefaultPoolAddressChanged(arg4);
        emit StabilityPoolAddressChanged(arg5);
        emit GasPoolAddressChanged(arg6);
        emit CollSurplusPoolAddressChanged(arg7);
        emit PriceFeedAddressChanged(arg8);
        emit SortedTrovesAddressChanged(arg9);
        emit LUSDTokenAddressChanged(arg10);
        emit LQTYStakingAddressChanged(arg11);
    else:
        if ext_code.size(this.address):
            if initialized:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x52496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor2.field_168):
            collTokenAddress = arg1
            troveManagerAddress = arg2
            activePoolAddress = arg3
            defaultPoolAddress = arg4
            stor4 = arg5
            stor5 = arg6
            sub_cda775f9Address = arg7
            priceFeedAddress = arg8
            sortedTrovesAddress = arg9
            lusdTokenAddress = arg10
            lqtyStakingAddress = arg11
            lqtyStakingAddress = arg11
            emit 0x8adeca1d: arg1
            emit TroveManagerAddressChanged(arg2);
            emit ActivePoolAddressChanged(arg3);
            emit DefaultPoolAddressChanged(arg4);
            emit StabilityPoolAddressChanged(arg5);
            emit GasPoolAddressChanged(arg6);
            emit CollSurplusPoolAddressChanged(arg7);
            emit PriceFeedAddressChanged(arg8);
            emit SortedTrovesAddressChanged(arg9);
            emit LUSDTokenAddressChanged(arg10);
            emit LQTYStakingAddressChanged(arg11);
        else:
            initialized = 1
            uint8(stor2.field_168) = 1
            Mask(88, 0, stor2.field_168) = 0
            stor2.field_256 % 1 = 0
            collTokenAddress = arg1
            troveManagerAddress = arg2
            activePoolAddress = arg3
            defaultPoolAddress = arg4
            stor4 = arg5
            stor5 = arg6
            sub_cda775f9Address = arg7
            priceFeedAddress = arg8
            sortedTrovesAddress = arg9
            lusdTokenAddress = arg10
            lqtyStakingAddress = arg11
            lqtyStakingAddress = arg11
            emit 0x8adeca1d: arg1
            emit TroveManagerAddressChanged(arg2);
            emit ActivePoolAddressChanged(arg3);
            emit DefaultPoolAddressChanged(arg4);
            emit StabilityPoolAddressChanged(arg5);
            emit GasPoolAddressChanged(arg6);
            emit CollSurplusPoolAddressChanged(arg7);
            emit PriceFeedAddressChanged(arg8);
            emit SortedTrovesAddressChanged(arg9);
            emit LUSDTokenAddressChanged(arg10);
            emit LQTYStakingAddressChanged(arg11);
            uint8(stor2.field_168) = 0
}

function closeTrove() {
    require ext_code.size(troveManagerAddress)
    staticcall troveManagerAddress.0x21e37801 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x64426f72726f7765724f70733a2054726f766520646f6573206e6f74206578697374206f7220697320636c6f7365,
                    mem[210 len 18]
    require ext_code.size(priceFeedAddress)
    call priceFeedAddress.fetchPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[353 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
            else:
                if not 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                57,
                                0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                                mem[349 len 7]
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[417 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
        else:
            if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not uint255(ext_call.return_data[0]):
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[353 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
            else:
                if not 2 * 10^18 * ext_call.return_data[0] / 10^18:
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                                    mem[349 len 7]
                else:
                    if ext_call.return_data[0] * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 2 * 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > ext_call.return_data[0] * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                                    mem[349 len 7]
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[417 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
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
        if not 2 * ext_call.return_data[0]:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not uint255(ext_call.return_data[0]):
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[353 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
            else:
                if not 0 / 10^uint8(ext_call.return_data[0]):
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                                    mem[349 len 7]
                else:
                    if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                                    mem[349 len 7]
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[417 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
        else:
            if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not uint255(ext_call.return_data[0]):
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[353 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[621 len 23]
            else:
                if not 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                                    mem[349 len 7]
                else:
                    if ext_call.return_data[0] * 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > ext_call.return_data[0] * 2 * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                                    mem[349 len 7]
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.applyPendingRewards(address rg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0x480cd578 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.0xd66a2553 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 20 * 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(lusdTokenAddress)
                staticcall lusdTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - 20 * 10^18:
                    revert with 0, 
                                32,
                                61,
                                0x65426f72726f7765724f70733a2043616c6c657220646f65736e74206861766520656e6f756768204c55534420746f206d616b652072657061796d656e,
                                mem[417 len 3]
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
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(activePoolAddress)
                staticcall activePoolAddress.0x498a6600 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^18:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
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
                    if not ext_call.return_data[0]:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 0 / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if not 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
                            else:
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                mem[685 len 23]
    require ext_code.size(troveManagerAddress)
    call troveManagerAddress.0xfe2ba848 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(troveManagerAddress)
    call troveManagerAddress.0xcbd138ae with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TroveUpdated(0, 0, 0, 1, msg.sender);
    if 20 * 10^18 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(activePoolAddress)
    call activePoolAddress.0x38d995a8 with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - 20 * 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lusdTokenAddress)
    call lusdTokenAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - 20 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(activePoolAddress)
    call activePoolAddress.0x38d995a8 with:
         gas gas_remaining wei
        args 20 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lusdTokenAddress)
    call lusdTokenAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor5, 20 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(activePoolAddress)
    call activePoolAddress.0x64a197f3 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

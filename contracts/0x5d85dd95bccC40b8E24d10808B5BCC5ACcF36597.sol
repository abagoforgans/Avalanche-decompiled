contract main {




// =====================  Runtime code  =====================


#
#  - repayLUSD(uint256 arg1, address arg2, address arg3)
#  - withdrawLUSD(uint256 arg1, uint256 arg2, address arg3, address arg4)
#  - withdrawColl(uint256 arg1, address arg2, address arg3)
#  - addColl(address arg1, address arg2)
#  - adjustTrove(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, address arg5, address arg6)
#  - moveETHGainToTrove(address arg1, address arg2, address arg3)
#
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
address priceFeedAddress;
address owner;
address troveManagerAddress;
address stor5;
address stor6;
address stor7;
address lqtyStakingAddress;
address lqtyStakingAddress;
address lusdTokenAddress;
address sortedTrovesAddress;

function defaultPool() {
    return defaultPoolAddress
}

function troveManager() {
    return troveManagerAddress
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

function owner() {
    return owner
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

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getCompositeDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 + 20 * 10^18 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    return (arg1 + 20 * 10^18)
}

function claimCollateral() {
    require ext_code.size(stor7)
    call stor7.claimColl(address rg1) with:
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

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10) {
    require calldata.size - 4 >= 320
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
    if not arg8:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg8):
        revert with 0, 'Account code size cannot be zero'
    if not arg9:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg9):
        revert with 0, 'Account code size cannot be zero'
    if not arg10:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg10):
        revert with 0, 'Account code size cannot be zero'
    troveManagerAddress = arg1
    activePoolAddress = arg2
    defaultPoolAddress = arg3
    stor5 = arg4
    stor6 = arg5
    stor7 = arg6
    priceFeedAddress = arg7
    sortedTrovesAddress = arg8
    lusdTokenAddress = arg9
    lqtyStakingAddress = arg10
    lqtyStakingAddress = arg10
    emit TroveManagerAddressChanged(arg1);
    emit ActivePoolAddressChanged(arg2);
    emit DefaultPoolAddressChanged(arg3);
    emit StabilityPoolAddressChanged(arg4);
    emit GasPoolAddressChanged(arg5);
    emit CollSurplusPoolAddressChanged(arg6);
    emit PriceFeedAddressChanged(arg7);
    emit SortedTrovesAddressChanged(arg8);
    emit LUSDTokenAddressChanged(arg9);
    emit LQTYStakingAddressChanged(arg10);
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function closeTrove() {
    require ext_code.size(troveManagerAddress)
    staticcall troveManagerAddress.getTroveStatus(address rg1) with:
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
    if not uint255(ext_call.return_data[0]):
        require ext_code.size(troveManagerAddress)
        call troveManagerAddress.applyPendingRewards(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.getTroveColl(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.getTroveDebt(address rg1) with:
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
                        mem[289 len 3]
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
        if ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] < 15 * 10^17:
                    revert with 0, 
                                32,
                                73,
                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                mem[493 len 23]
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                    revert with 0, 
                                32,
                                73,
                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                mem[493 len 23]
    else:
        if not 2 * ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                revert with 0, 
                            32,
                            57,
                            0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                            mem[285 len 7]
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                revert with 0, 
                            32,
                            57,
                            0x6c426f72726f7765724f70733a204f7065726174696f6e206e6f74207065726d697474656420647572696e67205265636f76657279204d6f64,
                            mem[285 len 7]
        require ext_code.size(troveManagerAddress)
        call troveManagerAddress.applyPendingRewards(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.getTroveColl(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.getTroveDebt(address rg1) with:
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
        if ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] < 15 * 10^17:
                    revert with 0, 
                                32,
                                73,
                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                mem[557 len 23]
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] < 15 * 10^17:
                    revert with 0, 
                                32,
                                73,
                                0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                mem[557 len 23]
    require ext_code.size(troveManagerAddress)
    call troveManagerAddress.removeStake(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(troveManagerAddress)
    call troveManagerAddress.closeTrove(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x64c3770d: 0, 0, 0, 1, msg.sender
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
        args stor6, 20 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(activePoolAddress)
    call activePoolAddress.0x64a197f3 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function openTrove(uint256 arg1, uint256 arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
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
    if not uint255(ext_call.return_data[0]):
        if arg1 < 5 * 10^15:
            revert with 0, 
                        32,
                        48,
                        0x6c4d6178206665652070657263656e74616765206d757374206265206265747765656e20302e352520616e6420313030,
                        mem[660 len 16]
        if arg1 > 10^18:
            revert with 0, 
                        32,
                        48,
                        0x6c4d6178206665652070657263656e74616765206d757374206265206265747765656e20302e352520616e6420313030,
                        mem[660 len 16]
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.getTroveStatus(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == 1:
            revert with 0, 'BorrowerOps: Trove is active'
        require ext_code.size(troveManagerAddress)
        call troveManagerAddress.decayBaseRateFromBorrowing() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(troveManagerAddress)
        staticcall troveManagerAddress.getBorrowingFee(uint256 rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not arg2:
                revert with 0, 'SafeMath: division by zero'
            if 0 / arg2 > arg1:
                revert with 0, 'Fee exceeded provided maximum'
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if not arg2:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * ext_call.return_data[0] / arg2 > arg1:
                revert with 0, 'Fee exceeded provided maximum'
        require ext_code.size(lqtyStakingAddress)
        call lqtyStakingAddress.increaseF_LUSD(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lusdTokenAddress)
        call lusdTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args lqtyStakingAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] + arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + arg2 < 5 * 10^16 * 3600:
            revert with 0, 
                        32,
                        58,
                        0x64426f72726f7765724f70733a2054726f76652773206e65742064656274206d7573742062652067726561746572207468616e206d696e696d75,
                        mem[734 len 6]
        require ext_call.return_data[0] + arg2 + 20 * 10^18
        if not ext_call.return_data[0] + arg2 + 20 * 10^18:
            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                revert with 0, 
                            32,
                            73,
                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                            mem[749 len 23]
            if msg.value:
                if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                revert with 0, 'SafeMath: division by zero'
            revert with 0, 
                        32,
                        73,
                        0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                        mem[813 len 23]
        if not msg.value:
            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                    revert with 0, 
                                32,
                                73,
                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                mem[813 len 23]
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
                if msg.value < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[772] = arg4
                    require ext_code.size(sortedTrovesAddress)
                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                         gas gas_remaining wei
                        args msg.sender, -1, address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                    call activePoolAddress with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        arg4 % 72057594037927936 << 96
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        mem[ceil32(return_data.size) + 786 len 19]
                else:
                    if not msg.value + (2 * ext_call.return_data[0]):
                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                            revert with 0, 
                                        32,
                                        73,
                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                        mem[877 len 23]
                    else:
                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                            revert with 0, 'SafeMath: division by zero'
                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                            revert with 0, 
                                        32,
                                        73,
                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                        mem[877 len 23]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[836] = arg4
                    require ext_code.size(sortedTrovesAddress)
                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                         gas gas_remaining wei
                        args msg.sender, -1, address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                    call activePoolAddress with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        arg4 % 72057594037927936 << 96
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        mem[ceil32(return_data.size) + 850 len 19]
            else:
                if not msg.value:
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[877 len 23]
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
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[836] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value + (2 * ext_call.return_data[0]):
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        else:
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[900] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 914 len 19]
                else:
                    if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[877 len 23]
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
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[836] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value + (2 * ext_call.return_data[0]):
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        else:
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[900] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 914 len 19]
        else:
            if ext_call.return_data[0] * msg.value / msg.value != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                    revert with 0, 
                                32,
                                73,
                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                mem[813 len 23]
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
                if msg.value < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[772] = arg4
                    require ext_code.size(sortedTrovesAddress)
                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                         gas gas_remaining wei
                        args msg.sender, -1, address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                    call activePoolAddress with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        arg4 % 72057594037927936 << 96
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        mem[ceil32(return_data.size) + 786 len 19]
                else:
                    if not msg.value + (2 * ext_call.return_data[0]):
                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                            revert with 0, 
                                        32,
                                        73,
                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                        mem[877 len 23]
                    else:
                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                            revert with 0, 'SafeMath: division by zero'
                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                            revert with 0, 
                                        32,
                                        73,
                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                        mem[877 len 23]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[836] = arg4
                    require ext_code.size(sortedTrovesAddress)
                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                         gas gas_remaining wei
                        args msg.sender, -1, address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(troveManagerAddress)
                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                    call activePoolAddress with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        arg4 % 72057594037927936 << 96
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                        mem[ceil32(return_data.size) + 850 len 19]
            else:
                if not msg.value:
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[877 len 23]
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
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[836] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value + (2 * ext_call.return_data[0]):
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        else:
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[900] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 914 len 19]
                else:
                    if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[877 len 23]
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
                    if msg.value < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[836] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value + (2 * ext_call.return_data[0]):
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        else:
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                            mem[941 len 23]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[900] = arg4
                        require ext_code.size(sortedTrovesAddress)
                        call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(troveManagerAddress)
                        call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TroveCreated(ext_call.return_data[0], msg.sender);
                        call activePoolAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            arg4 % 72057594037927936 << 96
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            45,
                                            0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                            mem[ceil32(return_data.size) + 914 len 19]
        ('bool', 'ext_call.success')
        require ext_code.size(activePoolAddress)
        call activePoolAddress.0xcfb9329a with:
             gas gas_remaining wei
            args (ext_call.return_data[0] + arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lusdTokenAddress)
        call lusdTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(activePoolAddress)
        call activePoolAddress.0xcfb9329a with:
             gas gas_remaining wei
            args 20 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lusdTokenAddress)
        call lusdTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args stor6, 20 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x64c3770d: ext_call.return_data[0] + arg2 + 20 * 10^18, msg.value, ext_call.return_data[0], 0, msg.sender
        emit LUSDBorrowingFeePaid(ext_call.return_data[0], msg.sender);
    else:
        if not 2 * ext_call.return_data[0]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                if arg1 > 10^18:
                    revert with 0, 
                                32,
                                50,
                                0x524d6178206665652070657263656e74616765206d757374206c657373207468616e206f7220657175616c20746f20313030,
                                mem[726 len 14]
            else:
                if arg1 < 5 * 10^15:
                    revert with 0, 
                                32,
                                48,
                                0x6c4d6178206665652070657263656e74616765206d757374206265206265747765656e20302e352520616e6420313030,
                                mem[724 len 16]
                if arg1 > 10^18:
                    revert with 0, 
                                32,
                                48,
                                0x6c4d6178206665652070657263656e74616765206d757374206265206265747765656e20302e352520616e6420313030,
                                mem[724 len 16]
            ('le', ('param', 'arg1'), 1000000000000000000)
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.getTroveStatus(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] == 1:
                revert with 0, 'BorrowerOps: Trove is active'
            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                if arg2 < 5 * 10^16 * 3600:
                    revert with 0, 
                                32,
                                58,
                                0x64426f72726f7765724f70733a2054726f76652773206e65742064656274206d7573742062652067726561746572207468616e206d696e696d75,
                                mem[734 len 6]
                if arg2 + 20 * 10^18 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                require arg2 + 20 * 10^18
                if not arg2 + 20 * 10^18:
                    if not arg2 + 20 * 10^18:
                        if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                        mem[731 len 9]
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[749 len 23]
                    if msg.value:
                        if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                    mem[795 len 9]
                    revert with 0, 
                                32,
                                73,
                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                mem[813 len 23]
                if not msg.value:
                    if not arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2 + 20 * 10^18:
                        if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                            if 0 / arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[795 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[772] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 786 len 19]
                        else:
                            if 0 / arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[813 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[772] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 786 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value:
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if 0 / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if 0 / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if 0 / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if 0 / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                else:
                    if ext_call.return_data[0] * msg.value / msg.value != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2 + 20 * 10^18:
                        if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                            if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[795 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[772] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 786 len 19]
                        else:
                            if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[813 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[772] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 786 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value:
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                ('bool', 'ext_call.success')
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args stor6, 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x64c3770d: arg2 + 20 * 10^18, msg.value, ext_call.return_data[0], 0, msg.sender
                emit LUSDBorrowingFeePaid(0, msg.sender);
            else:
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.decayBaseRateFromBorrowing() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.getBorrowingFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not arg2:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 > arg1:
                        revert with 0, 'Fee exceeded provided maximum'
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * ext_call.return_data[0] / arg2 > arg1:
                        revert with 0, 'Fee exceeded provided maximum'
                require ext_code.size(lqtyStakingAddress)
                call lqtyStakingAddress.increaseF_LUSD(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args lqtyStakingAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + arg2 < 5 * 10^16 * 3600:
                    revert with 0, 
                                32,
                                58,
                                0x64426f72726f7765724f70733a2054726f76652773206e65742064656274206d7573742062652067726561746572207468616e206d696e696d75,
                                mem[798 len 6]
                require ext_call.return_data[0] + arg2 + 20 * 10^18
                if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                        mem[795 len 9]
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[813 len 23]
                    if msg.value:
                        if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                    mem[859 len 9]
                    revert with 0, 
                                32,
                                73,
                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                mem[877 len 23]
                if not msg.value:
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[859 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[836] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 850 len 19]
                        else:
                            if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[877 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                    else:
                        if not msg.value:
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                else:
                    if ext_call.return_data[0] * msg.value / msg.value != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                            if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[859 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[836] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 850 len 19]
                        else:
                            if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[877 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                    else:
                        if not msg.value:
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > 0 / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                ('bool', 'ext_call.success')
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] + arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args stor6, 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x64c3770d: ext_call.return_data[0] + arg2 + 20 * 10^18, msg.value, ext_call.return_data[0], 0, msg.sender
                emit LUSDBorrowingFeePaid(ext_call.return_data[0], msg.sender);
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if not 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                if arg1 > 10^18:
                    revert with 0, 
                                32,
                                50,
                                0x524d6178206665652070657263656e74616765206d757374206c657373207468616e206f7220657175616c20746f20313030,
                                mem[726 len 14]
            else:
                if arg1 < 5 * 10^15:
                    revert with 0, 
                                32,
                                48,
                                0x6c4d6178206665652070657263656e74616765206d757374206265206265747765656e20302e352520616e6420313030,
                                mem[724 len 16]
                if arg1 > 10^18:
                    revert with 0, 
                                32,
                                48,
                                0x6c4d6178206665652070657263656e74616765206d757374206265206265747765656e20302e352520616e6420313030,
                                mem[724 len 16]
            ('le', ('param', 'arg1'), 1000000000000000000)
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.getTroveStatus(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] == 1:
                revert with 0, 'BorrowerOps: Trove is active'
            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                if arg2 < 5 * 10^16 * 3600:
                    revert with 0, 
                                32,
                                58,
                                0x64426f72726f7765724f70733a2054726f76652773206e65742064656274206d7573742062652067726561746572207468616e206d696e696d75,
                                mem[734 len 6]
                if arg2 + 20 * 10^18 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                require arg2 + 20 * 10^18
                if not arg2 + 20 * 10^18:
                    if not arg2 + 20 * 10^18:
                        if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                        mem[731 len 9]
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[749 len 23]
                    if msg.value:
                        if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                    mem[795 len 9]
                    revert with 0, 
                                32,
                                73,
                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                mem[813 len 23]
                if not msg.value:
                    if not arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2 + 20 * 10^18:
                        if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                            if 0 / arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[795 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[772] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 786 len 19]
                        else:
                            if 0 / arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[813 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[772] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 786 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value:
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if 0 / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if 0 / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if 0 / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if 0 / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                else:
                    if ext_call.return_data[0] * msg.value / msg.value != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg2 + 20 * 10^18:
                        if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                            if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[795 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[772] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 786 len 19]
                        else:
                            if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[813 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[772] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 786 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                    if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[877 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                    else:
                        if not msg.value:
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            if not arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[859 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[877 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[836] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 850 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if not arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 + (2 * ext_call.return_data[0]) + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[941 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                ('bool', 'ext_call.success')
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args stor6, 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x64c3770d: arg2 + 20 * 10^18, msg.value, ext_call.return_data[0], 0, msg.sender
                emit LUSDBorrowingFeePaid(0, msg.sender);
            else:
                require ext_code.size(troveManagerAddress)
                call troveManagerAddress.decayBaseRateFromBorrowing() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(troveManagerAddress)
                staticcall troveManagerAddress.getBorrowingFee(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not arg2:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 > arg1:
                        revert with 0, 'Fee exceeded provided maximum'
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * ext_call.return_data[0] / arg2 > arg1:
                        revert with 0, 'Fee exceeded provided maximum'
                require ext_code.size(lqtyStakingAddress)
                call lqtyStakingAddress.increaseF_LUSD(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args lqtyStakingAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + arg2 < 5 * 10^16 * 3600:
                    revert with 0, 
                                32,
                                58,
                                0x64426f72726f7765724f70733a2054726f76652773206e65742064656274206d7573742062652067726561746572207468616e206d696e696d75,
                                mem[798 len 6]
                require ext_call.return_data[0] + arg2 + 20 * 10^18
                if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        55,
                                        0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                        mem[795 len 9]
                        revert with 0, 
                                    32,
                                    73,
                                    0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                    mem[813 len 23]
                    if msg.value:
                        if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    55,
                                    0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                    mem[859 len 9]
                    revert with 0, 
                                32,
                                73,
                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                mem[877 len 23]
                if not msg.value:
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[859 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[836] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 850 len 19]
                        else:
                            if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[877 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                    else:
                        if not msg.value:
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if 0 / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                else:
                    if ext_call.return_data[0] * msg.value / msg.value != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                        if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                            if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                revert with 0, 
                                            32,
                                            55,
                                            0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                            mem[859 len 9]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[836] = arg4
                            require ext_code.size(sortedTrovesAddress)
                            call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, -1, address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(troveManagerAddress)
                            call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TroveCreated(ext_call.return_data[0], msg.sender);
                            call activePoolAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                arg4 % 72057594037927936 << 96
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                45,
                                                0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                mem[ceil32(return_data.size) + 850 len 19]
                        else:
                            if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                revert with 0, 
                                            32,
                                            73,
                                            0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                            mem[877 len 23]
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
                            if msg.value < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[836] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 850 len 19]
                            else:
                                if not msg.value + (2 * ext_call.return_data[0]):
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                else:
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                    if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                        revert with 0, 
                                                    32,
                                                    73,
                                                    0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                    mem[941 len 23]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, -1, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                    else:
                        if not msg.value:
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0 / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                        else:
                            if 100 * 10^18 * msg.value / msg.value != 100 * 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not ext_call.return_data[0] + arg2 + 20 * 10^18:
                                revert with 0, 'SafeMath: division by zero'
                            if 15 * 10^17 > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0]:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 15 * 10^17:
                                    revert with 0, 
                                                32,
                                                55,
                                                0x65426f72726f7765724f70733a204f7065726174696f6e206d757374206c656176652074726f7665207769746820494352203e3d204343,
                                                mem[923 len 9]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[900] = arg4
                                require ext_code.size(sortedTrovesAddress)
                                call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(troveManagerAddress)
                                call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TroveCreated(ext_call.return_data[0], msg.sender);
                                call activePoolAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    arg4 % 72057594037927936 << 96
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    45,
                                                    0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                    mem[ceil32(return_data.size) + 914 len 19]
                            else:
                                if ext_call.return_data[0] * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18 < 11 * 10^17:
                                    revert with 0, 
                                                32,
                                                73,
                                                0x74426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20494352203c204d4352206973206e6f74207065726d69747465,
                                                mem[941 len 23]
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
                                if msg.value < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] + arg2 + 20 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[900] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 914 len 19]
                                else:
                                    if not msg.value + (2 * ext_call.return_data[0]):
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if 0 / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    else:
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / msg.value + (2 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                        if not (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (msg.value * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / (3 * ext_call.return_data[0]) + arg2 + 20 * 10^18 < 15 * 10^17:
                                            revert with 0, 
                                                        32,
                                                        73,
                                                        0x77426f72726f7765724f70733a20416e206f7065726174696f6e207468617420776f756c6420726573756c7420696e20544352203c20434352206973206e6f74207065726d69747465,
                                                        mem[1005 len 23]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.setTroveStatus(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveColl(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.increaseTroveDebt(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0] + arg2 + 20 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateTroveRewardSnapshots(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.updateStakeAndTotalStakes(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[964] = arg4
                                    require ext_code.size(sortedTrovesAddress)
                                    call sortedTrovesAddress.insert(address rg1, uint256 rg2, address rg3, address rg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 100 * 10^18 * msg.value / ext_call.return_data[0] + arg2 + 20 * 10^18, address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(troveManagerAddress)
                                    call troveManagerAddress.addTroveOwnerToArray(address rg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TroveCreated(ext_call.return_data[0], msg.sender);
                                    call activePoolAddress with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        arg4 % 72057594037927936 << 96
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        45,
                                                        0xfe426f72726f7765724f70733a2053656e64696e672045544820746f20416374697665506f6f6c206661696c65,
                                                        mem[ceil32(return_data.size) + 978 len 19]
                ('bool', 'ext_call.success')
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] + arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(activePoolAddress)
                call activePoolAddress.0xcfb9329a with:
                     gas gas_remaining wei
                    args 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lusdTokenAddress)
                call lusdTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args stor6, 20 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x64c3770d: ext_call.return_data[0] + arg2 + 20 * 10^18, msg.value, ext_call.return_data[0], 0, msg.sender
                emit LUSDBorrowingFeePaid(ext_call.return_data[0], msg.sender);
}



}

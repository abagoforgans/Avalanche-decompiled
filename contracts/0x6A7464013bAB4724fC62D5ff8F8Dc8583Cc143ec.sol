contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#  - leverageToMax()
#  - deleverageUntil(uint256 arg1)
#  - leverageUntil(uint256 arg1)
#  - deleverageToMin()
#  - sync()
#
const keepMax = 10000

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const getName = 'ax'

const benqi = 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5

const revenueShareMax = 10000

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const performanceTreasuryMax = 10000

const withdrawalDevFundMax = 100000

const performanceDevMax = 10000

const sub_523d4825(?) = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c

const png = 0x60781c2586d68229fde47564546784ab3faca982

const comptroller = 0x486af39519b4dc9a7fccd318217352830e8ad9b4

const withdrawalTreasuryMax = 100000


address wantAddress;
address pangolinRouterAddress;
address feeDistributorAddress;
uint256 performanceTreasuryFee;
uint256 performanceDevFee;
uint256 keep;
uint256 revenueShare;
uint256 withdrawalTreasuryFee;
uint256 withdrawalDevFundFee;
address governanceAddress;
uint32 stor10;
address controllerAddress;
uint256 stor10;
address strategistAddress;
address timelockAddress;
mapping of uint8 stor13;
address sub_462e4cdaAddress;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
mapping of uint8 stor19;

function feeDistributor() {
    return feeDistributorAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function sub_462e4cda(?) {
    return sub_462e4cdaAddress
}

function withdrawalDevFundFee() {
    return withdrawalDevFundFee
}

function performanceTreasuryFee() {
    return performanceTreasuryFee
}

function governance() {
    return governanceAddress
}

function pangolinRouter() {
    return pangolinRouterAddress
}

function harvesters(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function performanceDevFee() {
    return performanceDevFee
}

function withdrawalTreasuryFee() {
    return withdrawalTreasuryFee
}

function timelock() {
    return timelockAddress
}

function keep() {
    return keep
}

function controller() {
    return address(controllerAddress)
}

function revenueShare() {
    return revenueShare
}

function _fallback() payable {
    revert
}

function setKeep(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    keep = arg1
}

function setTimelock(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setRevenueShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    revenueShare = arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setPerformanceDevFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceDevFee = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setWithdrawalDevFundFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    withdrawalDevFundFee = arg1
}

function setWithdrawalTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    withdrawalTreasuryFee = arg1
}

function setFeeDistributor(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'not authorized'
    feeDistributorAddress = arg1
}

function setPerformanceTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceTreasuryFee = arg1
}

function addKeeper(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor19[address(arg1)] = 1
}

function setColFactorSyncBuffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor17 = arg1
}

function removeKeeper(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor19[address(arg1)] = 0
}

function setColFactorLeverageBuffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor15 = arg1
}

function revokeHarvester(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, 'not authorized'
    stor13[address(arg1)] = 0
}

function whitelistHarvester(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, 'not authorized'
    stor13[address(arg1)] = 1
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getSupplied() {
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBorrowed() {
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBorrowedView() {
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMarketColFactor() {
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
            gas gas_remaining wei
           args sub_462e4cdaAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[32]
}

function getSuppliedView() {
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[96]:
        if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[96] == ext_call.return_data[32]:
            return (ext_call.return_data[32] * ext_call.return_data[96] / 10^18)
        else:
            return 0
    else:
        return 0
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    if not arg1:
        revert with 0, '!target'
    delegate arg1 with:
         gas gas_remaining - 5000 wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function getSuppliedUnleveraged() {
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function getCurrentLeverage() {
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    revert with 0, 'SafeMath: division by zero'
}

function getSafeSyncColFactor() {
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
            gas gas_remaining wei
           args sub_462e4cdaAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not stor17:
        if not stor18:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor18 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[32] - (0 / stor18))
    if 10^18 * stor17 / stor17 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor18:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * stor17 / stor18 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[32] - (10^18 * stor17 / stor18))
}

function getSafeLeverageColFactor() {
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
            gas gas_remaining wei
           args sub_462e4cdaAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not stor15:
        if not stor16:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor16 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[32] - (0 / stor16))
    if 10^18 * stor15 / stor15 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor16:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * stor15 / stor16 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[32] - (10^18 * stor15 / stor16))
}

function getColFactor() {
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function balanceOfPool() {
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[96]:
        if ext_call.return_data[0] > 0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[96] == ext_call.return_data[32]:
            if ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((ext_call.return_data[32] * ext_call.return_data[96] / 10^18) - ext_call.return_data[0])
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
    return -ext_call.return_data[0]
}

function deposit() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        call wantAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < ext_call.return_data[0]:
            revert with 0, '!unwrap unsuccessful'
        require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
        call 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.mint() with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
        staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'qitokens not received'
}

function getMaxLeverage() {
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
            gas gas_remaining wei
           args sub_462e4cdaAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not stor15:
        if not stor16:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor16 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[32] + (0 / stor16) + 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (1000000000000000000 * 10^18 / -ext_call.return_data[32] + (0 / stor16) + 10^18)
    if 10^18 * stor15 / stor15 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor16:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * stor15 / stor16 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -ext_call.return_data[32] + (10^18 * stor15 / stor16) + 10^18:
        revert with 0, 'SafeMath: division by zero'
    return (1000000000000000000 * 10^18 / -ext_call.return_data[32] + (10^18 * stor15 / stor16) + 10^18)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor10)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function getLeveragedSupplyTarget(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
            gas gas_remaining wei
           args sub_462e4cdaAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not stor15:
        if not stor16:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor16 > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[32] + (0 / stor16) + 10^18:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            return 0
        if 1000000000000000000 * 10^18 / -ext_call.return_data[32] + (0 / stor16) + 10^18 * arg1 / arg1 != 1000000000000000000 * 10^18 / -ext_call.return_data[32] + (0 / stor16) + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (1000000000000000000 * 10^18 / -ext_call.return_data[32] + (0 / stor16) + 10^18 * arg1 / 10^18)
    if 10^18 * stor15 / stor15 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor16:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * stor15 / stor16 > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -ext_call.return_data[32] + (10^18 * stor15 / stor16) + 10^18:
        revert with 0, 'SafeMath: division by zero'
    if not arg1:
        return 0
    if 1000000000000000000 * 10^18 / -ext_call.return_data[32] + (10^18 * stor15 / stor16) + 10^18 * arg1 / arg1 != 1000000000000000000 * 10^18 / -ext_call.return_data[32] + (10^18 * stor15 / stor16) + 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return (1000000000000000000 * 10^18 / -ext_call.return_data[32] + (10^18 * stor15 / stor16) + 10^18 * arg1 / 10^18)
}

function getBorrowable() {
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
            gas gas_remaining wei
           args sub_462e4cdaAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[0]:
            return 0
        if -9999 * ext_call.return_data[0] / -ext_call.return_data[0] != 9999:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (-9999 * ext_call.return_data[0] / 10000)
    if ext_call.return_data[32] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (ext_call.return_data[32] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]:
        return 0
    if (9999 * ext_call.return_data[32] * ext_call.return_data[0] / 10^18) - (9999 * ext_call.return_data[0]) / (ext_call.return_data[32] * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] != 9999:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return ((9999 * ext_call.return_data[32] * ext_call.return_data[0] / 10^18) - (9999 * ext_call.return_data[0]) / 10000)
}

function balanceOf() {
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[96]:
        if ext_call.return_data[0] > 0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / 10^18 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[96] == ext_call.return_data[32]:
            if ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[32] * ext_call.return_data[96] / 10^18)
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
    return 0
}

function getRedeemable() {
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
            gas gas_remaining wei
           args sub_462e4cdaAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[32] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - (0 / ext_call.return_data[32]):
            return 0
        if (9999 * ext_call.return_data[0]) - (9999 * 0 / ext_call.return_data[32]) / ext_call.return_data[0] - (0 / ext_call.return_data[32]) != 9999:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return ((9999 * ext_call.return_data[0]) - (9999 * 0 / ext_call.return_data[32]) / 10000)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[32]:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[32] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / ext_call.return_data[32]):
        return 0
    if (9999 * ext_call.return_data[0]) - (9999 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / ext_call.return_data[32]) != 9999:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return ((9999 * ext_call.return_data[0]) - (9999 * 10^18 * ext_call.return_data[0] / ext_call.return_data[32]) / 10000)
}

function withdrawForSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).0x6d1b4bde with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!globe'
        mem[132] = ext_call.return_data[12 len 20]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, ext_call.return_data[12 len 20], ext_call.return_data[0]
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        return ext_call.return_data[0]
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
    staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 - ext_call.return_data[0]:
        revert with 0, '!cash-liquidity'
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    revert with 0, 'SafeMath: division by zero'
}

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[128] = 0
    mem[160] = 0
    if not ext_call.return_data[96]:
        mem[192] = 0
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > 0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (0 / 10^18) - ext_call.return_data[0]:
            if ext_call.return_data[0] > (0 / 10^18) - ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
            staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.getCash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (0 / 10^18) - (2 * ext_call.return_data[0]):
                revert with 0, '!cash-liquidity'
            require ext_code.size(sub_462e4cdaAddress)
            call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            revert with 0, 'SafeMath: division by zero'
    else:
        if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[96] == ext_call.return_data[32]:
            mem[192] = ext_call.return_data[32] * ext_call.return_data[96]
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[96] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (ext_call.return_data[32] * ext_call.return_data[96] / 10^18) - ext_call.return_data[0]:
                if ext_call.return_data[0] > (ext_call.return_data[32] * ext_call.return_data[96] / 10^18) - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
                staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.getCash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[32] * ext_call.return_data[96] / 10^18) - (2 * ext_call.return_data[0]):
                    revert with 0, '!cash-liquidity'
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                revert with 0, 'SafeMath: division by zero'
        else:
            mem[192] = 0
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < -ext_call.return_data[0]:
                if ext_call.return_data[0] > -ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
                staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.getCash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < -2 * ext_call.return_data[0]:
                    revert with 0, '!cash-liquidity'
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.balanceOfUnderlying(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                call sub_462e4cdaAddress.borrowBalanceCurrent(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                revert with 0, 'SafeMath: division by zero'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x6d1b4bde with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!globe'
    mem[324] = ext_call.return_data[12 len 20]
    mem[356] = ext_call.return_data[0]
    mem[288] = 68
    mem[320 len 4] = unknown_0xa9059cbb(?????)
    mem[388] = 32
    mem[420] = 'SafeERC20: low-level call failed'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[452 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    mem[544 len 4] = 0
    mem[516 len 0] = 0
    call wantAddress.mem[352 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[96]:
                revert with memory
                  from 128
                   len ext_call.return_data[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[96]:
            return ext_call.return_data[0]
        require ext_call.return_data[96] >= 32
        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[562 len 22]
    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[484]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 563 len 22]
    return ext_call.return_data[0]
}

function getHarvestable() {
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
            gas gas_remaining wei
           args 0, sub_462e4cdaAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 0, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], 
                           (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            else:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0], 
                   (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], 
                           (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            else:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0], 
                   (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 1, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 1, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        else:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
               (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 0, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], 
                           (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            else:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0], 
                   (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], 
                           (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            else:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0], 
                   (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 1, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 1, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
        else:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
               (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
            gas gas_remaining wei
           args 0, sub_462e4cdaAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                           ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                           ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                        gas gas_remaining wei
                       args 1, sub_462e4cdaAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_462e4cdaAddress)
                staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                           ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                           ext_call.return_data[0]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                       (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                    gas gas_remaining wei
                   args 1, sub_462e4cdaAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_462e4cdaAddress)
            staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
                if ext_call.return_data[0]:
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                           (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
            else:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
    else:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
    if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplyState(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSupplierIndex(uint8 rg1, address rg2, address rg3) with:
            gas gas_remaining wei
           args 1, sub_462e4cdaAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 1, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
               (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
                gas gas_remaining wei
               args 1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
                gas gas_remaining wei
               args 1, sub_462e4cdaAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= Mask(224, 0, ext_call.return_data[0]):
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
               (-1 * Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowState(uint8 rg1, address rg2) with:
            gas gas_remaining wei
           args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardBorrowerIndex(uint8 rg1, address rg2, address rg3) with:
            gas gas_remaining wei
           args 1, sub_462e4cdaAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(224, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
                   (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
    else:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if 0 > (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0], 
           (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0]
}



}

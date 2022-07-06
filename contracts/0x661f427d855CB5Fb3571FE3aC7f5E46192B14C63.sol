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

const sub_10475e4e(?) = ext_call.return_data[0]

const balanceOfPool = 0

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66

const sub_12ab2a4d(?) = 0xdfe521292ece2a4f44242efbcd66bc594ca9714b

const getName = 'StrategyAaveWavaxV3', 0

const revenueShareMax = 10000

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const performanceTreasuryMax = 10000

const getMarketColFactor = 5 * 10^17

const withdrawalDevFundMax = 100000

const performanceDevMax = 10000

const getSupplied = ext_call.return_data[0]

const getBorrowedView = ext_call.return_data[0]

const png = 0x60781c2586d68229fde47564546784ab3faca982

const getSuppliedView = ext_call.return_data[0]

const getBorrowed = ext_call.return_data[0]

const sub_8f353c3d(?) = 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4

const getSuppliedUnleveraged = 0

const lendingPool = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c

const incentivesController = 0x1d83fe6a10d2f2b7af17034343746188272cac9

const sub_fbcb9016(?) = 5 * 10^17

const withdrawalTreasuryMax = 100000

const REFERRAL_CODE = 170


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
uint256 stor14;
uint256 stor15;
mapping of uint8 stor16;

function feeDistributor() {
    return feeDistributorAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
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
    require arg1 == arg1
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

function setRevenueShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    revenueShare = arg1
}

function setPerformanceDevFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceDevFee = arg1
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

function setPerformanceTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceTreasuryFee = arg1
}

function setTimelock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setFeeDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'not authorized'
    feeDistributorAddress = arg1
}

function setColFactorLeverageBuffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor14 = arg1
}

function addKeeper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor16[address(arg1)] = 1
}

function removeKeeper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor16[address(arg1)] = 0
}

function revokeHarvester(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, 'not authorized'
    stor13[address(arg1)] = 0
}

function whitelistHarvester(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function getSafeLeverageColFactor() {
    if not stor14:
        if not stor15:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / stor15 > 5 * 10^17:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (-(0 / stor15) + 5 * 10^17)
    if 10^18 * stor14 / stor14 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not stor15:
        revert with 0, 'SafeMath: division by zero', 0
    if 10^18 * stor14 / stor15 > 5 * 10^17:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (-(10^18 * stor14 / stor15) + 5 * 10^17)
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
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

function getMaxLeverage() {
    if not stor14:
        if not stor15:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / stor15 > 5 * 10^17:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (0 / stor15) + 5 * 10^17:
            revert with 0, 'SafeMath: division by zero', 0
        return (1000000000000000000 * 10^18 / (0 / stor15) + 5 * 10^17)
    if 10^18 * stor14 / stor14 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not stor15:
        revert with 0, 'SafeMath: division by zero', 0
    if 10^18 * stor14 / stor15 > 5 * 10^17:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not (10^18 * stor14 / stor15) + 5 * 10^17:
        revert with 0, 'SafeMath: division by zero', 0
    return (1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 5 * 10^17)
}

function getCurrentLeverage() {
    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
    staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
    revert with 0, 'SafeMath: division by zero', 0
}

function getColFactor() {
    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
    staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function balanceOf() {
    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
    staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0]
}

function getLeveragedSupplyTarget(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor14:
        if not stor15:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / stor15 > 5 * 10^17:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (0 / stor15) + 5 * 10^17:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            return 0
        if 1000000000000000000 * 10^18 / (0 / stor15) + 5 * 10^17 * arg1 / arg1 != 1000000000000000000 * 10^18 / (0 / stor15) + 5 * 10^17:
            revert with 0, 'SafeMath: multiplication overflow'
        return (1000000000000000000 * 10^18 / (0 / stor15) + 5 * 10^17 * arg1 / 10^18)
    if 10^18 * stor14 / stor14 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not stor15:
        revert with 0, 'SafeMath: division by zero', 0
    if 10^18 * stor14 / stor15 > 5 * 10^17:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not (10^18 * stor14 / stor15) + 5 * 10^17:
        revert with 0, 'SafeMath: division by zero', 0
    if not arg1:
        return 0
    if 1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 5 * 10^17 * arg1 / arg1 != 1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 5 * 10^17:
        revert with 0, 'SafeMath: multiplication overflow'
    return (1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 5 * 10^17 * arg1 / 10^18)
}

function getRedeemable() {
    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
    staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ext_call.return_data[0]:
            return 0
        if 9999 * ext_call.return_data[0] / ext_call.return_data[0] != 9999:
            revert with 0, 'SafeMath: multiplication overflow'
        return (9999 * ext_call.return_data[0] / 10000)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^18 * ext_call.return_data[0] / 5 * 10^17 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 5 * 10^17):
        return 0
    if (9999 * ext_call.return_data[0]) - (9999 * 10^18 * ext_call.return_data[0] / 5 * 10^17) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 5 * 10^17) != 9999:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((9999 * ext_call.return_data[0]) - (9999 * 10^18 * ext_call.return_data[0] / 5 * 10^17) / 10000)
}

function getBorrowable() {
    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
    staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not -ext_call.return_data[0]:
            return 0
        if -9999 * ext_call.return_data[0] / -ext_call.return_data[0] != 9999:
            revert with 0, 'SafeMath: multiplication overflow'
        return (-9999 * ext_call.return_data[0] / 10000)
    if 5 * 10^17 * ext_call.return_data[0] / ext_call.return_data[0] != 5 * 10^17:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] > 5 * 10^17 * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not (5 * 10^17 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]:
        return 0
    if (9999 * 5 * 10^17 * ext_call.return_data[0] / 10^18) - (9999 * ext_call.return_data[0]) / (5 * 10^17 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] != 9999:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((9999 * 5 * 10^17 * ext_call.return_data[0] / 10^18) - (9999 * ext_call.return_data[0]) / 10000)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(controllerAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor10)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function withdrawForSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
        staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
        staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
        revert with 0, 'SafeMath: division by zero', 0
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = wantAddress
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x6d1b4bde with:
            gas gas_remaining wei
           args wantAddress
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!globe'
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
            if not mem[(4 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    mem[100] = this.address
    require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
    staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96] = 30
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
        staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4)
        staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
        revert with 0, 'SafeMath: division by zero', 0
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 164] = wantAddress
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0x6d1b4bde with:
            gas gas_remaining wei
           args wantAddress
    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!globe'
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 160] = 68
    mem[(7 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[(7 * ceil32(return_data.size)) + 260] = 32
    mem[(7 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(7 * ceil32(return_data.size)) + 324 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
    mem[(7 * ceil32(return_data.size)) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(7 * ceil32(return_data.size)) + 356] == bool(mem[(7 * ceil32(return_data.size)) + 356])
            if not mem[(7 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function deposit() {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = 0x4f01aed16d97e3ab5ab2b501154dc9bb
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, 0, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 296] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                mem[ceil32(return_data.size) + 328] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 260] = 68
                mem[ceil32(return_data.size) + 292 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 360] = 32
                mem[ceil32(return_data.size) + 392] = 'SafeERC20: low-level call failed'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 424 len 96] = 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 492] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                        if not mem[ceil32(return_data.size) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 264] = this.address
                mem[ceil32(return_data.size) + 296] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(2 * ceil32(return_data.size)) + 296] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 260] = 68
                mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 360] = 32
                mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 492] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                        if not mem[(2 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], address(this.address), 170
        else:
            mem[ceil32(return_data.size) + 260] = return_data.size
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], address(this.address), 170
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 426
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                            mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 430] = 32
                            mem[(4 * ceil32(return_data.size)) + 462] = 42
                            mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                            mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 426
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(4 * ceil32(return_data.size)) + 430] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    mem[(4 * ceil32(return_data.size)) + 462] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 494] = this.address
                    mem[(4 * ceil32(return_data.size)) + 526] = 170
                    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 430 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
            else:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, ext_call.return_data[0], address(this.address), 170
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 426
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 430] = 32
                            mem[(4 * ceil32(return_data.size)) + 462] = 42
                            mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                            mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 426
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(4 * ceil32(return_data.size)) + 430] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    mem[(4 * ceil32(return_data.size)) + 462] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 494] = this.address
                    mem[(4 * ceil32(return_data.size)) + 526] = 170
                    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 430 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

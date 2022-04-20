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
const sub_055d07fa(?) = 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21

const keepMax = 10000

const sub_10475e4e(?) = ext_call.return_data[0]

const balanceOfPool = 0

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const getName = 'StrategyAaveWethV3'

const revenueShareMax = 10000

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const sub_23ffa1eb(?) = 8 * 10^17

const performanceTreasuryMax = 10000

const weth = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab

const getMarketColFactor = 8 * 10^17

const withdrawalDevFundMax = 100000

const performanceDevMax = 10000

const getSupplied = ext_call.return_data[0]

const getBorrowedView = ext_call.return_data[0]

const png = 0x60781c2586d68229fde47564546784ab3faca982

const getSuppliedView = ext_call.return_data[0]

const sub_7b50dbf9(?) = 0x4e575cacb37bc1b5afec68a0462c4165a5268983

const getBorrowed = ext_call.return_data[0]

const getSuppliedUnleveraged = 0

const lendingPool = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c

const incentivesController = 0x1d83fe6a10d2f2b7af17034343746188272cac9

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
    stor16[address(arg1)] = 1
}

function removeKeeper(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor16[address(arg1)] = 0
}

function setColFactorLeverageBuffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!governance'
    stor14 = arg1
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

function getSafeLeverageColFactor() {
    if not stor14:
        if not stor15:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor15 > 8 * 10^17:
            revert with 0, 'SafeMath: subtraction overflow'
        return (-(0 / stor15) + 8 * 10^17)
    if 10^18 * stor14 / stor14 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor15:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * stor14 / stor15 > 8 * 10^17:
        revert with 0, 'SafeMath: subtraction overflow'
    return (-(10^18 * stor14 / stor15) + 8 * 10^17)
}

function getMaxLeverage() {
    if not stor14:
        if not stor15:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor15 > 8 * 10^17:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor15) + 2 * 10^17:
            revert with 0, 'SafeMath: division by zero'
        return (1000000000000000000 * 10^18 / (0 / stor15) + 2 * 10^17)
    if 10^18 * stor14 / stor14 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor15:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * stor14 / stor15 > 8 * 10^17:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (10^18 * stor14 / stor15) + 2 * 10^17:
        revert with 0, 'SafeMath: division by zero'
    return (1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 2 * 10^17)
}

function getCurrentLeverage() {
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
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

function balanceOf() {
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
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

function getColFactor() {
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
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

function getLeveragedSupplyTarget(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor14:
        if not stor15:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor15 > 8 * 10^17:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor15) + 2 * 10^17:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            return 0
        if 1000000000000000000 * 10^18 / (0 / stor15) + 2 * 10^17 * arg1 / arg1 != 1000000000000000000 * 10^18 / (0 / stor15) + 2 * 10^17:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (1000000000000000000 * 10^18 / (0 / stor15) + 2 * 10^17 * arg1 / 10^18)
    if 10^18 * stor14 / stor14 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor15:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * stor14 / stor15 > 8 * 10^17:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (10^18 * stor14 / stor15) + 2 * 10^17:
        revert with 0, 'SafeMath: division by zero'
    if not arg1:
        return 0
    if 1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 2 * 10^17 * arg1 / arg1 != 1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 2 * 10^17:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return (1000000000000000000 * 10^18 / (10^18 * stor14 / stor15) + 2 * 10^17 * arg1 / 10^18)
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

function getRedeemable() {
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            return 0
        if 9999 * ext_call.return_data[0] / ext_call.return_data[0] != 9999:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (9999 * ext_call.return_data[0] / 10000)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 10^18 * ext_call.return_data[0] / 8 * 10^17 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 8 * 10^17):
        return 0
    if (9999 * ext_call.return_data[0]) - (9999 * 10^18 * ext_call.return_data[0] / 8 * 10^17) / ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / 8 * 10^17) != 9999:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return ((9999 * ext_call.return_data[0]) - (9999 * 10^18 * ext_call.return_data[0] / 8 * 10^17) / 10000)
}

function getBorrowable() {
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[0]:
            return 0
        if -9999 * ext_call.return_data[0] / -ext_call.return_data[0] != 9999:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (-9999 * ext_call.return_data[0] / 10000)
    if 8 * 10^17 * ext_call.return_data[0] / ext_call.return_data[0] != 8 * 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] > 8 * 10^17 * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (8 * 10^17 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]:
        return 0
    if (9999 * 8 * 10^17 * ext_call.return_data[0] / 10^18) - (9999 * ext_call.return_data[0]) / (8 * 10^17 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] != 9999:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return ((9999 * 8 * 10^17 * ext_call.return_data[0] / 10^18) - (9999 * ext_call.return_data[0]) / 10000)
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
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
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
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
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
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 0:
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
        mem[196] = ext_call.return_data[12 len 20]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call wantAddress.mem[224 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[260 len 28], mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21)
    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4e575cacb37bc1b5afec68a0462c4165a5268983)
    staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    revert with 0, 'SafeMath: division by zero'
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
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501, 253385260, 0
        call wantAddress.0xf1a5a2c with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501, 253385260, 0
            if not approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501, 253385260, ext_call.return_data[0 len 28]
            call wantAddress.0xf1a5a2c with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501, 253385260, 0
                if not approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                 gas gas_remaining wei
                args 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab, ext_call.return_data[0], this.address, 170
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
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501, 253385260, ext_call.return_data[0 len 28]
            call wantAddress.0xf1a5a2c with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501, 253385260, 0
                if not approve(address rg1, uint256 rg2), 0x4f01aed16d97e3ab5ab2b501:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                     gas gas_remaining wei
                    args 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab, ext_call.return_data[0], this.address, 170
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
                     gas gas_remaining wei
                    args 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab, ext_call.return_data[0], this.address, 170, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

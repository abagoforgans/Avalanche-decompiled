contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#
const keepMax = 10000

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const getName = ''

const revenueShareMax = 10000

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const performanceTreasuryMax = 10000

const withdrawalDevFundMax = 100000

const performanceDevMax = 10000

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933

const sub_6af66772(?) = 0x22d4002028f537599be9f666d1c4fa138522f9c8

const sub_8f90b014(?) = 0x8b3d9f0017fa369cd8c164d0cc078bf4ca588ae5

const sub_b76ae05e(?) = 0x5817d4f0b62a59b17f75207da1848c2ce75e7af4

const joe = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd

const withdrawalTreasuryMax = 100000


address wantAddress;
address feeDistributorAddress;
uint256 performanceTreasuryFee;
uint256 performanceDevFee;
uint256 keep;
uint256 revenueShare;
uint256 withdrawalTreasuryFee;
uint256 withdrawalDevFundFee;
address governanceAddress;
uint32 stor9;
address controllerAddress;
uint256 stor9;
address strategistAddress;
address timelockAddress;
mapping of uint8 stor12;
address sub_55ac8d30Address;
address rewarderAddress;
address usdtAddress;
address sub_f5af8938Address;
address sub_5c182e42Address;

function feeDistributor() {
    return feeDistributorAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function usdt() {
    return usdtAddress
}

function withdrawalDevFundFee() {
    return withdrawalDevFundFee
}

function sub_55ac8d30(?) {
    return sub_55ac8d30Address
}

function performanceTreasuryFee() {
    return performanceTreasuryFee
}

function governance() {
    return governanceAddress
}

function sub_5c182e42(?) {
    return sub_5c182e42Address
}

function harvesters(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
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

function rewarder() {
    return rewarderAddress
}

function keep() {
    return keep
}

function sub_f5af8938(?) {
    return sub_f5af8938Address
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

function revokeHarvester(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, 'not authorized'
    stor12[address(arg1)] = 0
}

function whitelistHarvester(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, 'not authorized'
    stor12[address(arg1)] = 1
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

function balanceOfPool() {
    require ext_code.size(sub_55ac8d30Address)
    staticcall sub_55ac8d30Address.balance(address arg1) with:
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

function getHarvestable() {
    require ext_code.size(sub_55ac8d30Address)
    staticcall sub_55ac8d30Address.earned(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(rewarderAddress)
    staticcall rewarderAddress.earned(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, 0x22d4002028f537599be9f666d1c4fa138522f9c8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function balanceOf() {
    require ext_code.size(sub_55ac8d30Address)
    staticcall sub_55ac8d30Address.balance(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
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
        call wantAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x8b3d9f0017fa369cd8c164d0cc078bf4ca588ae5, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        call wantAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x8b3d9f0017fa369cd8c164d0cc078bf4ca588ae5, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_55ac8d30Address)
        call sub_55ac8d30Address.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor9)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor9):
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

function withdrawForSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(sub_55ac8d30Address)
    call sub_55ac8d30Address.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg1:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg1 * arg1 / arg1 != 0 / arg1:
            revert with 0, 32, 33, 0xd4536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    else:
        if 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xd4536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            revert with 0, 'SafeMath: division by zero'
        if 10000 * 10^18 * ext_call.return_data[0] / arg1 * arg1 / arg1 != 10000 * 10^18 * ext_call.return_data[0] / arg1:
            revert with 0, 32, 33, 0xd4536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
    mem[260] = ext_call.return_data[12 len 20]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    mem[452 len 0] = 0
    call wantAddress.mem[288 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[420]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 499 len 22]
    return ext_call.return_data[0]
}

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(sub_55ac8d30Address)
    staticcall sub_55ac8d30Address.balance(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_55ac8d30Address)
    call sub_55ac8d30Address.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xd4536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    else:
        if 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xd4536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xd4536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
    mem[260] = ext_call.return_data[12 len 20]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    mem[452 len 0] = 0
    call wantAddress.mem[288 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[420]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 499 len 22]
    return ext_call.return_data[0]
}



}

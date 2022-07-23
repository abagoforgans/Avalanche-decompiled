contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const keepMax = 10000

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66

const getName = 'StrategyVtxUsdtE'

const revenueShareMax = 10000

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const performanceTreasuryMax = 10000

const withdrawalDevFundMax = 100000

const performanceDevMax = 10000

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

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
address usdteAddress;
address sub_b80431beAddress;
address sub_3fdb0cc2Address;

function feeDistributor() {
    return feeDistributorAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function sub_3fdb0cc2(?) {
    return sub_3fdb0cc2Address
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

function sub_b80431be(?) {
    return sub_b80431beAddress
}

function timelock() {
    return timelockAddress
}

function usdte() {
    return usdteAddress
}

function rewarder() {
    return rewarderAddress
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
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
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
        call sub_55ac8d30Address.deposit(uint256 arg1) with:
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
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor9)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor9):
            revert with 0, 32, 42, 0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg1:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg1 * arg1 / arg1 != 0 / arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    else:
        if 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            revert with 0, 'SafeMath: division by zero'
        if 10000 * 10^18 * ext_call.return_data[0] / arg1 * arg1 / arg1 != 10000 * 10^18 * ext_call.return_data[0] / arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
    call wantAddress.mem[288 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[324 len 28], mem[452 len 4]
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
                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    else:
        if 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
    call wantAddress.mem[288 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], mem[324 len 28], mem[452 len 4]
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
                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 499 len 22]
    return ext_call.return_data[0]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).devfund() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[196] = ext_call.return_data[12 len 20]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = 0, ext_call.return_data[12 len 20], 0
            call wantAddress.mem[224 len 4] with:
                 gas gas_remaining wei
                args 0, 0, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
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
                                0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if not arg1:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 425] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, ext_call.return_data[12 len 20], 0
                mem[ceil32(return_data.size) + 645 len 4] = 0
                call wantAddress.mem[ceil32(return_data.size) + 453 len 4] with:
                     gas gas_remaining wei
                    args 0, 0, mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x6d1b4bde with:
                        gas gas_remaining wei
                       args wantAddress, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 
                                '!globe',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 846 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call wantAddress with:
                   funct 0, mem[(2 * ceil32(return_data.size)) + 750 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 846 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            else:
                if withdrawalTreasuryFee * arg1 / arg1 != withdrawalTreasuryFee:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 425] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalTreasuryFee * arg1 / 100000) >> 32
                mem[ceil32(return_data.size) + 645 len 4] = 0
                call wantAddress.mem[ceil32(return_data.size) + 453 len 4] with:
                     gas gas_remaining wei
                    args withdrawalTreasuryFee * arg1 / 100000, 0, mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x6d1b4bde with:
                        gas gas_remaining wei
                       args wantAddress, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 
                                '!globe',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if withdrawalTreasuryFee * arg1 / 100000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 846 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1 - (withdrawalTreasuryFee * arg1 / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call wantAddress with:
                   funct 0, mem[(2 * ceil32(return_data.size)) + 750 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1 - (withdrawalTreasuryFee * arg1 / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 846 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        else:
            if withdrawalDevFundFee * arg1 / arg1 != withdrawalDevFundFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).devfund() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[196] = ext_call.return_data[12 len 20]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalDevFundFee * arg1 / 100000) >> 32
            call wantAddress.mem[224 len 4] with:
                 gas gas_remaining wei
                args withdrawalDevFundFee * arg1 / 100000, 0, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
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
                                0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if not arg1:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 425] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, ext_call.return_data[12 len 20], 0
                mem[ceil32(return_data.size) + 645 len 4] = 0
                call wantAddress.mem[ceil32(return_data.size) + 453 len 4] with:
                     gas gas_remaining wei
                    args 0, 0, mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x6d1b4bde with:
                        gas gas_remaining wei
                       args wantAddress, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 
                                '!globe',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if withdrawalDevFundFee * arg1 / 100000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > arg1 - (withdrawalDevFundFee * arg1 / 100000):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 846 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1 - (withdrawalDevFundFee * arg1 / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call wantAddress with:
                   funct 0, mem[(2 * ceil32(return_data.size)) + 750 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1 - (withdrawalDevFundFee * arg1 / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 846 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            else:
                if withdrawalTreasuryFee * arg1 / arg1 != withdrawalTreasuryFee:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 425] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, withdrawalTreasuryFee * arg1 / 100000) >> 32
                mem[ceil32(return_data.size) + 645 len 4] = 0
                call wantAddress.mem[ceil32(return_data.size) + 453 len 4] with:
                     gas gas_remaining wei
                    args withdrawalTreasuryFee * arg1 / 100000, 0, mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x6d1b4bde with:
                        gas gas_remaining wei
                       args wantAddress, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 
                                '!globe',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if withdrawalDevFundFee * arg1 / 100000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if withdrawalTreasuryFee * arg1 / 100000 > arg1 - (withdrawalDevFundFee * arg1 / 100000):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 846 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1 - (withdrawalDevFundFee * arg1 / 100000) - (withdrawalTreasuryFee * arg1 / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call wantAddress with:
                   funct 0, mem[(2 * ceil32(return_data.size)) + 750 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, arg1 - (withdrawalDevFundFee * arg1 / 100000) - (withdrawalTreasuryFee * arg1 / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 846 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[(2 * ceil32(return_data.size)) + 878 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 878]:
                revert with 0, 
                            32,
                            42,
                            0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 957 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_55ac8d30Address)
        call sub_55ac8d30Address.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1 - ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not arg1 - ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / arg1 - ext_call.return_data[0] != 0 / arg1 - ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) < (arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).devfund() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = 0, ext_call.return_data[12 len 20], 0
                call wantAddress.mem[416 len 4] with:
                     gas gas_remaining wei
                    args 0, 0, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                if not ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], 0
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args 0, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if 0 > ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                else:
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) != withdrawalTreasuryFee:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 618 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if 0 > ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000 > ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            else:
                if (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) != withdrawalDevFundFee:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).devfund() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000) >> 32
                call wantAddress.mem[416 len 4] with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000, 0, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                if not ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], 0
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args 0, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000 > ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                else:
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) != withdrawalTreasuryFee:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 618 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000 > ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000 > ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 0 / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        else:
            if 10000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not arg1 - ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / arg1 - ext_call.return_data[0] != 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) < (arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).devfund() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = 0, ext_call.return_data[12 len 20], 0
                call wantAddress.mem[416 len 4] with:
                     gas gas_remaining wei
                    args 0, 0, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                if not ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], 0
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args 0, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if 0 > ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                else:
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) != withdrawalTreasuryFee:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 618 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if 0 > ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000 > ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            else:
                if (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) != withdrawalDevFundFee:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).devfund() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388] = ext_call.return_data[12 len 20]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000) >> 32
                call wantAddress.mem[416 len 4] with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000, 0, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
                if not ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], 0
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args 0, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000 > ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                else:
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) != withdrawalTreasuryFee:
                        revert with 0, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 618 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).treasury() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 617] = ext_call.return_data[12 len 20]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 745 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000) >> 32
                    mem[ceil32(return_data.size) + 837 len 4] = 0
                    call wantAddress.mem[ceil32(return_data.size) + 645 len 4] with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000, 0, mem[ceil32(return_data.size) + 809 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 777]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x6d1b4bde with:
                            gas gas_remaining wei
                           args wantAddress, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 
                                    '!globe',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if (ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000 > ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000 > ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 1038 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = transfer(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call wantAddress with:
                       funct 0, mem[(2 * ceil32(return_data.size)) + 942 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18) - ((ext_call.return_data[0] * withdrawalDevFundFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalDevFundFee) / 100000) - ((ext_call.return_data[0] * withdrawalTreasuryFee) + ((arg1 * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) - (ext_call.return_data[0] * 10000 * 10^18 * ext_call.return_data[0] / arg1 - ext_call.return_data[0]) / 10000 * 10^18 * withdrawalTreasuryFee) / 100000)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 1038 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[(2 * ceil32(return_data.size)) + 1070 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 1070]:
                revert with 0, 
                            32,
                            42,
                            0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1149 len 22]
}



}

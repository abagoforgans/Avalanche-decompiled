contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#
const keepMax = 10000

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66

const getName = 'axAvax'

const revenueShareMax = 10000

const sub_1e3372d8(?) = 0xc6bc80490a3d022ac888b26a5ae4f1fad89506bd

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const performanceTreasuryMax = 10000

const withdrawalDevFundMax = 100000

const performanceDevMax = 10000

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_5e6c5d16(?) = 0x10908c875d865c66f271f5d3949848971c9595c9

const qi = 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5

const knc = 0x39fc9e94caeacb435842fadedecb783589f50f5f

const sub_f63ca6e4(?) = 0x8efa5a9ad6d594cf76830267077b78ce0bc5a5f8

const sub_f6881850(?) = 0xa107e6466be74361840059a11e390200371a7538

const sub_fd4f2ce6(?) = 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be

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
uint32 stor13;
address gaugeAddress;
uint256 stor13;
address vestingAddress;
uint32 stor15;
uint256 stor15; offset 32
uint256 stor15;
uint256 index;
uint256 sub_cf42a566;

function feeDistributor() {
    return feeDistributorAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function index() {
    return index
}

function vesting() {
    return vestingAddress
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

function gauge() {
    return address(gaugeAddress)
}

function sub_cf42a566(?) {
    return sub_cf42a566
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
    mem[96] = 0xd18df53c00000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor15.field_0)
    mem[132] = this.address
    require ext_code.size(address(gaugeAddress))
    staticcall address(gaugeAddress).pendingRewards(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor15.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 0, stor15.field_32)
    require mem[96 len 4], Mask(224, 0, stor15.field_32) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor15.field_32) + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 0, stor15.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor15.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor15.field_32) + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor15.field_32) + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 128]
    return memory
      from (32 * _7) + ceil32(return_data.size) + 128
       len 32
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
    call arg1 with:
       funct uint32(stor9)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor9):
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

function balanceOfPool() {
    mem[96] = 0x1069f3b500000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor15.field_0)
    mem[132] = this.address
    require ext_code.size(address(gaugeAddress))
    staticcall address(gaugeAddress).getUserInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor15.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 0, stor15.field_32)
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 <= 4294967296
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 32 <= return_data.size
    require mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96] <= 4294967296 and uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + (32 * mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]
    _8 = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96])] = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 128 len floor32(mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96])]
    mem[64] = (32 * _8) + ceil32(return_data.size) + 128
    require uint32(this.address), mem[164 len 28] <= 4294967296
    require uint32(this.address), mem[164 len 28] + 32 <= return_data.size
    require mem[uint32(this.address), mem[164 len 28] + 96] <= 4294967296 and uint32(this.address), mem[164 len 28] + (32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 32 <= return_data.size
    return _4
}

function balanceOf() {
    mem[96] = 0x1069f3b500000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor15.field_0)
    mem[132] = this.address
    require ext_code.size(address(gaugeAddress))
    staticcall address(gaugeAddress).getUserInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor15.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 0, stor15.field_32)
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 <= 4294967296
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 32 <= return_data.size
    require mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96] <= 4294967296 and uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + (32 * mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]
    _8 = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96])] = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 128 len floor32(mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96])]
    mem[64] = (32 * _8) + ceil32(return_data.size) + 128
    require uint32(this.address), mem[164 len 28] <= 4294967296
    require uint32(this.address), mem[164 len 28] + 32 <= return_data.size
    require mem[uint32(this.address), mem[164 len 28] + 96] <= 4294967296 and uint32(this.address), mem[164 len 28] + (32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 32 <= return_data.size
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _4 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (_4 + ext_call.return_data[0])
}

function withdrawForSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(address(gaugeAddress))
    call address(gaugeAddress).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(stor15.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    mem[96] = 0x1069f3b500000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor15.field_0)
    mem[132] = this.address
    require ext_code.size(address(gaugeAddress))
    staticcall address(gaugeAddress).getUserInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor15.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _6 = mem[96 len 4], Mask(224, 0, stor15.field_32)
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 <= 4294967296
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 32 <= return_data.size
    require mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96] <= 4294967296 and uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + (32 * mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]
    _10 = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96])] = mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 128 len floor32(mem[uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 + 96])]
    mem[64] = (32 * _10) + ceil32(return_data.size) + 128
    _86 = uint32(this.address), mem[164 len 28]
    require uint32(this.address), mem[164 len 28] <= 4294967296
    require uint32(this.address), mem[164 len 28] + 32 <= return_data.size
    require mem[uint32(this.address), mem[164 len 28] + 96] <= 4294967296 and uint32(this.address), mem[164 len 28] + (32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 32 <= return_data.size
    mem[(32 * _10) + ceil32(return_data.size) + 128] = mem[uint32(this.address), mem[164 len 28] + 96]
    _90 = mem[_86 + 96]
    mem[(32 * _10) + ceil32(return_data.size) + 160 len floor32(mem[_86 + 96])] = mem[_86 + 128 len floor32(mem[_86 + 96])]
    require ext_code.size(address(gaugeAddress))
    call address(gaugeAddress).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(stor15.field_0), _6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 196] = ext_call.return_data[12 len 20]
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 160] = 68
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 260] = 32
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 416 len 4] = 0
    call wantAddress.mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 224 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 388 len 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96 len 4], Mask(224, 0, stor15.field_32):
                revert with memory
                  from 128
                   len mem[96 len 4], Mask(224, 0, stor15.field_32)
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96 len 4], Mask(224, 0, stor15.field_32):
            require mem[96 len 4], Mask(224, 0, stor15.field_32) >= 32
            if not uint32(stor15.field_0), Mask(224, 32, this.address) >> 32:
                revert with 0, 
                            32,
                            42,
                            0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 434 len 22]
    else:
        mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + 356]:
                revert with 0, 
                            32,
                            42,
                            0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _90) + (32 * _10) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
    return ext_call.return_data[0]
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
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        call wantAddress with:
           funct uint32(stor13)
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 32, 42, 0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(gaugeAddress)
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
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0 len 28]
            call wantAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 32, 42, 0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(gaugeAddress))
            call address(gaugeAddress).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining wei
                args uint256(stor15.field_0), ext_call.return_data[0], 0
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
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(gaugeAddress)
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
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0 len 28]
            call wantAddress with:
               funct uint32(stor13)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(address(gaugeAddress))
                call address(gaugeAddress).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                     gas gas_remaining wei
                    args uint256(stor15.field_0), ext_call.return_data[0], 0
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
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(gaugeAddress))
                call address(gaugeAddress).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                     gas gas_remaining wei
                    args uint256(stor15.field_0), ext_call.return_data[0], 0, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

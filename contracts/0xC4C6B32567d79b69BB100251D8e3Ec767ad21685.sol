contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#
const keepMax = 10000

const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66

const getName = 'AM3DLp'

const revenueShareMax = 10000

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const performanceTreasuryMax = 10000

const sub_3e23a18d(?) = 0x958c0d0baa8f220846d3966742d4fb5edc5493d3

const withdrawalDevFundMax = 100000

const axial = 0xcf8419a615c57511807236751c0af38db4ba3351

const performanceDevMax = 10000

const joeRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const png = 0x60781c2586d68229fde47564546784ab3faca982

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
uint256 stor14; offset 32
uint256 poolId;
address flashLoanAddress;
address sub_22fc8fc3Address;
address pair2Address;
address sub_d448b2faAddress;
address mimAddress;
address sub_bc8a36d5Address;
address sub_81245488Address;
uint256 sub_fe6d1a65;
address lpAddress;
address sub_ec861ce1Address;

function feeDistributor() {
    return feeDistributorAddress
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function sub_22fc8fc3(?) {
    return sub_22fc8fc3Address
}

function lp() {
    return lpAddress
}

function poolId() {
    return poolId
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

function pair2() {
    return pair2Address
}

function sub_81245488(?) {
    return sub_81245488Address
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

function flashLoan() {
    return flashLoanAddress
}

function mim() {
    return mimAddress
}

function sub_bc8a36d5(?) {
    return sub_bc8a36d5Address
}

function timelock() {
    return timelockAddress
}

function sub_d448b2fa(?) {
    return sub_d448b2faAddress
}

function keep() {
    return keep
}

function sub_ec861ce1(?) {
    return sub_ec861ce1Address
}

function controller() {
    return address(controllerAddress)
}

function sub_fe6d1a65(?) {
    return sub_fe6d1a65
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

function balanceOfPool() {
    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
    staticcall 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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

function balanceOf() {
    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
    staticcall 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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

function getHarvestable() {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = poolId
    mem[132] = this.address
    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
    staticcall 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], stor14
    _6 = uint32(this.address), mem[164 len 28]
    require uint32(this.address), mem[164 len 28] <= 4294967296
    require uint32(this.address), mem[164 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(this.address), mem[164 len 28] + 96] + uint32(this.address), mem[164 len 28] + 32 and mem[uint32(this.address), mem[164 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), mem[164 len 28] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if _9 % 32:
        mem[floor32(_9) + ceil32(return_data.size) + 128] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 160 len _9 % 32]
    return _4, mem[192]
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
    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
    call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, arg1
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
    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
    staticcall 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
    call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, ext_call.return_data[0]
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
    mem[324 len 0] = 0
    call wantAddress.mem[160 len 4] with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
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

function getMostPremium() {
    require ext_code.size(flashLoanAddress)
    staticcall flashLoanAddress.getTokenBalance(uint8 arg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_code.size(flashLoanAddress)
        staticcall flashLoanAddress.getTokenBalance(uint8 arg1) with:
                gas gas_remaining wei
               args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(flashLoanAddress)
            staticcall flashLoanAddress.getTokenBalance(uint8 arg1) with:
                    gas gas_remaining wei
                   args 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            return sub_d448b2faAddress
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                return sub_d448b2faAddress
                            else:
                                return sub_d448b2faAddress
                    else:
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                return sub_d448b2faAddress
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    return sub_d448b2faAddress
                                else:
                                    return sub_d448b2faAddress
                        else:
                            return pair2Address
                else:
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                return sub_d448b2faAddress
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    return sub_d448b2faAddress
                                else:
                                    return sub_d448b2faAddress
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    return sub_d448b2faAddress
                                else:
                                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                                        return sub_d448b2faAddress
                                    else:
                                        return sub_d448b2faAddress
                            else:
                                return pair2Address
                    else:
                        return sub_22fc8fc3Address
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
        mem[260 len 64] = approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667, 0, 0
        mem[324 len 0] = 0
        call wantAddress.0xdc5493d3 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667, 0, 0
            if not approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667:
                revert with 0, 32, 42, 0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x958c0d0baa8f220846d3966742d4fb5edc5493d3
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
            mem[424 len 64] = 0, 0x958c0d0baa8f220846d3966742d4fb5edc5493d3, ext_call.return_data[0 len 28]
            call wantAddress.0xdc5493d3 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667, 0, 0
                if not approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667:
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
            require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
            call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not ext_call.return_data[0]:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x958c0d0baa8f220846d3966742d4fb5edc5493d3, ext_call.return_data[0 len 28]
                    call wantAddress.0xdc5493d3 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
                    call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
                else:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x958c0d0baa8f220846d3966742d4fb5edc5493d3
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
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x958c0d0baa8f220846d3966742d4fb5edc5493d3, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call wantAddress.0xdc5493d3 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667, 0, 0
                        if not approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667:
                            revert with 0, 
                                        32,
                                        42,
                                        0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
                        call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0]
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
                        require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
                        call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
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
                           args this.address, 0x958c0d0baa8f220846d3966742d4fb5edc5493d3
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
                mem[ceil32(return_data.size) + 425 len 64] = 0, 0x958c0d0baa8f220846d3966742d4fb5edc5493d3, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call wantAddress.0xdc5493d3 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667, 0, 0
                    if not approve(address arg1, uint256 arg2), 0x958c0d0baa8f220846d39667:
                        revert with 0, 
                                    32,
                                    42,
                                    0xc75361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
                    call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
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
                    require ext_code.size(0x958c0d0baa8f220846d3966742d4fb5edc5493d3)
                    call 0x958c0d0baa8f220846d3966742d4fb5edc5493d3.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}

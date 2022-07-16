contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - harvest()
#
const sub_131edc46(?) = 0x60556209e507d30f2167a101bfc6d256ed2f3e1

const devFundMax = 100000

const treasuryMax = 100000

const getName = 'StrategyVTXV1'

const weth = 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619

const performanceMax = 100000

const usdcBuyback = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_8dc1564a(?) = 0x22d4002028f537599be9f666d1c4fa138522f9c8

const sub_9dc9505b(?) = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const sub_c2af6b58(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const sub_c32b2b51(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const sub_cadc0608(?) = 0x423d0fe33031aa4456a17b150804aa57fc157d97

const sub_cc442e0f(?) = 0x5817d4f0b62a59b17f75207da1848c2ce75e7af4

const sub_ce884d32(?) = 0xf16e81dce15b08f326220742020379b855b87df9

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const WMATIC = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 performanceFee;
uint256 treasuryFee;
uint256 devFundFee;
uint256 sub_5d158350;
uint256 sub_14b74d9a;
uint256 sub_7b756553;
uint8 buybackEnabled;
address mmTokenAddress; offset 8
address masterChefAddress;
address wantAddress;
uint256 stor10;
address governanceAddress;
uint32 stor12;
address controllerAddress;
uint256 stor12;
address strategistAddress;
address timelockAddress;
address univ2Router2Address;
uint8 emergencyExit; offset 160
uint128 stor16; offset 160
address sushiRouterAddress;

function sub_14b74d9a(?) {
    return sub_14b74d9a
}

function buybackEnabled() {
    return bool(buybackEnabled)
}

function want() {
    return address(wantAddress)
}

function strategist() {
    return strategistAddress
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function emergencyExit() {
    return bool(emergencyExit)
}

function masterChef() {
    return masterChefAddress
}

function governance() {
    return governanceAddress
}

function sub_5d158350(?) {
    return sub_5d158350
}

function sushiRouter() {
    return sushiRouterAddress
}

function sub_7b756553(?) {
    return sub_7b756553
}

function performanceFee() {
    return performanceFee
}

function mmToken() {
    return mmTokenAddress
}

function devFundFee() {
    return devFundFee
}

function univ2Router2() {
    return univ2Router2Address
}

function treasuryFee() {
    return treasuryFee
}

function timelock() {
    return timelockAddress
}

function sub_e13f8513(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function setDevFundFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    devFundFee = arg1
}

function setTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    treasuryFee = arg1
}

function setTimelock(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setMmToken(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mmTokenAddress = arg1
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceFee = arg1
}

function setUniRoute(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    univ2Router2Address = arg1
}

function setMasterChef(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    masterChefAddress = arg1
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

function setSushiRoute(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sushiRouterAddress = arg1
}

function setEmergencyExit(bool arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor16 = Mask(96, 0, arg1)
}

function setDelayBlockRequired(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_5d158350 = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setBuybackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    buybackEnabled = uint8(arg1)
}

function setWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor0[address(arg1)] = uint8(arg2)
}

function setBenignCallers(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor1[address(arg1)] = uint8(arg2)
}

function balanceOfWant() {
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() {
    require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
    staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
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

function deposit() {
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        call 0x423d0fe33031aa4456a17b150804aa57fc157d97.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(wantAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_0726d20f(?) {
    mem[96] = 0xad05e62700000000000000000000000000000000000000000000000000000000
    mem[100] = address(wantAddress)
    mem[132] = this.address
    mem[164] = address(wantAddress)
    require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
    staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.0xad05e627 with:
            gas gas_remaining wei
           args address(wantAddress), this.address, address(wantAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], Mask(224, 0, stor10)
    require uint32(this.address), Mask(224, 0, stor10) <= 4294967296
    require uint32(this.address), Mask(224, 0, stor10) + 32 <= return_data.size
    require return_data.size >= mem[uint32(this.address), Mask(224, 0, stor10) + 96] + uint32(this.address), Mask(224, 0, stor10) + 32 and mem[uint32(this.address), Mask(224, 0, stor10) + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), Mask(224, 0, stor10) + 96]
    return _4
}

function sub_539dbc2a(?) {
    mem[96] = 0xad05e62700000000000000000000000000000000000000000000000000000000
    mem[100] = address(wantAddress)
    mem[132] = this.address
    mem[164] = 0x60556209e507d30f2167a101bfc6d256ed2f3e1
    require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
    staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.0xad05e627 with:
            gas gas_remaining wei
           args address(wantAddress), this.address, 0x60556209e507d30f2167a101bfc6d256ed2f3e1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    require uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 <= 4294967296
    require uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 32 <= return_data.size
    require return_data.size >= mem[uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 96] + uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 32 and mem[uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 96]
    _9 = mem[uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 96])] = mem[uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 128 len ceil32(mem[uint32(this.address), 0x60556209e507d30f2167a101bfc6d25 + 96])]
    if not _9 % 32:
        mem[_9 + ceil32(return_data.size) + 128] = 1859318753, mem[196 len 28]
        return memory
          from _9 + ceil32(return_data.size) + 128
           len 32
    mem[floor32(_9) + ceil32(return_data.size) + 128] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 160 len _9 % 32]
    mem[floor32(_9) + ceil32(return_data.size) + 160] = 1859318753, mem[196 len 28]
    return memory
      from floor32(_9) + ceil32(return_data.size) + 160
       len 32
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if address(wantAddress) == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor12):
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

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if not emergencyExit:
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        call 0x423d0fe33031aa4456a17b150804aa57fc157d97.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(wantAddress), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).vaults(address arg1) with:
            gas gas_remaining wei
           args address(wantAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    mem[132] = ext_call.return_data[12 len 20]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(wantAddress)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(wantAddress)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call address(wantAddress).mem[160 len 4] with:
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
}

function withdrawEmergency() {
    if msg.sender == governanceAddress:
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        call 0x423d0fe33031aa4456a17b150804aa57fc157d97.emergencyWithdraw(address arg1) with:
             gas gas_remaining wei
            args address(wantAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < ext_call.return_data[0]:
            revert with 0, '!emergencyWithdraw'
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
                gas gas_remaining wei
               args address(wantAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(wantAddress)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(wantAddress)):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        mem[388 len 0] = 0
        call address(wantAddress).mem[224 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
    else:
        require msg.sender == strategistAddress
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        call 0x423d0fe33031aa4456a17b150804aa57fc157d97.emergencyWithdraw(address arg1) with:
             gas gas_remaining wei
            args address(wantAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < ext_call.return_data[0]:
            revert with 0, '!emergencyWithdraw'
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
                gas gas_remaining wei
               args address(wantAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(wantAddress)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(wantAddress)):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call address(wantAddress).mem[224 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[388 len 4]
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
}

function balanceOf() {
    if not sub_5d158350:
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_7b756553 <= 0:
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_14b74d9a > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - sub_14b74d9a >= sub_5d158350:
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_5d158350 + sub_14b74d9a < sub_14b74d9a:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > sub_5d158350 + sub_14b74d9a:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7b756553:
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((2 * ext_call.return_data[0]) - (0 / sub_5d158350 / 10^18))
    if (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) / sub_7b756553 != sub_5d158350 + sub_14b74d9a - block.number:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553):
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
        staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((2 * ext_call.return_data[0]) - (0 / sub_5d158350 / 10^18))
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_5d158350:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(0x423d0fe33031aa4456a17b150804aa57fc157d97)
    staticcall 0x423d0fe33031aa4456a17b150804aa57fc157d97.depositInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((2 * ext_call.return_data[0]) - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
}

function figureOutPath(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if mmTokenAddress != arg2:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _720 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _768 = mem[_720 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_720 + 192])] = mem[_720 + 224 len floor32(mem[_720 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1256 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _768) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _768) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _768) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _768) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _768) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _768) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _768) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _768) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _1720 = mem[(32 * _768) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _768) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _768) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _768) + ceil32(return_data.size) + mem[(32 * _768) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _768) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _768) + ceil32(return_data.size) + mem[(32 * _768) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _768) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _768) + ceil32(return_data.size) + mem[(32 * _768) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _1744 = mem[(32 * _768) + ceil32(return_data.size) + _1720 + 224]
            mem[(32 * _768) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _768) + ceil32(return_data.size) + _1720 + 224])] = mem[(32 * _768) + ceil32(return_data.size) + _1720 + 256 len floor32(mem[(32 * _768) + ceil32(return_data.size) + _1720 + 224])]
            require 1 < mem[(32 * _768) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _1744) + (32 * _768) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1256 > mem[(32 * _768) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _1744) + (32 * _768) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _1744) + (32 * _768) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _728 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _772 = mem[_728 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_728 + 192])] = mem[_728 + 224 len floor32(mem[_728 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1260 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _772) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _772) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _772) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _772) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _772) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _772) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _772) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _772) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _1724 = mem[(32 * _772) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _772) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _772) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _772) + ceil32(return_data.size) + mem[(32 * _772) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _772) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _772) + ceil32(return_data.size) + mem[(32 * _772) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _772) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _772) + ceil32(return_data.size) + mem[(32 * _772) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _1746 = mem[(32 * _772) + ceil32(return_data.size) + _1724 + 224]
            mem[(32 * _772) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _772) + ceil32(return_data.size) + _1724 + 224])] = mem[(32 * _772) + ceil32(return_data.size) + _1724 + 256 len floor32(mem[(32 * _772) + ceil32(return_data.size) + _1724 + 224])]
            require 1 < mem[(32 * _772) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _1746) + (32 * _772) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1260 > mem[(32 * _772) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _1746) + (32 * _772) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _1746) + (32 * _772) + (2 * ceil32(return_data.size)) + 352 len 64]
        if mem[96] <= 0:
            if mem[96] <= 0:
                return 0, 64, 0
            mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[100] = arg3
            mem[132] = 64
            mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _726 = mem[96 len 4], Mask(224, 32, arg3) >> 32
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _771 = mem[_726 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_726 + 96])] = mem[_726 + 128 len floor32(mem[_726 + 96])]
            mem[64] = (32 * _771) + ceil32(return_data.size) + 128
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
            if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
                mem[(32 * _771) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _771) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _771) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _771) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _771) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _771) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _724 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _770 = mem[_724 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_724 + 96])] = mem[_724 + 128 len floor32(mem[_724 + 96])]
        mem[64] = (32 * _770) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        _1258 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
        if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
            if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
                mem[(32 * _770) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _770) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _770) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _770) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _770) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _770) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[(32 * _770) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _770) + ceil32(return_data.size) + 132] = arg3
        mem[(32 * _770) + ceil32(return_data.size) + 164] = 64
        mem[(32 * _770) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _770) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * _770) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _770) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _770) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _1722 = mem[(32 * _770) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _770) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _770) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _770) + ceil32(return_data.size) + mem[(32 * _770) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _770) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _770) + ceil32(return_data.size) + mem[(32 * _770) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * _770) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _770) + ceil32(return_data.size) + mem[(32 * _770) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
        _1745 = mem[(32 * _770) + ceil32(return_data.size) + _1722 + 128]
        mem[(32 * _770) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _770) + ceil32(return_data.size) + _1722 + 128])] = mem[(32 * _770) + ceil32(return_data.size) + _1722 + 160 len floor32(mem[(32 * _770) + ceil32(return_data.size) + _1722 + 128])]
        mem[64] = (32 * _1745) + (32 * _770) + (2 * ceil32(return_data.size)) + 160
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _770) + (2 * ceil32(return_data.size)) + 128]
        if _1258 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _770) + (2 * ceil32(return_data.size)) + 160]:
            mem[(32 * _1745) + (32 * _770) + (2 * ceil32(return_data.size)) + 160] = 1
        else:
            mem[(32 * _1745) + (32 * _770) + (2 * ceil32(return_data.size)) + 160] = 0
        mem[(32 * _1745) + (32 * _770) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[(32 * _1745) + (32 * _770) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _1745) + (32 * _770) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _1745) + (32 * _770) + (2 * ceil32(return_data.size)) + 160
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    if 1 == bool(buybackEnabled):
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _748 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _782 = mem[_748 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_748 + 192])] = mem[_748 + 224 len floor32(mem[_748 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1270 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _782) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _782) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _782) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _782) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _782) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _782) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _782) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _782) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _1734 = mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _782) + ceil32(return_data.size) + mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _782) + ceil32(return_data.size) + mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _782) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _782) + ceil32(return_data.size) + mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _1751 = mem[(32 * _782) + ceil32(return_data.size) + _1734 + 224]
            mem[(32 * _782) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _782) + ceil32(return_data.size) + _1734 + 224])] = mem[(32 * _782) + ceil32(return_data.size) + _1734 + 256 len floor32(mem[(32 * _782) + ceil32(return_data.size) + _1734 + 224])]
            require 1 < mem[(32 * _782) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _1751) + (32 * _782) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1270 > mem[(32 * _782) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _1751) + (32 * _782) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _1751) + (32 * _782) + (2 * ceil32(return_data.size)) + 352 len 64]
        if mem[96] <= 0:
            if mem[96] <= 0:
                return 0, 64, 0
            mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[100] = arg3
            mem[132] = 64
            mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _746 = mem[96 len 4], Mask(224, 32, arg3) >> 32
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _781 = mem[_746 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_746 + 96])] = mem[_746 + 128 len floor32(mem[_746 + 96])]
            mem[64] = (32 * _781) + ceil32(return_data.size) + 128
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
            if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
                mem[(32 * _781) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _781) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _781) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _781) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _781) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _781) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _744 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _780 = mem[_744 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_744 + 96])] = mem[_744 + 128 len floor32(mem[_744 + 96])]
        mem[64] = (32 * _780) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        _1268 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
        if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
            if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
                mem[(32 * _780) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _780) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _780) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _780) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _780) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _780) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[(32 * _780) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _780) + ceil32(return_data.size) + 132] = arg3
        mem[(32 * _780) + ceil32(return_data.size) + 164] = 64
        mem[(32 * _780) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _780) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * _780) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _780) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _780) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _1732 = mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _780) + ceil32(return_data.size) + mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _780) + ceil32(return_data.size) + mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * _780) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _780) + ceil32(return_data.size) + mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
        _1750 = mem[(32 * _780) + ceil32(return_data.size) + _1732 + 128]
        mem[(32 * _780) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _780) + ceil32(return_data.size) + _1732 + 128])] = mem[(32 * _780) + ceil32(return_data.size) + _1732 + 160 len floor32(mem[(32 * _780) + ceil32(return_data.size) + _1732 + 128])]
        mem[64] = (32 * _1750) + (32 * _780) + (2 * ceil32(return_data.size)) + 160
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _780) + (2 * ceil32(return_data.size)) + 128]
        if _1268 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _780) + (2 * ceil32(return_data.size)) + 160]:
            mem[(32 * _1750) + (32 * _780) + (2 * ceil32(return_data.size)) + 160] = 1
        else:
            mem[(32 * _1750) + (32 * _780) + (2 * ceil32(return_data.size)) + 160] = 0
        mem[(32 * _1750) + (32 * _780) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[(32 * _1750) + (32 * _780) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _1750) + (32 * _780) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _1750) + (32 * _780) + (2 * ceil32(return_data.size)) + 160
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _732 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _774 = mem[_732 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_732 + 192])] = mem[_732 + 224 len floor32(mem[_732 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1262 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _774) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _774) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _774) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _774) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _774) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _774) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _774) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _774) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _1726 = mem[(32 * _774) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _774) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _774) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _774) + ceil32(return_data.size) + mem[(32 * _774) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _774) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _774) + ceil32(return_data.size) + mem[(32 * _774) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _774) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _774) + ceil32(return_data.size) + mem[(32 * _774) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _1747 = mem[(32 * _774) + ceil32(return_data.size) + _1726 + 224]
        mem[(32 * _774) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _774) + ceil32(return_data.size) + _1726 + 224])] = mem[(32 * _774) + ceil32(return_data.size) + _1726 + 256 len floor32(mem[(32 * _774) + ceil32(return_data.size) + _1726 + 224])]
        require 1 < mem[(32 * _774) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _1747) + (32 * _774) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1262 > mem[(32 * _774) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _1747) + (32 * _774) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _1747) + (32 * _774) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _740 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _778 = mem[_740 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_740 + 192])] = mem[_740 + 224 len floor32(mem[_740 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1266 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _778) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _778) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _778) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _778) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _778) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _778) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _778) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _778) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _1730 = mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _778) + ceil32(return_data.size) + mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _778) + ceil32(return_data.size) + mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _778) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _778) + ceil32(return_data.size) + mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _1749 = mem[(32 * _778) + ceil32(return_data.size) + _1730 + 224]
        mem[(32 * _778) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _778) + ceil32(return_data.size) + _1730 + 224])] = mem[(32 * _778) + ceil32(return_data.size) + _1730 + 256 len floor32(mem[(32 * _778) + ceil32(return_data.size) + _1730 + 224])]
        require 1 < mem[(32 * _778) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _1749) + (32 * _778) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1266 > mem[(32 * _778) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _1749) + (32 * _778) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _1749) + (32 * _778) + (2 * ceil32(return_data.size)) + 352 len 64]
    if mem[96] <= 0:
        if mem[96] <= 0:
            return 0, 64, 0
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _738 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _777 = mem[_738 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_738 + 96])] = mem[_738 + 128 len floor32(mem[_738 + 96])]
        mem[64] = (32 * _777) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
            mem[(32 * _777) + ceil32(return_data.size) + 128] = 1
        else:
            mem[(32 * _777) + ceil32(return_data.size) + 128] = 0
        mem[(32 * _777) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _777) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _777) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _777) + ceil32(return_data.size) + 128
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    mem[132] = 64
    mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _736 = mem[96 len 4], Mask(224, 32, arg3) >> 32
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
    _776 = mem[_736 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_736 + 96])] = mem[_736 + 128 len floor32(mem[_736 + 96])]
    mem[64] = (32 * _776) + ceil32(return_data.size) + 128
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
    _1264 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
    if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
        if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
            mem[(32 * _776) + ceil32(return_data.size) + 128] = 1
        else:
            mem[(32 * _776) + ceil32(return_data.size) + 128] = 0
        mem[(32 * _776) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _776) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _776) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _776) + ceil32(return_data.size) + 128
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    mem[(32 * _776) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _776) + ceil32(return_data.size) + 132] = arg3
    mem[(32 * _776) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _776) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
    mem[(32 * _776) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
    require ext_code.size(univ2Router2Address)
    staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * _776) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _776) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _776) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _1728 = mem[(32 * _776) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _776) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _776) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _776) + ceil32(return_data.size) + mem[(32 * _776) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _776) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _776) + ceil32(return_data.size) + mem[(32 * _776) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * _776) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _776) + ceil32(return_data.size) + mem[(32 * _776) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
    _1748 = mem[(32 * _776) + ceil32(return_data.size) + _1728 + 128]
    mem[(32 * _776) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _776) + ceil32(return_data.size) + _1728 + 128])] = mem[(32 * _776) + ceil32(return_data.size) + _1728 + 160 len floor32(mem[(32 * _776) + ceil32(return_data.size) + _1728 + 128])]
    mem[64] = (32 * _1748) + (32 * _776) + (2 * ceil32(return_data.size)) + 160
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _776) + (2 * ceil32(return_data.size)) + 128]
    if _1264 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _776) + (2 * ceil32(return_data.size)) + 160]:
        mem[(32 * _1748) + (32 * _776) + (2 * ceil32(return_data.size)) + 160] = 1
    else:
        mem[(32 * _1748) + (32 * _776) + (2 * ceil32(return_data.size)) + 160] = 0
    mem[(32 * _1748) + (32 * _776) + (2 * ceil32(return_data.size)) + 192] = 64
    mem[(32 * _1748) + (32 * _776) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
    mem[(32 * _1748) + (32 * _776) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
    return memory
      from (32 * _1748) + (32 * _776) + (2 * ceil32(return_data.size)) + 160
       len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
}



}

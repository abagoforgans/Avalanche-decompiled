contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const decimals = 18

const BURN_ADDRESS = 57005


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address joePairAddress;
address sub_527509f3Address;
address rewardsPoolAddress;
address devPoolAddress;
uint8 sub_b01e828d; offset 160
uint8 sub_ec23064b; offset 168
uint8 sub_80b66308; offset 176
uint8 sub_eb182701; offset 184
address sub_8f856eabAddress;
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
address stor18;
address stor18; offset 16
uint256 stor18; offset 8
address stor19;
uint8 stor21;
mapping of uint8 stor22;
mapping of uint8 stor23;
mapping of uint8 stor24;

function rewardsPool() {
    return rewardsPoolAddress
}

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
    return bool(stor24[address(arg1)])
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

function sub_5ec4565f(?) {
    return sub_5ec4565f
}

function joePair() {
    return joePairAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_80b66308(?) {
    return sub_80b66308
}

function owner() {
    return owner
}

function sub_8f856eab(?) {
    return sub_8f856eabAddress
}

function sub_b01e828d(?) {
    return sub_b01e828d
}

function devPool() {
    return devPoolAddress
}

function sub_b5ec6db8(?) {
    return sub_b5ec6db8
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor23[arg1])
}

function totalClaimed() {
    return totalClaimed
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
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
    return bool(stor22[arg1])
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

function sub_38a93bae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = address(arg1)
}

function sub_1ce81b0c(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e04252ee = uint8(arg1)
}

function sub_53d21d02(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devPoolAddress = address(arg1)
}

function sub_2ae883fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isTradingEnabled = uint8(bool(arg1))
}

function sub_6653a340(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolAddress = address(arg1)
}

function sub_75da733b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8f856eabAddress = address(arg1)
}

function sub_f4e27dc8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor18.field_8) = Mask(248, 0, bool(arg1))
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = uint8(arg2)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24[address(arg1)] = uint8(arg2)
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
    if joePairAddress == arg1:
        revert with 0, 'TKN:2'
    if arg2 == bool(stor23[address(arg1)]):
        revert with 0, 'TKN:3'
    stor23[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
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
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
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
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
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
    if address(stor18.field_16) == address(arg1):
        revert with 0, 'HKJoe:1'
    emit 0xb172ff8d: address(arg1), address(stor18.field_16)
    require ext_code.size(address(stor18.field_16))
    staticcall address(stor18.field_16).factory() with:
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
    joePairAddress = ext_call.return_data[12 len 20]
    sub_527509f3Address = address(arg1)
}

function sub_c8c82737(?) {
    if not msg.sender:
        revert with 0, 'CREATENODE:1'
    if stor22[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if devPoolAddress == msg.sender:
        revert with 0, 'CREATENODE:2'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CREATENODE:2'
    if sub_8f856eabAddress == msg.sender:
        revert with 0, 'CREATENODE:2'
    require ext_code.size(stor19)
    staticcall stor19.getNodePrice() with:
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
    if not devPoolAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 10^18 * ext_call.return_data[0] * sub_e04252ee / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= 10^18 * ext_call.return_data[0] * sub_e04252ee / 100
    if balanceOf[stor9] > !(10^18 * ext_call.return_data[0] * sub_e04252ee / 100):
        revert with 0, 17
    balanceOf[stor9] += 10^18 * ext_call.return_data[0] * sub_e04252ee / 100
    emit Transfer((10^18 * ext_call.return_data[0] * sub_e04252ee / 100), msg.sender, devPoolAddress);
    if 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * sub_e04252ee / 100:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: transfer from the zero address'
    if not rewardsPoolAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100):
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)
    if balanceOf[stor8] > !((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)):
        revert with 0, 17
    balanceOf[stor8] = balanceOf[stor8] + (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)
    emit Transfer(((10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * sub_e04252ee / 100)), msg.sender, rewardsPoolAddress);
    require ext_code.size(stor19)
    call stor19.0x5c6dc219 with:
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
    if stor22[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if devPoolAddress == msg.sender:
        revert with 0, 'CASHOUTA:2'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUTA:2'
    if sub_8f856eabAddress == msg.sender:
        revert with 0, 'CASHOUTA:2'
    mem[100] = msg.sender
    require ext_code.size(stor19)
    staticcall stor19.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No rewards available'
    if ext_call.return_data[0] and sub_fc74febd > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not devPoolAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor8] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor8] -= ext_call.return_data[0] * sub_fc74febd / 100
    if balanceOf[stor9] > !(ext_call.return_data[0] * sub_fc74febd / 100):
        revert with 0, 17
    balanceOf[stor9] += ext_call.return_data[0] * sub_fc74febd / 100
    emit Transfer((ext_call.return_data[0] * sub_fc74febd / 100), rewardsPoolAddress, devPoolAddress);
    if ext_call.return_data[0] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 17
    if ext_call.return_data[0] and sub_2de16e38 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_8f856eabAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor8] < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor8] -= ext_call.return_data[0] * sub_2de16e38 / 100
    if balanceOf[stor10] > !(ext_call.return_data[0] * sub_2de16e38 / 100):
        revert with 0, 17
    balanceOf[stor10] += ext_call.return_data[0] * sub_2de16e38 / 100
    emit Transfer((ext_call.return_data[0] * sub_2de16e38 / 100), rewardsPoolAddress, sub_8f856eabAddress);
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 17
    if not sub_fabc4035:
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor8] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor8] = balanceOf[stor8] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100)):
            revert with 0, 17
        balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100)), rewardsPoolAddress, msg.sender);
    else:
        if ext_call.return_data[0] and sub_42da30ac > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not this.address:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor8] < ext_call.return_data[0] * sub_42da30ac / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor8] -= ext_call.return_data[0] * sub_42da30ac / 100
        if balanceOf[this.address] > !(ext_call.return_data[0] * sub_42da30ac / 100):
            revert with 0, 17
        balanceOf[this.address] += ext_call.return_data[0] * sub_42da30ac / 100
        emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), rewardsPoolAddress, this.address);
        stor21 = 1
        if ext_call.return_data[0] * sub_42da30ac / 100 < ext_call.return_data[0] * sub_42da30ac / 100 / 2:
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = this.address
        require ext_code.size(address(stor18.field_16))
        staticcall address(stor18.field_16).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        if not this.address:
            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 36
            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 192
               len ceil32(return_data.size) + 132
        if not address(stor18.field_16):
            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 34
            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 192
               len ceil32(return_data.size) + 132
        mem[0] = address(stor18.field_16)
        mem[32] = sha3(address(this.address), 1)
        allowance[address(this.address)][address(stor18.field_0)].field_0 = ext_call.return_data[0] * sub_42da30ac / 100 / 2
        allowance[address(this.address)][address(stor18.field_0)].field_255 = 0
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * sub_42da30ac / 100 / 2
        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor18.field_16));
        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_42da30ac / 100 / 2
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 388
        t = ceil32(return_data.size) + 128
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(stor18.field_16))
        call address(stor18.field_16).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not address(stor18.field_16):
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][address(stor18.field_0)].field_0 = (ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2)
        emit Approval(((ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2)), this.address, address(stor18.field_16));
        require ext_code.size(address(stor18.field_16))
        call address(stor18.field_16).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args this.address, (ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2), 0, 0, 0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not this.address:
            revert with 0, 'ERC20: transfer from the zero address'
        if not devPoolAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(this.address)] < ext_call.return_data[0] * sub_42da30ac / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(this.address)] -= ext_call.return_data[0] * sub_42da30ac / 100
        if balanceOf[stor9] > !(ext_call.return_data[0] * sub_42da30ac / 100):
            revert with 0, 17
        balanceOf[stor9] += ext_call.return_data[0] * sub_42da30ac / 100
        emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), this.address, devPoolAddress);
        emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * sub_42da30ac / 100), 0, (ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2));
        stor21 = 0
        if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) < ext_call.return_data[0] * sub_42da30ac / 100:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor8] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor8] = balanceOf[stor8] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100) + (ext_call.return_data[0] * sub_42da30ac / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)):
            revert with 0, 17
        balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)), rewardsPoolAddress, msg.sender);
    require ext_code.size(stor19)
    call stor19.cashoutAllNodesRewards(address arg1) with:
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
    if stor22[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if devPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:2'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:2'
    if sub_8f856eabAddress == msg.sender:
        revert with 0, 'CASHOUT:2'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor19)
    staticcall stor19.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No rewards available'
    if ext_call.return_data[0] and sub_fc74febd > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not devPoolAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor8] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor8] -= ext_call.return_data[0] * sub_fc74febd / 100
    if balanceOf[stor9] > !(ext_call.return_data[0] * sub_fc74febd / 100):
        revert with 0, 17
    balanceOf[stor9] += ext_call.return_data[0] * sub_fc74febd / 100
    emit Transfer((ext_call.return_data[0] * sub_fc74febd / 100), rewardsPoolAddress, devPoolAddress);
    if ext_call.return_data[0] < ext_call.return_data[0] * sub_fc74febd / 100:
        revert with 0, 17
    if ext_call.return_data[0] and sub_2de16e38 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not rewardsPoolAddress:
        revert with 0, 'ERC20: transfer from the zero address'
    if not sub_8f856eabAddress:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[stor8] < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[stor8] -= ext_call.return_data[0] * sub_2de16e38 / 100
    if balanceOf[stor10] > !(ext_call.return_data[0] * sub_2de16e38 / 100):
        revert with 0, 17
    balanceOf[stor10] += ext_call.return_data[0] * sub_2de16e38 / 100
    emit Transfer((ext_call.return_data[0] * sub_2de16e38 / 100), rewardsPoolAddress, sub_8f856eabAddress);
    if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) < ext_call.return_data[0] * sub_2de16e38 / 100:
        revert with 0, 17
    if not sub_fabc4035:
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor8] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor8] = balanceOf[stor8] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100)):
            revert with 0, 17
        balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100)), rewardsPoolAddress, msg.sender);
    else:
        if ext_call.return_data[0] and sub_42da30ac > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not this.address:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor8] < ext_call.return_data[0] * sub_42da30ac / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor8] -= ext_call.return_data[0] * sub_42da30ac / 100
        if balanceOf[this.address] > !(ext_call.return_data[0] * sub_42da30ac / 100):
            revert with 0, 17
        balanceOf[this.address] += ext_call.return_data[0] * sub_42da30ac / 100
        emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), rewardsPoolAddress, this.address);
        stor21 = 1
        if ext_call.return_data[0] * sub_42da30ac / 100 < ext_call.return_data[0] * sub_42da30ac / 100 / 2:
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = this.address
        require ext_code.size(address(stor18.field_16))
        staticcall address(stor18.field_16).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        if not this.address:
            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 36
            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 192
               len ceil32(return_data.size) + 132
        if not address(stor18.field_16):
            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 34
            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 192
               len ceil32(return_data.size) + 132
        mem[0] = address(stor18.field_16)
        mem[32] = sha3(address(this.address), 1)
        allowance[address(this.address)][address(stor18.field_0)].field_0 = ext_call.return_data[0] * sub_42da30ac / 100 / 2
        allowance[address(this.address)][address(stor18.field_0)].field_255 = 0
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0] * sub_42da30ac / 100 / 2
        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor18.field_16));
        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_42da30ac / 100 / 2
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 388
        t = ceil32(return_data.size) + 128
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(stor18.field_16))
        call address(stor18.field_16).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not address(stor18.field_16):
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][address(stor18.field_0)].field_0 = (ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2)
        emit Approval(((ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2)), this.address, address(stor18.field_16));
        require ext_code.size(address(stor18.field_16))
        call address(stor18.field_16).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args this.address, (ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2), 0, 0, 0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not this.address:
            revert with 0, 'ERC20: transfer from the zero address'
        if not devPoolAddress:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(this.address)] < ext_call.return_data[0] * sub_42da30ac / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(this.address)] -= ext_call.return_data[0] * sub_42da30ac / 100
        if balanceOf[stor9] > !(ext_call.return_data[0] * sub_42da30ac / 100):
            revert with 0, 17
        balanceOf[stor9] += ext_call.return_data[0] * sub_42da30ac / 100
        emit Transfer((ext_call.return_data[0] * sub_42da30ac / 100), this.address, devPoolAddress);
        emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * sub_42da30ac / 100), 0, (ext_call.return_data[0] * sub_42da30ac / 100) - (ext_call.return_data[0] * sub_42da30ac / 100 / 2));
        stor21 = 0
        if ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) < ext_call.return_data[0] * sub_42da30ac / 100:
            revert with 0, 17
        if not rewardsPoolAddress:
            revert with 0, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor8] < ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor8] = balanceOf[stor8] - ext_call.return_data[0] + (ext_call.return_data[0] * sub_fc74febd / 100) + (ext_call.return_data[0] * sub_2de16e38 / 100) + (ext_call.return_data[0] * sub_42da30ac / 100)
        if balanceOf[msg.sender] > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)):
            revert with 0, 17
        balanceOf[msg.sender] = balanceOf[msg.sender] + ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)
        emit Transfer((ext_call.return_data[0] - (ext_call.return_data[0] * sub_fc74febd / 100) - (ext_call.return_data[0] * sub_2de16e38 / 100) - (ext_call.return_data[0] * sub_42da30ac / 100)), rewardsPoolAddress, msg.sender);
    require ext_code.size(stor19)
    call stor19.cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalClaimed > !ext_call.return_data[0]:
        revert with 0, 17
    totalClaimed += ext_call.return_data[0]
    emit Cashout(ext_call.return_data[0], msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * maxTransferAmountRate / 1000 > 0:
        if not stor24[address(msg.sender)]:
            if not stor24[address(arg1)]:
                if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                    revert with 0, 17
                if arg2 > totalSupply * maxTransferAmountRate / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Hero Kitty::antiWhale: Transfer amount exceeds the maxTransferAmount'
                if joePairAddress == msg.sender:
                    if totalSupply and maxBalanceAmountRate > -1 / totalSupply:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 > totalSupply * maxBalanceAmountRate / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Hero Kitty::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
    if stor22[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if stor22[address(arg1)]:
        revert with 0, 'BLACKLISTED'
    if not msg.sender:
        revert with 0, 'ERC20:1'
    if not arg1:
        revert with 0, 'ERC20:2'
    if not stor23[address(arg1)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if this.address == msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor21:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                mem[100] = msg.sender
                require ext_code.size(stor19)
                staticcall stor19.isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if arg2 and sub_b01e828d > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardsPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * sub_b01e828d / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sub_b01e828d / 100
                    if balanceOf[stor8] > !(arg2 * sub_b01e828d / 100):
                        revert with 0, 17
                    balanceOf[stor8] += arg2 * sub_b01e828d / 100
                    emit Transfer((arg2 * sub_b01e828d / 100), msg.sender, rewardsPoolAddress);
                    if arg2 < arg2 * sub_b01e828d / 100:
                        revert with 0, 17
                    if arg2 and sub_ec23064b > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not devPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * sub_ec23064b / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sub_ec23064b / 100
                    if balanceOf[stor9] > !(arg2 * sub_ec23064b / 100):
                        revert with 0, 17
                    balanceOf[stor9] += arg2 * sub_ec23064b / 100
                    emit Transfer((arg2 * sub_ec23064b / 100), msg.sender, devPoolAddress);
                    if arg2 - (arg2 * sub_b01e828d / 100) < arg2 * sub_ec23064b / 100:
                        revert with 0, 17
                    if not sub_fabc4035:
                        if arg2 and sub_eb182701 > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_eb182701 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_eb182701 / 100
                        if balanceOf[stor10] > !(arg2 * sub_eb182701 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg2 * sub_eb182701 / 100
                        emit Transfer((arg2 * sub_eb182701 / 100), msg.sender, sub_8f856eabAddress);
                        if arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) < arg2 * sub_eb182701 / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_eb182701 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_b01e828d / 100) + (arg2 * sub_ec23064b / 100) + (arg2 * sub_eb182701 / 100)
                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_eb182701 / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_eb182701 / 100)
                        emit Transfer((arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_eb182701 / 100)), msg.sender, arg1);
                    else:
                        if arg2 and sub_80b66308 > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_80b66308 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_80b66308 / 100
                        if balanceOf[this.address] > !(arg2 * sub_80b66308 / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * sub_80b66308 / 100
                        emit Transfer((arg2 * sub_80b66308 / 100), msg.sender, this.address);
                        stor21 = 1
                        if arg2 * sub_80b66308 / 100 < arg2 * sub_80b66308 / 100 / 2:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(address(stor18.field_16))
                        staticcall address(stor18.field_16).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 36
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        if not address(stor18.field_16):
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 34
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        mem[0] = address(stor18.field_16)
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = arg2 * sub_80b66308 / 100 / 2
                        allowance[address(this.address)][address(stor18.field_0)].field_255 = 0
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2 * sub_80b66308 / 100 / 2
                        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor18.field_16));
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 * sub_80b66308 / 100 / 2
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 388
                        t = ceil32(return_data.size) + 128
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor18.field_16):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = (arg2 * sub_80b66308 / 100) - (arg2 * sub_80b66308 / 100 / 2)
                        emit Approval(((arg2 * sub_80b66308 / 100) - (arg2 * sub_80b66308 / 100 / 2)), this.address, address(stor18.field_16));
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (arg2 * sub_80b66308 / 100) - (arg2 * sub_80b66308 / 100 / 2), 0, 0, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not devPoolAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < arg2 * sub_80b66308 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= arg2 * sub_80b66308 / 100
                        if balanceOf[stor9] > !(arg2 * sub_80b66308 / 100):
                            revert with 0, 17
                        balanceOf[stor9] += arg2 * sub_80b66308 / 100
                        emit Transfer((arg2 * sub_80b66308 / 100), this.address, devPoolAddress);
                        emit SwapAndLiquify(Mask(255, 1, arg2 * sub_80b66308 / 100), 0, (arg2 * sub_80b66308 / 100) - (arg2 * sub_80b66308 / 100 / 2));
                        stor21 = 0
                        if arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) < arg2 * sub_80b66308 / 100:
                            revert with 0, 17
                        if arg2 and sub_eb182701 > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_eb182701 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_eb182701 / 100
                        if balanceOf[stor10] > !(arg2 * sub_eb182701 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg2 * sub_eb182701 / 100
                        emit Transfer((arg2 * sub_eb182701 / 100), msg.sender, sub_8f856eabAddress);
                        if arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_80b66308 / 100) < arg2 * sub_eb182701 / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_80b66308 / 100) - (arg2 * sub_eb182701 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_b01e828d / 100) + (arg2 * sub_ec23064b / 100) + (arg2 * sub_80b66308 / 100) + (arg2 * sub_eb182701 / 100)
                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_80b66308 / 100) - (arg2 * sub_eb182701 / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_80b66308 / 100) - (arg2 * sub_eb182701 / 100)
                        emit Transfer((arg2 - (arg2 * sub_b01e828d / 100) - (arg2 * sub_ec23064b / 100) - (arg2 * sub_80b66308 / 100) - (arg2 * sub_eb182701 / 100)), msg.sender, arg1);
                else:
                    if arg2 and sub_0f9ad0fa > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardsPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * sub_0f9ad0fa / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sub_0f9ad0fa / 100
                    if balanceOf[stor8] > !(arg2 * sub_0f9ad0fa / 100):
                        revert with 0, 17
                    balanceOf[stor8] += arg2 * sub_0f9ad0fa / 100
                    emit Transfer((arg2 * sub_0f9ad0fa / 100), msg.sender, rewardsPoolAddress);
                    if arg2 < arg2 * sub_0f9ad0fa / 100:
                        revert with 0, 17
                    if arg2 and sub_5ec4565f > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not devPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * sub_5ec4565f / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * sub_5ec4565f / 100
                    if balanceOf[stor9] > !(arg2 * sub_5ec4565f / 100):
                        revert with 0, 17
                    balanceOf[stor9] += arg2 * sub_5ec4565f / 100
                    emit Transfer((arg2 * sub_5ec4565f / 100), msg.sender, devPoolAddress);
                    if arg2 - (arg2 * sub_0f9ad0fa / 100) < arg2 * sub_5ec4565f / 100:
                        revert with 0, 17
                    if not sub_fabc4035:
                        if arg2 and sub_b5ec6db8 > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_b5ec6db8 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_b5ec6db8 / 100
                        if balanceOf[stor10] > !(arg2 * sub_b5ec6db8 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg2 * sub_b5ec6db8 / 100
                        emit Transfer((arg2 * sub_b5ec6db8 / 100), msg.sender, sub_8f856eabAddress);
                        if arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) < arg2 * sub_b5ec6db8 / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_b5ec6db8 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_0f9ad0fa / 100) + (arg2 * sub_5ec4565f / 100) + (arg2 * sub_b5ec6db8 / 100)
                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_b5ec6db8 / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_b5ec6db8 / 100)
                        emit Transfer((arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_b5ec6db8 / 100)), msg.sender, arg1);
                    else:
                        if arg2 and sub_e790d004 > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_e790d004 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_e790d004 / 100
                        if balanceOf[this.address] > !(arg2 * sub_e790d004 / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * sub_e790d004 / 100
                        emit Transfer((arg2 * sub_e790d004 / 100), msg.sender, this.address);
                        stor21 = 1
                        if arg2 * sub_e790d004 / 100 < arg2 * sub_e790d004 / 100 / 2:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(address(stor18.field_16))
                        staticcall address(stor18.field_16).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 36
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        if not address(stor18.field_16):
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 34
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        mem[0] = address(stor18.field_16)
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = arg2 * sub_e790d004 / 100 / 2
                        allowance[address(this.address)][address(stor18.field_0)].field_255 = 0
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2 * sub_e790d004 / 100 / 2
                        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor18.field_16));
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 * sub_e790d004 / 100 / 2
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 388
                        t = ceil32(return_data.size) + 128
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor18.field_16):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = (arg2 * sub_e790d004 / 100) - (arg2 * sub_e790d004 / 100 / 2)
                        emit Approval(((arg2 * sub_e790d004 / 100) - (arg2 * sub_e790d004 / 100 / 2)), this.address, address(stor18.field_16));
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (arg2 * sub_e790d004 / 100) - (arg2 * sub_e790d004 / 100 / 2), 0, 0, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not devPoolAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < arg2 * sub_e790d004 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= arg2 * sub_e790d004 / 100
                        if balanceOf[stor9] > !(arg2 * sub_e790d004 / 100):
                            revert with 0, 17
                        balanceOf[stor9] += arg2 * sub_e790d004 / 100
                        emit Transfer((arg2 * sub_e790d004 / 100), this.address, devPoolAddress);
                        emit SwapAndLiquify(Mask(255, 1, arg2 * sub_e790d004 / 100), 0, (arg2 * sub_e790d004 / 100) - (arg2 * sub_e790d004 / 100 / 2));
                        stor21 = 0
                        if arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) < arg2 * sub_e790d004 / 100:
                            revert with 0, 17
                        if arg2 and sub_b5ec6db8 > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_b5ec6db8 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_b5ec6db8 / 100
                        if balanceOf[stor10] > !(arg2 * sub_b5ec6db8 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg2 * sub_b5ec6db8 / 100
                        emit Transfer((arg2 * sub_b5ec6db8 / 100), msg.sender, sub_8f856eabAddress);
                        if arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_e790d004 / 100) < arg2 * sub_b5ec6db8 / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_e790d004 / 100) - (arg2 * sub_b5ec6db8 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_0f9ad0fa / 100) + (arg2 * sub_5ec4565f / 100) + (arg2 * sub_e790d004 / 100) + (arg2 * sub_b5ec6db8 / 100)
                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_e790d004 / 100) - (arg2 * sub_b5ec6db8 / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_e790d004 / 100) - (arg2 * sub_b5ec6db8 / 100)
                        emit Transfer((arg2 - (arg2 * sub_0f9ad0fa / 100) - (arg2 * sub_5ec4565f / 100) - (arg2 * sub_e790d004 / 100) - (arg2 * sub_b5ec6db8 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)].field_0 != -1:
        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * maxTransferAmountRate / 1000 > 0:
        if not stor24[address(arg1)]:
            if not stor24[address(arg2)]:
                if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                    revert with 0, 17
                if arg3 > totalSupply * maxTransferAmountRate / 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Hero Kitty::antiWhale: Transfer amount exceeds the maxTransferAmount'
                if joePairAddress == arg1:
                    if totalSupply and maxBalanceAmountRate > -1 / totalSupply:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    if balanceOf[address(arg2)] + arg3 > totalSupply * maxBalanceAmountRate / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Hero Kitty::antiWhale: Transfer would exceed the maxBalanceAmount of the recipient'
    if stor22[address(arg1)]:
        revert with 0, 'BLACKLISTED'
    if stor22[address(arg2)]:
        revert with 0, 'BLACKLISTED'
    if not arg1:
        revert with 0, 'ERC20:1'
    if not arg2:
        revert with 0, 'ERC20:2'
    if not stor23[address(arg2)]:
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
            if stor21:
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
                mem[100] = arg1
                require ext_code.size(stor19)
                staticcall stor19.isNodeOwner(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if arg3 and sub_b01e828d > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardsPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * sub_b01e828d / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * sub_b01e828d / 100
                    if balanceOf[stor8] > !(arg3 * sub_b01e828d / 100):
                        revert with 0, 17
                    balanceOf[stor8] += arg3 * sub_b01e828d / 100
                    emit Transfer((arg3 * sub_b01e828d / 100), arg1, rewardsPoolAddress);
                    if arg3 < arg3 * sub_b01e828d / 100:
                        revert with 0, 17
                    if arg3 and sub_ec23064b > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not devPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * sub_ec23064b / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * sub_ec23064b / 100
                    if balanceOf[stor9] > !(arg3 * sub_ec23064b / 100):
                        revert with 0, 17
                    balanceOf[stor9] += arg3 * sub_ec23064b / 100
                    emit Transfer((arg3 * sub_ec23064b / 100), arg1, devPoolAddress);
                    if arg3 - (arg3 * sub_b01e828d / 100) < arg3 * sub_ec23064b / 100:
                        revert with 0, 17
                    if not sub_fabc4035:
                        if arg3 and sub_eb182701 > -1 / arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                        if balanceOf[stor10] > !(arg3 * sub_eb182701 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg3 * sub_eb182701 / 100
                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, sub_8f856eabAddress);
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
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_80b66308 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_80b66308 / 100
                        if balanceOf[this.address] > !(arg3 * sub_80b66308 / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * sub_80b66308 / 100
                        emit Transfer((arg3 * sub_80b66308 / 100), arg1, this.address);
                        stor21 = 1
                        if arg3 * sub_80b66308 / 100 < arg3 * sub_80b66308 / 100 / 2:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(address(stor18.field_16))
                        staticcall address(stor18.field_16).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 36
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        if not address(stor18.field_16):
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 34
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        mem[0] = address(stor18.field_16)
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = arg3 * sub_80b66308 / 100 / 2
                        allowance[address(this.address)][address(stor18.field_0)].field_255 = 0
                        mem[(2 * ceil32(return_data.size)) + 192] = arg3 * sub_80b66308 / 100 / 2
                        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor18.field_16));
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg3 * sub_80b66308 / 100 / 2
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 388
                        t = ceil32(return_data.size) + 128
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor18.field_16):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = (arg3 * sub_80b66308 / 100) - (arg3 * sub_80b66308 / 100 / 2)
                        emit Approval(((arg3 * sub_80b66308 / 100) - (arg3 * sub_80b66308 / 100 / 2)), this.address, address(stor18.field_16));
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (arg3 * sub_80b66308 / 100) - (arg3 * sub_80b66308 / 100 / 2), 0, 0, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not devPoolAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < arg3 * sub_80b66308 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= arg3 * sub_80b66308 / 100
                        if balanceOf[stor9] > !(arg3 * sub_80b66308 / 100):
                            revert with 0, 17
                        balanceOf[stor9] += arg3 * sub_80b66308 / 100
                        emit Transfer((arg3 * sub_80b66308 / 100), this.address, devPoolAddress);
                        emit SwapAndLiquify(Mask(255, 1, arg3 * sub_80b66308 / 100), 0, (arg3 * sub_80b66308 / 100) - (arg3 * sub_80b66308 / 100 / 2));
                        stor21 = 0
                        if arg3 - (arg3 * sub_b01e828d / 100) - (arg3 * sub_ec23064b / 100) < arg3 * sub_80b66308 / 100:
                            revert with 0, 17
                        if arg3 and sub_eb182701 > -1 / arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_eb182701 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_eb182701 / 100
                        if balanceOf[stor10] > !(arg3 * sub_eb182701 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg3 * sub_eb182701 / 100
                        emit Transfer((arg3 * sub_eb182701 / 100), arg1, sub_8f856eabAddress);
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
                    if arg3 and sub_0f9ad0fa > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not rewardsPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * sub_0f9ad0fa / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * sub_0f9ad0fa / 100
                    if balanceOf[stor8] > !(arg3 * sub_0f9ad0fa / 100):
                        revert with 0, 17
                    balanceOf[stor8] += arg3 * sub_0f9ad0fa / 100
                    emit Transfer((arg3 * sub_0f9ad0fa / 100), arg1, rewardsPoolAddress);
                    if arg3 < arg3 * sub_0f9ad0fa / 100:
                        revert with 0, 17
                    if arg3 and sub_5ec4565f > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not devPoolAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * sub_5ec4565f / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * sub_5ec4565f / 100
                    if balanceOf[stor9] > !(arg3 * sub_5ec4565f / 100):
                        revert with 0, 17
                    balanceOf[stor9] += arg3 * sub_5ec4565f / 100
                    emit Transfer((arg3 * sub_5ec4565f / 100), arg1, devPoolAddress);
                    if arg3 - (arg3 * sub_0f9ad0fa / 100) < arg3 * sub_5ec4565f / 100:
                        revert with 0, 17
                    if not sub_fabc4035:
                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                        if balanceOf[stor10] > !(arg3 * sub_b5ec6db8 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg3 * sub_b5ec6db8 / 100
                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, sub_8f856eabAddress);
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
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_e790d004 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_e790d004 / 100
                        if balanceOf[this.address] > !(arg3 * sub_e790d004 / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * sub_e790d004 / 100
                        emit Transfer((arg3 * sub_e790d004 / 100), arg1, this.address);
                        stor21 = 1
                        if arg3 * sub_e790d004 / 100 < arg3 * sub_e790d004 / 100 / 2:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(address(stor18.field_16))
                        staticcall address(stor18.field_16).WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 36
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        if not address(stor18.field_16):
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 34
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        mem[0] = address(stor18.field_16)
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = arg3 * sub_e790d004 / 100 / 2
                        allowance[address(this.address)][address(stor18.field_0)].field_255 = 0
                        mem[(2 * ceil32(return_data.size)) + 192] = arg3 * sub_e790d004 / 100 / 2
                        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, address(stor18.field_16));
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg3 * sub_e790d004 / 100 / 2
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 388
                        t = ceil32(return_data.size) + 128
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(stor18.field_16):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][address(stor18.field_0)].field_0 = (arg3 * sub_e790d004 / 100) - (arg3 * sub_e790d004 / 100 / 2)
                        emit Approval(((arg3 * sub_e790d004 / 100) - (arg3 * sub_e790d004 / 100 / 2)), this.address, address(stor18.field_16));
                        require ext_code.size(address(stor18.field_16))
                        call address(stor18.field_16).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, (arg3 * sub_e790d004 / 100) - (arg3 * sub_e790d004 / 100 / 2), 0, 0, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not devPoolAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < arg3 * sub_e790d004 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= arg3 * sub_e790d004 / 100
                        if balanceOf[stor9] > !(arg3 * sub_e790d004 / 100):
                            revert with 0, 17
                        balanceOf[stor9] += arg3 * sub_e790d004 / 100
                        emit Transfer((arg3 * sub_e790d004 / 100), this.address, devPoolAddress);
                        emit SwapAndLiquify(Mask(255, 1, arg3 * sub_e790d004 / 100), 0, (arg3 * sub_e790d004 / 100) - (arg3 * sub_e790d004 / 100 / 2));
                        stor21 = 0
                        if arg3 - (arg3 * sub_0f9ad0fa / 100) - (arg3 * sub_5ec4565f / 100) < arg3 * sub_e790d004 / 100:
                            revert with 0, 17
                        if arg3 and sub_b5ec6db8 > -1 / arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_8f856eabAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_b5ec6db8 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_b5ec6db8 / 100
                        if balanceOf[stor10] > !(arg3 * sub_b5ec6db8 / 100):
                            revert with 0, 17
                        balanceOf[stor10] += arg3 * sub_b5ec6db8 / 100
                        emit Transfer((arg3 * sub_b5ec6db8 / 100), arg1, sub_8f856eabAddress);
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



}

contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18

const sub_4e6fd6c4(?) = 57005

const sub_8e09ef65(?) = 32, 2099, code.data[13097 len 2099], mem[2227 len 13] >> 16536, 0


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0;
uint16 stor0; offset 160
address stor0; offset 16
address owner;
uint256 maxTxAmount;
uint256 _rTotal;
uint256 sub_d5f3c0e3;
uint256 sub_c608c29f;
uint256 sub_fc89f064;
mapping of uint8 stor6;
mapping of uint8 stor7;
address sub_b28bc466Address;
address pancakePairAddress;
uint256 launchTime;
uint256 maxSupply;
address sub_d2d36131Address;
address charityFundAddress;
address sub_cb31d363Address;
address sub_b3aaaf28Address;
address sub_f68d8534Address;
address buyBackFundAddress;
address marketingFundAddress;
address lpLockerAddress;
mapping of uint256 stor20;
uint256 stor21;
mapping of uint256 stor24;
address stor25;
uint256 stor26;
array of address stor27;
array of struct stor28;
array of struct stor29;
address taxCollectorAddress;
uint256 stor8B9E;

function lpLocker() {
    return lpLockerAddress
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function _rTotal() {
    return _rTotal
}

function charityFund() {
    return charityFundAddress
}

function launchTime() {
    return launchTime
}

function excludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function sub_b28bc466(?) {
    return sub_b28bc466Address
}

function sub_b3aaaf28(?) {
    return sub_b3aaaf28Address
}

function pancakePair() {
    return pancakePairAddress
}

function taxCollector() {
    return taxCollectorAddress
}

function sub_c608c29f(?) {
    return sub_c608c29f
}

function buyBackFund() {
    return buyBackFundAddress
}

function sub_cb31d363(?) {
    return sub_cb31d363Address
}

function sub_d2d36131(?) {
    return sub_d2d36131Address
}

function maxSupply() {
    return maxSupply
}

function sub_d5f3c0e3(?) {
    return sub_d5f3c0e3
}

function marketingFund() {
    return marketingFundAddress
}

function sub_f68d8534(?) {
    return sub_f68d8534Address
}

function sub_fc89f064(?) {
    return sub_fc89f064
}

function totalSupply() {
    if stor21 and _rTotal > -1 / stor21:
        revert with 0, 17
    return (stor21 * _rTotal / 10^18)
}

function sub_ea53ae16(?) {
    require calldata.size - 4 >= 32
    if arg1 and _rTotal > -1 / arg1:
        revert with 0, 17
    return (arg1 * _rTotal / 10^18)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor0.field_0) = 57005
    Mask(144, 0, stor0.field_16) = 0
    emit OwnershipTransferred(owner, 57005);
}

function sub_e895eed3(?) {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not _rTotal:
        revert with 0, 18
    return (10^18 * arg1 / _rTotal)
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 0
    emit IncludedInFee(arg1);
}

function includeInWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
    emit 0xf0d6ae80: arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor20[address(arg1)] and _rTotal > -1 / stor20[address(arg1)]:
        revert with 0, 17
    return (stor20[address(arg1)] * _rTotal / 10^18)
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
    emit ExcludedFromFee(arg1);
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor24[address(arg1)][address(arg2)] and _rTotal > -1 / stor24[address(arg1)][address(arg2)]:
        revert with 0, 17
    return (stor24[address(arg1)][address(arg2)] * _rTotal / 10^18)
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

function sub_600c7351(?) {
    require calldata.size - 4 >= 32
    if stor21 and _rTotal > -1 / stor21:
        revert with 0, 17
    if stor21 * _rTotal / 10^18 < arg1:
        revert with 0, 17
    if stor21 and _rTotal > -1 / stor21:
        revert with 0, 17
    if stor21 * _rTotal / 10^18 and _rTotal > -1 / stor21 * _rTotal / 10^18:
        revert with 0, 17
    if not (stor21 * _rTotal / 10^18) - arg1:
        revert with 0, 18
    return (stor21 * _rTotal / 10^18 * _rTotal / (stor21 * _rTotal / 10^18) - arg1)
}

function adjustFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > stor26:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: new feeTotal > initial feeTotal'
    sub_d5f3c0e3 = arg1
    sub_c608c29f = arg2
    sub_fc89f064 = arg3
    emit FeesChanged(arg1, arg2, arg3);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ext_code.size(arg1):
        if not stor6[address(arg1)]:
            revert with 0, 'tipsyCoin: Bots and Contracts b&'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not _rTotal:
        revert with 0, 18
    stor24[address(msg.sender)][address(arg1)] = 10^18 * arg2 / _rTotal
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor24[msg.sender][address(arg1)] and _rTotal > -1 / stor24[msg.sender][address(arg1)]:
        revert with 0, 17
    if stor24[msg.sender][address(arg1)] * _rTotal / 10^18 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    if (stor24[msg.sender][address(arg1)] * _rTotal / 10^18) + arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not _rTotal:
        revert with 0, 18
    stor24[address(msg.sender)][address(arg1)] = (10^18 * stor24[msg.sender][address(arg1)] * _rTotal / 10^18) + (10^18 * arg2) / _rTotal
    emit Approval(((stor24[msg.sender][address(arg1)] * _rTotal / 10^18) + arg2), msg.sender, arg1);
    return 1
}

function salvage(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not eth.balance(this.address):
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor24[msg.sender][address(arg1)] and _rTotal > -1 / stor24[msg.sender][address(arg1)]:
        revert with 0, 17
    if stor24[msg.sender][address(arg1)] * _rTotal / 10^18 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if stor24[msg.sender][address(arg1)] and _rTotal > -1 / stor24[msg.sender][address(arg1)]:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    if (stor24[msg.sender][address(arg1)] * _rTotal / 10^18) - arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not _rTotal:
        revert with 0, 18
    stor24[address(msg.sender)][address(arg1)] = (10^18 * stor24[msg.sender][address(arg1)] * _rTotal / 10^18) - (10^18 * arg2) / _rTotal
    emit Approval(((stor24[msg.sender][address(arg1)] * _rTotal / 10^18) - arg2), msg.sender, arg1);
    return 1
}

function addLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value <= 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Add more than 200 BNB ($100,000)!'
    if 100 > !block.timestamp:
        revert with 0, 17
    if arg1 <= block.timestamp + 100:
        revert with 0, '_launchTime too soon!'
    staticcall stor25.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall stor25.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pancakePairAddress = ext_call.return_data[12 len 20]
    if 43800 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    require ext_code.size(lpLockerAddress)
    call lpLockerAddress.initialize(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args pancakePairAddress, address(this.address), block.timestamp + (43800 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not sub_b28bc466Address:
        revert with 0, 'ERC20: approve to the zero address'
    if not _rTotal:
        revert with 0, 18
    stor24[address(this.address)][stor8] = 0x8c213d9da502de454526f422cc3400000000000 / _rTotal
    emit Approval(50000000000 * 10^18, this.address, sub_b28bc466Address);
    stor6[stor9] = 1
    call stor25.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), 50000000000 * 10^18, 1, 1, lpLockerAddress, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    launchTime = arg1
}

function name() {
    if bool(stor28.length):
        if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor28.length):
            if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor28.length):
                if 31 < uint255(stor28.length) * 0.5:
                    mem[128] = uint256(stor28.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor28.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor28[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor28.length), data=mem[128 len ceil32(uint255(stor28.length) * 0.5)])
                mem[128] = 256 * stor28.length.field_8
        else:
            if bool(stor28.length) == stor28.length.field_1 < 32:
                revert with 0, 34
            if stor28.length.field_1:
                if 31 < stor28.length.field_1:
                    mem[128] = uint256(stor28.field_0)
                    idx = 128
                    s = 0
                    while stor28.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor28[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor28.length), data=mem[128 len ceil32(uint255(stor28.length) * 0.5)])
                mem[128] = 256 * stor28.length.field_8
        mem[ceil32(uint255(stor28.length) * 0.5) + 192 len ceil32(uint255(stor28.length) * 0.5)] = mem[128 len ceil32(uint255(stor28.length) * 0.5)]
        if ceil32(uint255(stor28.length) * 0.5) > uint255(stor28.length) * 0.5:
            mem[ceil32(uint255(stor28.length) * 0.5) + (uint255(stor28.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor28.length), data=mem[128 len ceil32(uint255(stor28.length) * 0.5)], mem[(2 * ceil32(uint255(stor28.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor28.length) * 0.5)]), 
    if bool(stor28.length) == stor28.length.field_1 < 32:
        revert with 0, 34
    if bool(stor28.length):
        if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor28.length):
            if 31 < uint255(stor28.length) * 0.5:
                mem[128] = uint256(stor28.field_0)
                idx = 128
                s = 0
                while (uint255(stor28.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor28[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor28.length % 128, data=mem[128 len ceil32(stor28.length.field_1)])
            mem[128] = 256 * stor28.length.field_8
    else:
        if bool(stor28.length) == stor28.length.field_1 < 32:
            revert with 0, 34
        if stor28.length.field_1:
            if 31 < stor28.length.field_1:
                mem[128] = uint256(stor28.field_0)
                idx = 128
                s = 0
                while stor28.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor28[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor28.length % 128, data=mem[128 len ceil32(stor28.length.field_1)])
            mem[128] = 256 * stor28.length.field_8
    mem[ceil32(stor28.length.field_1) + 192 len ceil32(stor28.length.field_1)] = mem[128 len ceil32(stor28.length.field_1)]
    if ceil32(stor28.length.field_1) > stor28.length.field_1:
        mem[ceil32(stor28.length.field_1) + stor28.length.field_1 + 192] = 0
    return Array(len=stor28.length % 128, data=mem[128 len ceil32(stor28.length.field_1)], mem[(2 * ceil32(stor28.length.field_1)) + 192 len 2 * ceil32(stor28.length.field_1)]), 
}

function symbol() {
    if bool(stor29.length):
        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor29.length):
            if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor29.length):
                if 31 < uint255(stor29.length) * 0.5:
                    mem[128] = uint256(stor29.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor29.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor29[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor29.length), data=mem[128 len ceil32(uint255(stor29.length) * 0.5)])
                mem[128] = 256 * stor29.length.field_8
        else:
            if bool(stor29.length) == stor29.length.field_1 < 32:
                revert with 0, 34
            if stor29.length.field_1:
                if 31 < stor29.length.field_1:
                    mem[128] = uint256(stor29.field_0)
                    idx = 128
                    s = 0
                    while stor29.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor29[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor29.length), data=mem[128 len ceil32(uint255(stor29.length) * 0.5)])
                mem[128] = 256 * stor29.length.field_8
        mem[ceil32(uint255(stor29.length) * 0.5) + 192 len ceil32(uint255(stor29.length) * 0.5)] = mem[128 len ceil32(uint255(stor29.length) * 0.5)]
        if ceil32(uint255(stor29.length) * 0.5) > uint255(stor29.length) * 0.5:
            mem[ceil32(uint255(stor29.length) * 0.5) + (uint255(stor29.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor29.length), data=mem[128 len ceil32(uint255(stor29.length) * 0.5)], mem[(2 * ceil32(uint255(stor29.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor29.length) * 0.5)]), 
    if bool(stor29.length) == stor29.length.field_1 < 32:
        revert with 0, 34
    if bool(stor29.length):
        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor29.length):
            if 31 < uint255(stor29.length) * 0.5:
                mem[128] = uint256(stor29.field_0)
                idx = 128
                s = 0
                while (uint255(stor29.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor29[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor29.length % 128, data=mem[128 len ceil32(stor29.length.field_1)])
            mem[128] = 256 * stor29.length.field_8
    else:
        if bool(stor29.length) == stor29.length.field_1 < 32:
            revert with 0, 34
        if stor29.length.field_1:
            if 31 < stor29.length.field_1:
                mem[128] = uint256(stor29.field_0)
                idx = 128
                s = 0
                while stor29.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor29[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor29.length % 128, data=mem[128 len ceil32(stor29.length.field_1)])
            mem[128] = 256 * stor29.length.field_8
    mem[ceil32(stor29.length.field_1) + 192 len ceil32(stor29.length.field_1)] = mem[128 len ceil32(stor29.length.field_1)]
    if ceil32(stor29.length.field_1) > stor29.length.field_1:
        mem[ceil32(stor29.length.field_1) + stor29.length.field_1 + 192] = 0
    return Array(len=stor29.length % 128, data=mem[128 len ceil32(stor29.length.field_1)], mem[(2 * ceil32(stor29.length.field_1)) + 192 len 2 * ceil32(stor29.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ext_code.size(arg1):
        if not stor6[address(arg1)]:
            revert with 0, 'tipsyCoin: Bots and Contracts b&'
    if not arg1:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: reflect from the zero address'
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: reflect amount must be greater than zero'
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not _rTotal:
            revert with 0, 18
        if stor20[address(msg.sender)] < 10^18 * arg2 / _rTotal:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: reflect amount exceeds balance'
        stor20[address(msg.sender)] -= 10^18 * arg2 / _rTotal
        if stor21 and _rTotal > -1 / stor21:
            revert with 0, 17
        if stor21 * _rTotal / 10^18 < arg2:
            revert with 0, 17
        if stor21 and _rTotal > -1 / stor21:
            revert with 0, 17
        if stor21 * _rTotal / 10^18 and _rTotal > -1 / stor21 * _rTotal / 10^18:
            revert with 0, 17
        if not (stor21 * _rTotal / 10^18) - arg2:
            revert with 0, 18
        _rTotal = stor21 * _rTotal / 10^18 * _rTotal / (stor21 * _rTotal / 10^18) - arg2
        if stor21 < 10^18 * arg2 / _rTotal:
            revert with 0, 17
        stor21 -= 10^18 * arg2 / _rTotal
        emit 0xde80b670: _rTotal, arg2, _rTotal
    else:
        if 57005 == arg1:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: burn amount must be greater than zero'
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not _rTotal:
                revert with 0, 18
            if stor20[address(msg.sender)] < 10^18 * arg2 / _rTotal:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
            stor20[address(msg.sender)] -= 10^18 * arg2 / _rTotal
            stor8B9E += 10^18 * arg2 / _rTotal
            if stor21 < 10^18 * arg2 / _rTotal:
                revert with 0, 17
            stor21 -= 10^18 * arg2 / _rTotal
            emit Transfer(arg2, msg.sender, 57005);
            if stor21 and _rTotal > -1 / stor21:
                revert with 0, 17
            if stor21 and _rTotal > -1 / stor21:
                revert with 0, 17
            if stor21 * _rTotal / 10^18 > !arg2:
                revert with 0, 17
            emit Burned((stor21 * _rTotal / 10^18) + arg2, arg2, stor21 * _rTotal / 10^18);
        else:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: transfer to the zero address, use _reflect'
            if 57005 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
            if 6 > !launchTime:
                revert with 0, 17
            if block.timestamp <= launchTime + 6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: token not tradable yet! Please wait'
            if not stor7[address(msg.sender)]:
                if not stor7[address(arg1)]:
                    if arg2 > maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tipsy: transfer amount exceeds maxTxAmount.'
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not _rTotal:
                revert with 0, 18
            if stor20[address(msg.sender)] < 10^18 * arg2 / _rTotal:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            stor20[address(msg.sender)] -= 10^18 * arg2 / _rTotal
            if stor20[arg1] > !(10^18 * arg2 / _rTotal):
                revert with 0, 17
            stor20[arg1] += 10^18 * arg2 / _rTotal
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10) {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    if uint8(stor0.field_168):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_168):
        uint16(stor0.field_160) = 257
    if owner:
        revert with 0, 'Ownable: owner already set'
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    create contract with 0 wei
                    code: code.data[13097 len 2099]
    if not address(create.new_address):
        revert with 0, 'tipsy: deploy failed'
    lpLockerAddress = address(create.new_address)
    if not arg3:
        revert with 0, 'tipsy: initialize address must be set'
    if not arg4:
        revert with 0, 'tipsy: initialize address must be set'
    if not arg5:
        revert with 0, 'tipsy: initialize address must be set'
    if not arg6:
        revert with 0, 'tipsy: initialize address must be set'
    if not arg7:
        revert with 0, 'tipsy: initialize address must be set'
    if not arg8:
        revert with 0, 'tipsy: initialize address must be set'
    if not arg9:
        revert with 0, 'tipsy: initialize address must be set'
    buyBackFundAddress = arg9
    sub_d2d36131Address = arg3
    charityFundAddress = arg4
    marketingFundAddress = arg5
    sub_f68d8534Address = arg6
    sub_b3aaaf28Address = arg7
    sub_cb31d363Address = arg8
    sub_d5f3c0e3 = 400
    sub_c608c29f = 200
    sub_fc89f064 = 400
    stor26 = 1000
    if bool(stor28.length):
        if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor28.length) = 18
        stor28.length.field_8 = 0
        stor28.length.field_184 = 1557124201727635974510
        idx = 0
        while (uint255(stor28.length) * 0.5) + 31 / 32 > idx:
            stor28[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor28.length) == stor28.length.field_1 < 32:
            revert with 0, 34
        uint8(stor28.length) = 18
        stor28.length.field_8 = 0
        stor28.length.field_184 = 1557124201727635974510
        idx = 0
        while stor28.length.field_1 + 31 / 32 > idx:
            stor28[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor29.length):
        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor29.length) = 12
        stor29.length.field_8 = 0
        stor29.length.field_208 = 40082403783545
        idx = 0
        while (uint255(stor29.length) * 0.5) + 31 / 32 > idx:
            stor29[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor29.length) == stor29.length.field_1 < 32:
            revert with 0, 34
        uint8(stor29.length) = 12
        stor29.length.field_8 = 0
        stor29.length.field_208 = 40082403783545
        idx = 0
        while stor29.length.field_1 + 31 / 32 > idx:
            stor29[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not marketingFundAddress:
        revert with 0, 'ERC20: mint to the zero address'
    if stor21 > 0xffffffffffffffffffffffffffffffffffffffffc0588abc1a0e21b68bffffff:
        revert with 0, 17
    stor21 += 19700000000 * 10^18
    if stor20[stor18] > 0xffffffffffffffffffffffffffffffffffffffffc0588abc1a0e21b68bffffff:
        revert with 0, 17
    stor20[stor18] += 19700000000 * 10^18
    emit Transfer(19700000000 * 10^18, 0, marketingFundAddress);
    if not sub_cb31d363Address:
        revert with 0, 'ERC20: mint to the zero address'
    if stor21 > 0xffffffffffffffffffffffffffffffffffffffffdfb031a1c1dafd9eefffffff:
        revert with 0, 17
    stor21 += 10000000000 * 10^18
    if stor20[stor14] > 0xffffffffffffffffffffffffffffffffffffffffdfb031a1c1dafd9eefffffff:
        revert with 0, 17
    stor20[stor14] += 10000000000 * 10^18
    emit Transfer(10000000000 * 10^18, 0, sub_cb31d363Address);
    if not sub_d2d36131Address:
        revert with 0, 'ERC20: mint to the zero address'
    if stor21 > 0xffffffffffffffffffffffffffffffffffffffffe961bc57a14c7e55a7ffffff:
        revert with 0, 17
    stor21 += 7000000000 * 10^18
    if stor20[stor12] > 0xffffffffffffffffffffffffffffffffffffffffe961bc57a14c7e55a7ffffff:
        revert with 0, 17
    stor20[stor12] += 7000000000 * 10^18
    emit Transfer(7000000000 * 10^18, 0, sub_d2d36131Address);
    if not charityFundAddress:
        revert with 0, 'ERC20: mint to the zero address'
    if stor21 > 0xfffffffffffffffffffffffffffffffffffffffff64e754a208e7f4947ffffff:
        revert with 0, 17
    stor21 += 3000000000 * 10^18
    if stor20[stor13] > 0xfffffffffffffffffffffffffffffffffffffffff64e754a208e7f4947ffffff:
        revert with 0, 17
    stor20[stor13] += 3000000000 * 10^18
    emit Transfer(3000000000 * 10^18, 0, charityFundAddress);
    if not this.address:
        revert with 0, 'ERC20: mint to the zero address'
    if stor21 > 0xffffffffffffffffffffffffffffffffffffffff5e70f828c946f41aafffffff:
        revert with 0, 17
    stor21 += 50000000000 * 10^18
    if stor20[address(this.address)] > 0xffffffffffffffffffffffffffffffffffffffff5e70f828c946f41aafffffff:
        revert with 0, 17
    stor20[address(this.address)] += 50000000000 * 10^18
    emit Transfer(50000000000 * 10^18, 0, this.address);
    if not sub_f68d8534Address:
        revert with 0, 'ERC20: mint to the zero address'
    if stor21 > 0xfffffffffffffffffffffffffffffffffffffffff07d88769a7d98753fffffff:
        revert with 0, 17
    stor21 += 4800000000 * 10^18
    if stor20[stor16] > 0xfffffffffffffffffffffffffffffffffffffffff07d88769a7d98753fffffff:
        revert with 0, 17
    stor20[stor16] += 4800000000 * 10^18
    emit Transfer(4800000000 * 10^18, 0, sub_f68d8534Address);
    if not sub_b3aaaf28Address:
        revert with 0, 'ERC20: mint to the zero address'
    if stor21 > 0xffffffffffffffffffffffffffffffffffffffffee3a81b291053eb103ffffff:
        revert with 0, 17
    stor21 += 5500000000 * 10^18
    if stor20[stor15] > 0xffffffffffffffffffffffffffffffffffffffffee3a81b291053eb103ffffff:
        revert with 0, 17
    stor20[stor15] += 5500000000 * 10^18
    emit Transfer(5500000000 * 10^18, 0, sub_b3aaaf28Address);
    maxSupply = 100000000000 * 10^18
    if stor21 != 100000000000 * 10^18:
        revert with 0, 'tipsy: not all supply minted'
    maxTxAmount = stor21 / 200
    _rTotal = 10^18
    sub_b28bc466Address = arg2
    stor25 = arg2
    taxCollectorAddress = arg10
    stor7[address(arg10)] = 1
    stor6[stor30] = 1
    stor6[stor8] = 1
    stor7[stor8] = 0
    stor7[this.address] = 1
    stor6[this.address] = 1
    stor7[address(stor0.field_0)] = 1
    stor6[address(stor0.field_0)] = 1
    stor7[stor12] = 1
    stor6[stor12] = 1
    stor7[stor13] = 1
    stor6[stor13] = 1
    stor7[stor14] = 1
    stor6[stor14] = 1
    stor7[stor15] = 1
    stor6[stor15] = 1
    stor7[stor16] = 1
    stor6[stor16] = 1
    stor7[stor17] = 1
    stor6[stor17] = 1
    stor7[stor18] = 1
    stor6[stor18] = 1
    mem[2400 len 64] = call.data[calldata.size len 64]
    stor27.length = 2
    s = 0
    idx = 2400
    while 2464 > idx:
        stor27[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor27.length > idx:
        stor27[idx].field_0 = 0
        idx = idx + 1
        continue 
    if 0 >= stor27.length:
        revert with 0, 50
    address(stor27.field_0) = this.address
    staticcall stor25.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 >= stor27.length:
        revert with 0, 50
    address(stor27.field_256) = ext_call.return_data[12 len 20]
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x95d89b41(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xd2d36131(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xea2f0b37(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xea2f0b37(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor7[address(arg1)] = 0
                    emit IncludedInFee(address(arg1));
                else:
                    if unknown_0xea53ae16(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if arg1 and _rTotal > -1 / arg1:
                            revert with 0, 17
                        return (arg1 * _rTotal / 10^18)
                    if unknown_0xf256b130(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return marketingFundAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xf68d8534(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_f68d8534Address
                        require unknown_0xfc89f064(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_fc89f064
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
            else:
                if unknown_0xd2d36131(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_d2d36131Address
                if unknown_0xd5abeb01(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return maxSupply
                if unknown_0xd5f3c0e3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_d5f3c0e3
                if uint32(call.func_hash) >> 224 != unknown_0xdb26149d(?????):
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if stor24[address(arg1)][address(arg2)] and _rTotal > -1 / stor24[address(arg1)][address(arg2)]:
                            revert with 0, 17
                        return (stor24[address(arg1)][address(arg2)] * _rTotal / 10^18)
                    require unknown_0xe895eed3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    return (10^18 * arg1 / _rTotal)
                require not msg.value
                require calldata.size - 4 >= 96
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 > !arg2:
                    revert with 0, 17
                if arg1 + arg2 > !arg3:
                    revert with 0, 17
                if arg1 + arg2 + arg3 > stor26:
                    revert with 0, 'tipsy: new feeTotal > initial feeTotal'
                sub_d5f3c0e3 = arg1
                sub_c608c29f = arg2
                sub_fc89f064 = arg3
                emit FeesChanged(arg1, arg2, arg3);
        else:
            if unknown_0xb8c9d25c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if bool(stor29.length):
                        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor29.length):
                            if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor29.length):
                                if 31 < uint255(stor29.length) * 0.5:
                                    mem[160] = uint256(stor29.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor29.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor29[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor29.length), data=mem[160 len ceil32(uint255(stor29.length) * 0.5)])
                                mem[160] = 256 * stor29.length.field_8
                        else:
                            if bool(stor29.length) == stor29.length.field_1 < 32:
                                revert with 0, 34
                            if stor29.length.field_1:
                                if 31 < stor29.length.field_1:
                                    mem[160] = uint256(stor29.field_0)
                                    idx = 160
                                    s = 0
                                    while stor29.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor29[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor29.length), data=mem[160 len ceil32(uint255(stor29.length) * 0.5)])
                                mem[160] = 256 * stor29.length.field_8
                        mem[ceil32(uint255(stor29.length) * 0.5) + 224 len ceil32(uint255(stor29.length) * 0.5)] = mem[160 len ceil32(uint255(stor29.length) * 0.5)]
                        if ceil32(uint255(stor29.length) * 0.5) > uint255(stor29.length) * 0.5:
                            mem[ceil32(uint255(stor29.length) * 0.5) + (uint255(stor29.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor29.length), data=mem[160 len ceil32(uint255(stor29.length) * 0.5)], mem[(2 * ceil32(uint255(stor29.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor29.length) * 0.5)]), 
                    if bool(stor29.length) == stor29.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor29.length):
                        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor29.length):
                            if 31 < uint255(stor29.length) * 0.5:
                                mem[160] = uint256(stor29.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor29.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor29[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor29.length % 128, data=mem[160 len ceil32(stor29.length.field_1)])
                            mem[160] = 256 * stor29.length.field_8
                    else:
                        if bool(stor29.length) == stor29.length.field_1 < 32:
                            revert with 0, 34
                        if stor29.length.field_1:
                            if 31 < stor29.length.field_1:
                                mem[160] = uint256(stor29.field_0)
                                idx = 160
                                s = 0
                                while stor29.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor29[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor29.length % 128, data=mem[160 len ceil32(stor29.length.field_1)])
                            mem[160] = 256 * stor29.length.field_8
                    mem[ceil32(stor29.length.field_1) + 224 len ceil32(stor29.length.field_1)] = mem[160 len ceil32(stor29.length.field_1)]
                    if ceil32(stor29.length.field_1) > stor29.length.field_1:
                        mem[ceil32(stor29.length.field_1) + stor29.length.field_1 + 224] = 0
                    return Array(len=stor29.length % 128, data=mem[160 len ceil32(stor29.length.field_1)], mem[(2 * ceil32(stor29.length.field_1)) + 224 len 2 * ceil32(stor29.length.field_1)]), 
                if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if stor24[msg.sender][address(arg1)] and _rTotal > -1 / stor24[msg.sender][address(arg1)]:
                        revert with 0, 17
                    if stor24[msg.sender][address(arg1)] * _rTotal / 10^18 < arg2:
                        revert with 0, 'ERC20: decreased allowance below zero'
                    if stor24[msg.sender][address(arg1)] and _rTotal > -1 / stor24[msg.sender][address(arg1)]:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    if (stor24[msg.sender][address(arg1)] * _rTotal / 10^18) - arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    stor24[address(msg.sender)][address(arg1)] = (10^18 * stor24[msg.sender][address(arg1)] * _rTotal / 10^18) - (10^18 * arg2) / _rTotal
                    emit Approval(((stor24[msg.sender][address(arg1)] * _rTotal / 10^18) - arg2), msg.sender, address(arg1));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                        if unknown_0xb28bc466(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_b28bc466Address
                        require unknown_0xb3aaaf28(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_b3aaaf28Address
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if ext_code.size(address(arg1)):
                        if not stor6[address(arg1)]:
                            revert with 0, 'tipsyCoin: Bots and Contracts b&'
                    if not address(arg1):
                        if not msg.sender:
                            revert with 0, 'tipsy: reflect from the zero address'
                        if arg2 <= 0:
                            revert with 0, 'tipsy: reflect amount must be greater than zero'
                        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not _rTotal:
                            revert with 0, 18
                        if stor20[address(msg.sender)] < 10^18 * arg2 / _rTotal:
                            revert with 0, 'tipsy: reflect amount exceeds balance'
                        stor20[address(msg.sender)] -= 10^18 * arg2 / _rTotal
                        if stor21 and _rTotal > -1 / stor21:
                            revert with 0, 17
                        if stor21 * _rTotal / 10^18 < arg2:
                            revert with 0, 17
                        if stor21 and _rTotal > -1 / stor21:
                            revert with 0, 17
                        if stor21 * _rTotal / 10^18 and _rTotal > -1 / stor21 * _rTotal / 10^18:
                            revert with 0, 17
                        if not (stor21 * _rTotal / 10^18) - arg2:
                            revert with 0, 18
                        _rTotal = stor21 * _rTotal / 10^18 * _rTotal / (stor21 * _rTotal / 10^18) - arg2
                        if stor21 < 10^18 * arg2 / _rTotal:
                            revert with 0, 17
                        stor21 -= 10^18 * arg2 / _rTotal
                        emit 0xde80b670: _rTotal, arg2, _rTotal
                    else:
                        if 57005 == address(arg1):
                            if not msg.sender:
                                revert with 0, 'ERC20: burn from the zero address'
                            if arg2 <= 0:
                                revert with 0, 'tipsy: burn amount must be greater than zero'
                            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not _rTotal:
                                revert with 0, 18
                            if stor20[address(msg.sender)] < 10^18 * arg2 / _rTotal:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            stor20[address(msg.sender)] -= 10^18 * arg2 / _rTotal
                            stor8B9E += 10^18 * arg2 / _rTotal
                            if stor21 < 10^18 * arg2 / _rTotal:
                                revert with 0, 17
                            stor21 -= 10^18 * arg2 / _rTotal
                            emit Transfer(arg2, msg.sender, 57005);
                            if stor21 and _rTotal > -1 / stor21:
                                revert with 0, 17
                            if stor21 and _rTotal > -1 / stor21:
                                revert with 0, 17
                            if stor21 * _rTotal / 10^18 > !arg2:
                                revert with 0, 17
                            emit Burned((stor21 * _rTotal / 10^18) + arg2, arg2, stor21 * _rTotal / 10^18);
                        else:
                            if not msg.sender:
                                revert with 0, 'tipsy: transfer from the zero address'
                            if not address(arg1):
                                revert with 0, 'tipsy: transfer to the zero address, use _reflect'
                            if 57005 == address(arg1):
                                revert with 0, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
                            if 6 > !launchTime:
                                revert with 0, 17
                            if block.timestamp <= launchTime + 6:
                                revert with 0, 'tipsy: token not tradable yet! Please wait'
                            if not stor7[address(msg.sender)]:
                                if not stor7[address(arg1)]:
                                    if arg2 > maxTxAmount:
                                        revert with 0, 'tipsy: transfer amount exceeds maxTxAmount.'
                            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not _rTotal:
                                revert with 0, 18
                            if stor20[address(msg.sender)] < 10^18 * arg2 / _rTotal:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            stor20[address(msg.sender)] -= 10^18 * arg2 / _rTotal
                            if stor20[address(arg1)] > !(10^18 * arg2 / _rTotal):
                                revert with 0, 17
                            stor20[address(arg1)] += 10^18 * arg2 / _rTotal
                            emit Transfer(arg2, msg.sender, address(arg1));
                return 1
            if unknown_0xb8c9d25c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return pancakePairAddress
            if unknown_0xbea1dcf8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return taxCollectorAddress
            if uint32(call.func_hash) >> 224 != unknown_0xc306b378(?????):
                if unknown_0xc608c29f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_c608c29f
                if unknown_0xc9ce624f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return buyBackFundAddress
                require unknown_0xcb31d363(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_cb31d363Address
            require not msg.value
            require calldata.size - 4 >= 320
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg5 == address(arg5)
            require arg6 == address(arg6)
            require arg7 == address(arg7)
            require arg8 == address(arg8)
            require arg9 == address(arg9)
            require arg10 == address(arg10)
            if uint8(stor0.field_168):
                if ext_code.size(this.address):
                    revert with 0, 'Initializable: contract is already initialized'
            else:
                if uint8(stor0.field_160):
                    revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_168):
                uint16(stor0.field_160) = 257
            if owner:
                revert with 0, 'Ownable: owner already set'
            owner = address(arg1)
            emit OwnershipTransferred(0, address(arg1));
            create contract with 0 wei
                            code: code.data[13097 len 2099]
            if not address(create.new_address):
                revert with 0, 'tipsy: deploy failed'
            lpLockerAddress = address(create.new_address)
            if not address(arg3):
                revert with 0, 'tipsy: initialize address must be set'
            if not address(arg4):
                revert with 0, 'tipsy: initialize address must be set'
            if not address(arg5):
                revert with 0, 'tipsy: initialize address must be set'
            if not address(arg6):
                revert with 0, 'tipsy: initialize address must be set'
            if not address(arg7):
                revert with 0, 'tipsy: initialize address must be set'
            if not address(arg8):
                revert with 0, 'tipsy: initialize address must be set'
            if not address(arg9):
                revert with 0, 'tipsy: initialize address must be set'
            buyBackFundAddress = address(arg9)
            sub_d2d36131Address = address(arg3)
            charityFundAddress = address(arg4)
            marketingFundAddress = address(arg5)
            sub_f68d8534Address = address(arg6)
            sub_b3aaaf28Address = address(arg7)
            sub_cb31d363Address = address(arg8)
            sub_d5f3c0e3 = 400
            sub_c608c29f = 200
            sub_fc89f064 = 400
            stor26 = 1000
            if bool(stor28.length):
                if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
                    revert with 0, 34
                uint8(stor28.length) = 18
                stor28.length.field_8 = 0
                stor28.length.field_184 = 1557124201727635974510
                idx = 0
                while (uint255(stor28.length) * 0.5) + 31 / 32 > idx:
                    stor28[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if bool(stor28.length) == stor28.length.field_1 < 32:
                    revert with 0, 34
                uint8(stor28.length) = 18
                stor28.length.field_8 = 0
                stor28.length.field_184 = 1557124201727635974510
                idx = 0
                while stor28.length.field_1 + 31 / 32 > idx:
                    stor28[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            if bool(stor29.length):
                if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
                    revert with 0, 34
                uint8(stor29.length) = 12
                stor29.length.field_8 = 0
                stor29.length.field_208 = 40082403783545
                idx = 0
                while (uint255(stor29.length) * 0.5) + 31 / 32 > idx:
                    stor29[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if bool(stor29.length) == stor29.length.field_1 < 32:
                    revert with 0, 34
                uint8(stor29.length) = 12
                stor29.length.field_8 = 0
                stor29.length.field_208 = 40082403783545
                idx = 0
                while stor29.length.field_1 + 31 / 32 > idx:
                    stor29[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            if not marketingFundAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if stor21 > 0xffffffffffffffffffffffffffffffffffffffffc0588abc1a0e21b68bffffff:
                revert with 0, 17
            stor21 += 19700000000 * 10^18
            if stor20[stor18] > 0xffffffffffffffffffffffffffffffffffffffffc0588abc1a0e21b68bffffff:
                revert with 0, 17
            stor20[stor18] += 19700000000 * 10^18
            emit Transfer(19700000000 * 10^18, 0, marketingFundAddress);
            if not sub_cb31d363Address:
                revert with 0, 'ERC20: mint to the zero address'
            if stor21 > 0xffffffffffffffffffffffffffffffffffffffffdfb031a1c1dafd9eefffffff:
                revert with 0, 17
            stor21 += 10000000000 * 10^18
            if stor20[stor14] > 0xffffffffffffffffffffffffffffffffffffffffdfb031a1c1dafd9eefffffff:
                revert with 0, 17
            stor20[stor14] += 10000000000 * 10^18
            emit Transfer(10000000000 * 10^18, 0, sub_cb31d363Address);
            if not sub_d2d36131Address:
                revert with 0, 'ERC20: mint to the zero address'
            if stor21 > 0xffffffffffffffffffffffffffffffffffffffffe961bc57a14c7e55a7ffffff:
                revert with 0, 17
            stor21 += 7000000000 * 10^18
            if stor20[stor12] > 0xffffffffffffffffffffffffffffffffffffffffe961bc57a14c7e55a7ffffff:
                revert with 0, 17
            stor20[stor12] += 7000000000 * 10^18
            emit Transfer(7000000000 * 10^18, 0, sub_d2d36131Address);
            if not charityFundAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if stor21 > 0xfffffffffffffffffffffffffffffffffffffffff64e754a208e7f4947ffffff:
                revert with 0, 17
            stor21 += 3000000000 * 10^18
            if stor20[stor13] > 0xfffffffffffffffffffffffffffffffffffffffff64e754a208e7f4947ffffff:
                revert with 0, 17
            stor20[stor13] += 3000000000 * 10^18
            emit Transfer(3000000000 * 10^18, 0, charityFundAddress);
            if not this.address:
                revert with 0, 'ERC20: mint to the zero address'
            if stor21 > 0xffffffffffffffffffffffffffffffffffffffff5e70f828c946f41aafffffff:
                revert with 0, 17
            stor21 += 50000000000 * 10^18
            if stor20[address(this.address)] > 0xffffffffffffffffffffffffffffffffffffffff5e70f828c946f41aafffffff:
                revert with 0, 17
            stor20[address(this.address)] += 50000000000 * 10^18
            emit Transfer(50000000000 * 10^18, 0, this.address);
            if not sub_f68d8534Address:
                revert with 0, 'ERC20: mint to the zero address'
            if stor21 > 0xfffffffffffffffffffffffffffffffffffffffff07d88769a7d98753fffffff:
                revert with 0, 17
            stor21 += 4800000000 * 10^18
            if stor20[stor16] > 0xfffffffffffffffffffffffffffffffffffffffff07d88769a7d98753fffffff:
                revert with 0, 17
            stor20[stor16] += 4800000000 * 10^18
            emit Transfer(4800000000 * 10^18, 0, sub_f68d8534Address);
            if not sub_b3aaaf28Address:
                revert with 0, 'ERC20: mint to the zero address'
            if stor21 > 0xffffffffffffffffffffffffffffffffffffffffee3a81b291053eb103ffffff:
                revert with 0, 17
            stor21 += 5500000000 * 10^18
            if stor20[stor15] > 0xffffffffffffffffffffffffffffffffffffffffee3a81b291053eb103ffffff:
                revert with 0, 17
            stor20[stor15] += 5500000000 * 10^18
            emit Transfer(5500000000 * 10^18, 0, sub_b3aaaf28Address);
            maxSupply = 100000000000 * 10^18
            if stor21 != 100000000000 * 10^18:
                revert with 0, 'tipsy: not all supply minted'
            maxTxAmount = stor21 / 200
            _rTotal = 10^18
            sub_b28bc466Address = address(arg2)
            stor25 = address(arg2)
            taxCollectorAddress = address(arg10)
            stor7[address(arg10)] = 1
            stor6[stor30] = 1
            stor6[stor8] = 1
            stor7[stor8] = 0
            stor7[this.address] = 1
            stor6[this.address] = 1
            stor7[address(stor0.field_0)] = 1
            stor6[address(stor0.field_0)] = 1
            stor7[stor12] = 1
            stor6[stor12] = 1
            stor7[stor13] = 1
            stor6[stor13] = 1
            stor7[stor14] = 1
            stor6[stor14] = 1
            stor7[stor15] = 1
            stor6[stor15] = 1
            stor7[stor16] = 1
            stor6[stor16] = 1
            stor7[stor17] = 1
            stor6[stor17] = 1
            stor7[stor18] = 1
            stor6[stor18] = 1
            mem[2432 len 64] = call.data[calldata.size len 64]
            stor27.length = 2
            s = 0
            idx = 2432
            while 2496 > idx:
                stor27[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while stor27.length > idx:
                stor27[idx].field_0 = 0
                idx = idx + 1
                continue 
            if 0 >= stor27.length:
                revert with 0, 50
            address(stor27.field_0) = this.address
            staticcall stor25.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= stor27.length:
                revert with 0, 50
            address(stor27.field_256) = ext_call.return_data[12 len 20]
            if not uint8(stor0.field_168):
                uint8(stor0.field_168) = 0
    if unknown_0x4e6fd6c4(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x790ca413(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x790ca413(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return launchTime
            if unknown_0x85ecafd7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor7[arg1])
            if uint32(call.func_hash) >> 224 != unknown_0x863a03e0(?????):
                if unknown_0x8c0b5e22(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return maxTxAmount
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0x8e09ef65(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return 32, 2099, code.data[13097 len 2099], mem[2259 len 13] >> 16536, 0
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not eth.balance(this.address):
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
            require return_data.size >= 32
            if ext_call.return_data[0]:
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x4e6fd6c4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 57005
            if uint32(call.func_hash) >> 224 != unknown_0x51c6590a(?????):
                if unknown_0x600c7351(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if stor21 and _rTotal > -1 / stor21:
                        revert with 0, 17
                    if stor21 * _rTotal / 10^18 < arg1:
                        revert with 0, 17
                    if stor21 and _rTotal > -1 / stor21:
                        revert with 0, 17
                    if stor21 * _rTotal / 10^18 and _rTotal > -1 / stor21 * _rTotal / 10^18:
                        revert with 0, 17
                    if not (stor21 * _rTotal / 10^18) - arg1:
                        revert with 0, 18
                    return (stor21 * _rTotal / 10^18 * _rTotal / (stor21 * _rTotal / 10^18) - arg1)
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor20[address(arg1)] and _rTotal > -1 / stor20[address(arg1)]:
                        revert with 0, 17
                    return (stor20[address(arg1)] * _rTotal / 10^18)
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    require unknown_0x77e1a9fc(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return charityFundAddress
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                uint16(stor0.field_0) = 57005
                Mask(144, 0, stor0.field_16) = 0
                emit OwnershipTransferred(owner, 57005);
            else:
                require calldata.size - 4 >= 32
                if msg.value <= 10^16:
                    revert with 0, 'Add more than 200 BNB ($100,000)!'
                if 100 > !block.timestamp:
                    revert with 0, 17
                if arg1 <= block.timestamp + 100:
                    revert with 0, '_launchTime too soon!'
                staticcall stor25.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall stor25.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(this.address), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                pancakePairAddress = ext_call.return_data[12 len 20]
                if 43800 * 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                require ext_code.size(lpLockerAddress)
                call lpLockerAddress.initialize(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args pancakePairAddress, address(this.address), block.timestamp + (43800 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not sub_b28bc466Address:
                    revert with 0, 'ERC20: approve to the zero address'
                if not _rTotal:
                    revert with 0, 18
                stor24[address(this.address)][stor8] = 0x8c213d9da502de454526f422cc3400000000000 / _rTotal
                emit Approval(50000000000 * 10^18, this.address, sub_b28bc466Address);
                stor6[stor9] = 1
                call stor25.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(this.address), 50000000000 * 10^18, 1, 1, lpLockerAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                launchTime = arg1
    if unknown_0x313ce567(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 18
        if unknown_0x372c12b1(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return bool(stor6[arg1])
        if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
            if unknown_0x39e77eeb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor6[address(arg1)] = 1
                emit 0xf0d6ae80: address(arg1)
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x437823ec(?????):
                    require unknown_0x45e0b9d4(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return _rTotal
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor7[address(arg1)] = 1
                emit ExcludedFromFee(address(arg1));
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor24[msg.sender][address(arg1)] and _rTotal > -1 / stor24[msg.sender][address(arg1)]:
            revert with 0, 17
        if stor24[msg.sender][address(arg1)] * _rTotal / 10^18 > !arg2:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: approve from the zero address'
        if not address(arg1):
            revert with 0, 'ERC20: approve to the zero address'
        if (stor24[msg.sender][address(arg1)] * _rTotal / 10^18) + arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not _rTotal:
            revert with 0, 18
        stor24[address(msg.sender)][address(arg1)] = (10^18 * stor24[msg.sender][address(arg1)] * _rTotal / 10^18) + (10^18 * arg2) / _rTotal
        emit Approval(((stor24[msg.sender][address(arg1)] * _rTotal / 10^18) + arg2), msg.sender, address(arg1));
    else:
        if lpLocker() == uint32(call.func_hash) >> 224:
            require not msg.value
            return lpLockerAddress
        if name() == uint32(call.func_hash) >> 224:
            require not msg.value
            if bool(stor28.length):
                if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor28.length):
                    if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor28.length):
                        if 31 < uint255(stor28.length) * 0.5:
                            mem[160] = uint256(stor28.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor28.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor28[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor28.length), data=mem[160 len ceil32(uint255(stor28.length) * 0.5)])
                        mem[160] = 256 * stor28.length.field_8
                else:
                    if bool(stor28.length) == stor28.length.field_1 < 32:
                        revert with 0, 34
                    if stor28.length.field_1:
                        if 31 < stor28.length.field_1:
                            mem[160] = uint256(stor28.field_0)
                            idx = 160
                            s = 0
                            while stor28.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor28[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor28.length), data=mem[160 len ceil32(uint255(stor28.length) * 0.5)])
                        mem[160] = 256 * stor28.length.field_8
                mem[ceil32(uint255(stor28.length) * 0.5) + 224 len ceil32(uint255(stor28.length) * 0.5)] = mem[160 len ceil32(uint255(stor28.length) * 0.5)]
                if ceil32(uint255(stor28.length) * 0.5) > uint255(stor28.length) * 0.5:
                    mem[ceil32(uint255(stor28.length) * 0.5) + (uint255(stor28.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor28.length), data=mem[160 len ceil32(uint255(stor28.length) * 0.5)], mem[(2 * ceil32(uint255(stor28.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor28.length) * 0.5)]), 
            if bool(stor28.length) == stor28.length.field_1 < 32:
                revert with 0, 34
            if bool(stor28.length):
                if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor28.length):
                    if 31 < uint255(stor28.length) * 0.5:
                        mem[160] = uint256(stor28.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor28.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor28[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor28.length % 128, data=mem[160 len ceil32(stor28.length.field_1)])
                    mem[160] = 256 * stor28.length.field_8
            else:
                if bool(stor28.length) == stor28.length.field_1 < 32:
                    revert with 0, 34
                if stor28.length.field_1:
                    if 31 < stor28.length.field_1:
                        mem[160] = uint256(stor28.field_0)
                        idx = 160
                        s = 0
                        while stor28.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor28[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor28.length % 128, data=mem[160 len ceil32(stor28.length.field_1)])
                    mem[160] = 256 * stor28.length.field_8
            mem[ceil32(stor28.length.field_1) + 224 len ceil32(stor28.length.field_1)] = mem[160 len ceil32(stor28.length.field_1)]
            if ceil32(stor28.length.field_1) > stor28.length.field_1:
                mem[ceil32(stor28.length.field_1) + stor28.length.field_1 + 224] = 0
            return Array(len=stor28.length % 128, data=mem[160 len ceil32(stor28.length.field_1)], mem[(2 * ceil32(stor28.length.field_1)) + 224 len 2 * ceil32(stor28.length.field_1)]), 
        if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if ext_code.size(address(arg1)):
                if not stor6[address(arg1)]:
                    revert with 0, 'tipsyCoin: Bots and Contracts b&'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not _rTotal:
                revert with 0, 18
            stor24[address(msg.sender)][address(arg1)] = 10^18 * arg2 / _rTotal
            emit Approval(arg2, msg.sender, address(arg1));
        else:
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if stor21 and _rTotal > -1 / stor21:
                    revert with 0, 17
                return (stor21 * _rTotal / 10^18)
            require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not ext_code.size(address(arg2)):
                if stor7[address(arg1)]:
                    if not address(arg1):
                        revert with 0, 'tipsy: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'tipsy: transfer to the zero address, use _reflect'
                    if 57005 == address(arg2):
                        revert with 0, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
                    if 6 > !launchTime:
                        revert with 0, 17
                    if block.timestamp <= launchTime + 6:
                        revert with 0, 'tipsy: token not tradable yet! Please wait'
                    if not stor7[address(arg1)]:
                        if not stor7[address(arg2)]:
                            if arg3 > maxTxAmount:
                                revert with 0, 'tipsy: transfer amount exceeds maxTxAmount.'
                    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    if stor20[address(arg1)] < 10^18 * arg3 / _rTotal:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    stor20[address(arg1)] -= 10^18 * arg3 / _rTotal
                    if stor20[address(arg2)] > !(10^18 * arg3 / _rTotal):
                        revert with 0, 17
                    stor20[address(arg2)] += 10^18 * arg3 / _rTotal
                    emit Transfer(arg3, address(arg1), address(arg2));
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if stor24[address(arg1)][msg.sender] * _rTotal / 10^18 < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    if (stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    stor24[address(arg1)][address(msg.sender)] = (10^18 * stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - (10^18 * arg3) / _rTotal
                    emit Approval(((stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3), address(arg1), msg.sender);
                else:
                    if arg3 and sub_d5f3c0e3 > -1 / arg3:
                        revert with 0, 17
                    if not stor26:
                        revert with 0, 18
                    if arg3 and sub_c608c29f > -1 / arg3:
                        revert with 0, 17
                    if not stor26:
                        revert with 0, 18
                    if arg3 and sub_fc89f064 > -1 / arg3:
                        revert with 0, 17
                    if not stor26:
                        revert with 0, 18
                    if arg3 * sub_d5f3c0e3 / stor26 / 10 > !(arg3 * sub_c608c29f / stor26 / 10):
                        revert with 0, 17
                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0:
                        if arg3 * sub_d5f3c0e3 / stor26 / 10 > !(arg3 * sub_c608c29f / stor26 / 10):
                            revert with 0, 17
                        mem[128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[132] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)
                        mem[164] = 64
                        mem[196] = stor27.length
                        mem[0] = 27
                        idx = 0
                        s = 0
                        t = 228
                        while idx < stor27.length:
                            mem[t] = stor27[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        staticcall stor25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), Array(len=stor27.length, data=mem[228 len 32 * stor27.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _1927 = mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32
                        require mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 <= test266151307()
                        require mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 159 < return_data.size + 128
                        _1937 = mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]
                        if mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]) + 129
                        mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]
                        require (32 * _1937) + _1927 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 160 len ceil32(32 * _1937)] = mem[_1927 + 160 len ceil32(32 * _1937)]
                        if 1 >= _1937:
                            revert with 0, 50
                        _3713 = mem[ceil32(return_data.size) + 192]
                        if arg3 * sub_d5f3c0e3 / stor26 / 10 > !(arg3 * sub_c608c29f / stor26 / 10):
                            revert with 0, 17
                        if mem[ceil32(return_data.size) + 192] < 10^9:
                            if not address(arg1):
                                revert with 0, 'ERC20: burn from the zero address'
                            if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) <= 0:
                                revert with 0, 'tipsy: burn amount must be greater than zero'
                            if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not _rTotal:
                                revert with 0, 18
                            if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                            stor8B9E += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                            if stor21 < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                revert with 0, 17
                            stor21 -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                            emit Transfer(((arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)), address(arg1), 57005);
                            if stor21 and _rTotal > -1 / stor21:
                                revert with 0, 17
                            if stor21 and _rTotal > -1 / stor21:
                                revert with 0, 17
                            if stor21 * _rTotal / 10^18 > !((arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)):
                                revert with 0, 17
                            emit Burned((stor21 * _rTotal / 10^18) + (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), stor21 * _rTotal / 10^18);
                        else:
                            if not address(arg1):
                                revert with 0, 'tipsy: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'tipsy: transfer to the zero address, use _reflect'
                            if 57005 == this.address:
                                revert with 0, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
                            if 6 > !launchTime:
                                revert with 0, 17
                            if block.timestamp <= launchTime + 6:
                                revert with 0, 'tipsy: token not tradable yet! Please wait'
                            if stor7[address(arg1)]:
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not _rTotal:
                                    revert with 0, 18
                                if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                if stor20[this.address] > !((10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal):
                                    revert with 0, 17
                                stor20[this.address] += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not sub_b28bc466Address:
                                    revert with 0, 'ERC20: approve to the zero address'
                                if (100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not _rTotal:
                                    revert with 0, 18
                                mem[32] = sha3(address(this.address), 24)
                                stor24[address(this.address)][stor8] = (100 * 10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * 10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                emit Approval(((100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10)), this.address, sub_b28bc466Address);
                                if sub_d5f3c0e3 > !sub_c608c29f:
                                    revert with 0, 17
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) and sub_c608c29f > -1 / (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10):
                                    revert with 0, 17
                                if not sub_d5f3c0e3 + sub_c608c29f:
                                    revert with 0, 18
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) < (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f)
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor27.length
                                mem[0] = 27
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor27.length:
                                    mem[t] = stor27[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = buyBackFundAddress
                                mem[mem[64] + 132] = block.timestamp
                                call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f), 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), buyBackFundAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5557 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5947 = mem[_5557]
                                require mem[_5557] <= test266151307()
                                require _5557 + mem[_5557] + 31 < _5557 + return_data.size
                                _5969 = mem[_5557 + mem[_5557]]
                                if mem[_5557 + mem[_5557]] > test266151307():
                                    revert with 0, 65
                                if _5557 + ceil32(return_data.size) + ceil32(32 * mem[_5557 + mem[_5557]]) + 1 > test266151307() or ceil32(32 * mem[_5557 + mem[_5557]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _5557 + ceil32(return_data.size) + ceil32(32 * mem[_5557 + mem[_5557]]) + 1
                                mem[_5557 + ceil32(return_data.size)] = _5969
                                require (32 * _5969) + _5947 + 32 <= return_data.size
                                mem[_5557 + ceil32(return_data.size) + 32 len ceil32(32 * _5969)] = mem[_5557 + _5947 + 32 len ceil32(32 * _5969)]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor27.length
                                mem[0] = 27
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor27.length:
                                    mem[t] = stor27[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = taxCollectorAddress
                                mem[mem[64] + 132] = block.timestamp
                                call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f, 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), taxCollectorAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8323 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8323] <= test266151307()
                                require _8323 + mem[_8323] + 31 < _8323 + return_data.size
                                if mem[_8323 + mem[_8323]] > test266151307():
                                    revert with 0, 65
                                if _8323 + ceil32(return_data.size) + ceil32(32 * mem[_8323 + mem[_8323]]) + 1 > test266151307() or ceil32(32 * mem[_8323 + mem[_8323]]) + 1 < 0:
                                    revert with 0, 65
                                require (32 * mem[_8323 + mem[_8323]]) + mem[_8323] + 32 <= return_data.size
                            else:
                                if stor7[address(this.address)]:
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if stor20[this.address] > !((10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal):
                                        revert with 0, 17
                                    stor20[this.address] += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not sub_b28bc466Address:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    if (100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    mem[32] = sha3(address(this.address), 24)
                                    stor24[address(this.address)][stor8] = (100 * 10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * 10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    emit Approval(((100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10)), this.address, sub_b28bc466Address);
                                    if sub_d5f3c0e3 > !sub_c608c29f:
                                        revert with 0, 17
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) and sub_c608c29f > -1 / (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10):
                                        revert with 0, 17
                                    if not sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 18
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) < (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f)
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = buyBackFundAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f), 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), buyBackFundAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5558 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5948 = mem[_5558]
                                    require mem[_5558] <= test266151307()
                                    require _5558 + mem[_5558] + 31 < _5558 + return_data.size
                                    _5970 = mem[_5558 + mem[_5558]]
                                    if mem[_5558 + mem[_5558]] > test266151307():
                                        revert with 0, 65
                                    if _5558 + ceil32(return_data.size) + ceil32(32 * mem[_5558 + mem[_5558]]) + 1 > test266151307() or ceil32(32 * mem[_5558 + mem[_5558]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _5558 + ceil32(return_data.size) + ceil32(32 * mem[_5558 + mem[_5558]]) + 1
                                    mem[_5558 + ceil32(return_data.size)] = _5970
                                    require (32 * _5970) + _5948 + 32 <= return_data.size
                                    mem[_5558 + ceil32(return_data.size) + 32 len ceil32(32 * _5970)] = mem[_5558 + _5948 + 32 len ceil32(32 * _5970)]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = taxCollectorAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f, 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), taxCollectorAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8324 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8324] <= test266151307()
                                    require _8324 + mem[_8324] + 31 < _8324 + return_data.size
                                    if mem[_8324 + mem[_8324]] > test266151307():
                                        revert with 0, 65
                                    if _8324 + ceil32(return_data.size) + ceil32(32 * mem[_8324 + mem[_8324]]) + 1 > test266151307() or ceil32(32 * mem[_8324 + mem[_8324]]) + 1 < 0:
                                        revert with 0, 65
                                    require (32 * mem[_8324 + mem[_8324]]) + mem[_8324] + 32 <= return_data.size
                                else:
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > maxTxAmount:
                                        revert with 0, 'tipsy: transfer amount exceeds maxTxAmount.'
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if stor20[this.address] > !((10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal):
                                        revert with 0, 17
                                    stor20[this.address] += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not sub_b28bc466Address:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    if (100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    mem[32] = sha3(address(this.address), 24)
                                    stor24[address(this.address)][stor8] = (100 * 10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * 10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    emit Approval(((100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10)), this.address, sub_b28bc466Address);
                                    if sub_d5f3c0e3 > !sub_c608c29f:
                                        revert with 0, 17
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) and sub_c608c29f > -1 / (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10):
                                        revert with 0, 17
                                    if not sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 18
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) < (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f)
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = buyBackFundAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f), 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), buyBackFundAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5559 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5949 = mem[_5559]
                                    require mem[_5559] <= test266151307()
                                    require _5559 + mem[_5559] + 31 < _5559 + return_data.size
                                    _5971 = mem[_5559 + mem[_5559]]
                                    if mem[_5559 + mem[_5559]] > test266151307():
                                        revert with 0, 65
                                    if _5559 + ceil32(return_data.size) + ceil32(32 * mem[_5559 + mem[_5559]]) + 1 > test266151307() or ceil32(32 * mem[_5559 + mem[_5559]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _5559 + ceil32(return_data.size) + ceil32(32 * mem[_5559 + mem[_5559]]) + 1
                                    mem[_5559 + ceil32(return_data.size)] = _5971
                                    require (32 * _5971) + _5949 + 32 <= return_data.size
                                    mem[_5559 + ceil32(return_data.size) + 32 len ceil32(32 * _5971)] = mem[_5559 + _5949 + 32 len ceil32(32 * _5971)]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = taxCollectorAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f, 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), taxCollectorAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8325 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8325] <= test266151307()
                                    require _8325 + mem[_8325] + 31 < _8325 + return_data.size
                                    if mem[_8325 + mem[_8325]] > test266151307():
                                        revert with 0, 65
                                    if _8325 + ceil32(return_data.size) + ceil32(32 * mem[_8325 + mem[_8325]]) + 1 > test266151307() or ceil32(32 * mem[_8325 + mem[_8325]]) + 1 < 0:
                                        revert with 0, 65
                                    require (32 * mem[_8325 + mem[_8325]]) + mem[_8325] + 32 <= return_data.size
                            emit 0xaeaccb67: (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), _3713
                    if arg3 < arg3 * sub_d5f3c0e3 / stor26 / 10:
                        revert with 0, 17
                    if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) < arg3 * sub_c608c29f / stor26 / 10:
                        revert with 0, 17
                    if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) < arg3 * sub_fc89f064 / stor26 / 10:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'tipsy: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'tipsy: transfer to the zero address, use _reflect'
                    if 57005 == address(arg2):
                        revert with 0, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
                    if 6 > !launchTime:
                        revert with 0, 17
                    if block.timestamp <= launchTime + 6:
                        revert with 0, 'tipsy: token not tradable yet! Please wait'
                    if not stor7[address(arg1)]:
                        if not stor7[address(arg2)]:
                            if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10) > maxTxAmount:
                                revert with 0, 'tipsy: transfer amount exceeds maxTxAmount.'
                    if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    if stor20[address(arg1)] < (10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    stor20[address(arg1)] -= (10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal
                    if stor20[address(arg2)] > !((10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal):
                        revert with 0, 17
                    stor20[address(arg2)] += (10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal
                    if arg3 * sub_fc89f064 / stor26 / 10:
                        if not address(arg1):
                            revert with 0, 'tipsy: reflect from the zero address'
                        if arg3 * sub_fc89f064 / stor26 / 10 <= 0:
                            revert with 0, 'tipsy: reflect amount must be greater than zero'
                        if arg3 * sub_fc89f064 / stor26 / 10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not _rTotal:
                            revert with 0, 18
                        if stor20[address(arg1)] < 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal:
                            revert with 0, 'tipsy: reflect amount exceeds balance'
                        stor20[address(arg1)] -= 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal
                        if stor21 and _rTotal > -1 / stor21:
                            revert with 0, 17
                        if stor21 * _rTotal / 10^18 < arg3 * sub_fc89f064 / stor26 / 10:
                            revert with 0, 17
                        if stor21 and _rTotal > -1 / stor21:
                            revert with 0, 17
                        if stor21 * _rTotal / 10^18 and _rTotal > -1 / stor21 * _rTotal / 10^18:
                            revert with 0, 17
                        if not (stor21 * _rTotal / 10^18) - (arg3 * sub_fc89f064 / stor26 / 10):
                            revert with 0, 18
                        _rTotal = stor21 * _rTotal / 10^18 * _rTotal / (stor21 * _rTotal / 10^18) - (arg3 * sub_fc89f064 / stor26 / 10)
                        if stor21 < 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal:
                            revert with 0, 17
                        stor21 -= 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal
                        emit 0xde80b670: _rTotal, arg3 * sub_fc89f064 / stor26 / 10, _rTotal
                    emit Transfer((arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10)), address(arg1), address(arg2));
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if stor24[address(arg1)][msg.sender] * _rTotal / 10^18 < arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10):
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    if (stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3 + (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) + (arg3 * sub_fc89f064 / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    stor24[address(arg1)][address(msg.sender)] = (10^18 * stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - (10^18 * arg3) + (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) + (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal
                    emit Approval(((stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3 + (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) + (arg3 * sub_fc89f064 / stor26 / 10)), address(arg1), msg.sender);
            else:
                if not stor6[address(arg2)]:
                    revert with 0, 'tipsyCoin: Bots and Contracts b&'
                if stor7[address(arg1)]:
                    if not address(arg1):
                        revert with 0, 'tipsy: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'tipsy: transfer to the zero address, use _reflect'
                    if 57005 == address(arg2):
                        revert with 0, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
                    if 6 > !launchTime:
                        revert with 0, 17
                    if block.timestamp <= launchTime + 6:
                        revert with 0, 'tipsy: token not tradable yet! Please wait'
                    if not stor7[address(arg1)]:
                        if not stor7[address(arg2)]:
                            if arg3 > maxTxAmount:
                                revert with 0, 'tipsy: transfer amount exceeds maxTxAmount.'
                    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    if stor20[address(arg1)] < 10^18 * arg3 / _rTotal:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    stor20[address(arg1)] -= 10^18 * arg3 / _rTotal
                    if stor20[address(arg2)] > !(10^18 * arg3 / _rTotal):
                        revert with 0, 17
                    stor20[address(arg2)] += 10^18 * arg3 / _rTotal
                    emit Transfer(arg3, address(arg1), address(arg2));
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if stor24[address(arg1)][msg.sender] * _rTotal / 10^18 < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    if (stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    stor24[address(arg1)][address(msg.sender)] = (10^18 * stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - (10^18 * arg3) / _rTotal
                    emit Approval(((stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3), address(arg1), msg.sender);
                else:
                    if arg3 and sub_d5f3c0e3 > -1 / arg3:
                        revert with 0, 17
                    if not stor26:
                        revert with 0, 18
                    if arg3 and sub_c608c29f > -1 / arg3:
                        revert with 0, 17
                    if not stor26:
                        revert with 0, 18
                    if arg3 and sub_fc89f064 > -1 / arg3:
                        revert with 0, 17
                    if not stor26:
                        revert with 0, 18
                    if arg3 * sub_d5f3c0e3 / stor26 / 10 > !(arg3 * sub_c608c29f / stor26 / 10):
                        revert with 0, 17
                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0:
                        if arg3 * sub_d5f3c0e3 / stor26 / 10 > !(arg3 * sub_c608c29f / stor26 / 10):
                            revert with 0, 17
                        mem[128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[132] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)
                        mem[164] = 64
                        mem[196] = stor27.length
                        mem[0] = 27
                        idx = 0
                        s = 0
                        t = 228
                        while idx < stor27.length:
                            mem[t] = stor27[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        staticcall stor25.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), Array(len=stor27.length, data=mem[228 len 32 * stor27.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _1928 = mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32
                        require mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 <= test266151307()
                        require mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 159 < return_data.size + 128
                        _1938 = mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]
                        if mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]) + 129
                        mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)) >> 32 + 128]
                        require (32 * _1938) + _1928 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 160 len ceil32(32 * _1938)] = mem[_1928 + 160 len ceil32(32 * _1938)]
                        if 1 >= _1938:
                            revert with 0, 50
                        _3714 = mem[ceil32(return_data.size) + 192]
                        if arg3 * sub_d5f3c0e3 / stor26 / 10 > !(arg3 * sub_c608c29f / stor26 / 10):
                            revert with 0, 17
                        if mem[ceil32(return_data.size) + 192] < 10^9:
                            if not address(arg1):
                                revert with 0, 'ERC20: burn from the zero address'
                            if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) <= 0:
                                revert with 0, 'tipsy: burn amount must be greater than zero'
                            if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not _rTotal:
                                revert with 0, 18
                            if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                            stor8B9E += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                            if stor21 < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                revert with 0, 17
                            stor21 -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                            emit Transfer(((arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)), address(arg1), 57005);
                            if stor21 and _rTotal > -1 / stor21:
                                revert with 0, 17
                            if stor21 and _rTotal > -1 / stor21:
                                revert with 0, 17
                            if stor21 * _rTotal / 10^18 > !((arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10)):
                                revert with 0, 17
                            emit Burned((stor21 * _rTotal / 10^18) + (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), stor21 * _rTotal / 10^18);
                        else:
                            if not address(arg1):
                                revert with 0, 'tipsy: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'tipsy: transfer to the zero address, use _reflect'
                            if 57005 == this.address:
                                revert with 0, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
                            if 6 > !launchTime:
                                revert with 0, 17
                            if block.timestamp <= launchTime + 6:
                                revert with 0, 'tipsy: token not tradable yet! Please wait'
                            if stor7[address(arg1)]:
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not _rTotal:
                                    revert with 0, 18
                                if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                if stor20[this.address] > !((10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal):
                                    revert with 0, 17
                                stor20[this.address] += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not sub_b28bc466Address:
                                    revert with 0, 'ERC20: approve to the zero address'
                                if (100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not _rTotal:
                                    revert with 0, 18
                                mem[32] = sha3(address(this.address), 24)
                                stor24[address(this.address)][stor8] = (100 * 10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * 10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                emit Approval(((100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10)), this.address, sub_b28bc466Address);
                                if sub_d5f3c0e3 > !sub_c608c29f:
                                    revert with 0, 17
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) and sub_c608c29f > -1 / (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10):
                                    revert with 0, 17
                                if not sub_d5f3c0e3 + sub_c608c29f:
                                    revert with 0, 18
                                if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) < (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f:
                                    revert with 0, 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f)
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor27.length
                                mem[0] = 27
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor27.length:
                                    mem[t] = stor27[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = buyBackFundAddress
                                mem[mem[64] + 132] = block.timestamp
                                call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f), 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), buyBackFundAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5560 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5950 = mem[_5560]
                                require mem[_5560] <= test266151307()
                                require _5560 + mem[_5560] + 31 < _5560 + return_data.size
                                _5972 = mem[_5560 + mem[_5560]]
                                if mem[_5560 + mem[_5560]] > test266151307():
                                    revert with 0, 65
                                if _5560 + ceil32(return_data.size) + ceil32(32 * mem[_5560 + mem[_5560]]) + 1 > test266151307() or ceil32(32 * mem[_5560 + mem[_5560]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _5560 + ceil32(return_data.size) + ceil32(32 * mem[_5560 + mem[_5560]]) + 1
                                mem[_5560 + ceil32(return_data.size)] = _5972
                                require (32 * _5972) + _5950 + 32 <= return_data.size
                                mem[_5560 + ceil32(return_data.size) + 32 len ceil32(32 * _5972)] = mem[_5560 + _5950 + 32 len ceil32(32 * _5972)]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor27.length
                                mem[0] = 27
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor27.length:
                                    mem[t] = stor27[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = taxCollectorAddress
                                mem[mem[64] + 132] = block.timestamp
                                call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f, 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), taxCollectorAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8326 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8326] <= test266151307()
                                require _8326 + mem[_8326] + 31 < _8326 + return_data.size
                                if mem[_8326 + mem[_8326]] > test266151307():
                                    revert with 0, 65
                                if _8326 + ceil32(return_data.size) + ceil32(32 * mem[_8326 + mem[_8326]]) + 1 > test266151307() or ceil32(32 * mem[_8326 + mem[_8326]]) + 1 < 0:
                                    revert with 0, 65
                                require (32 * mem[_8326 + mem[_8326]]) + mem[_8326] + 32 <= return_data.size
                            else:
                                if stor7[address(this.address)]:
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if stor20[this.address] > !((10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal):
                                        revert with 0, 17
                                    stor20[this.address] += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not sub_b28bc466Address:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    if (100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    mem[32] = sha3(address(this.address), 24)
                                    stor24[address(this.address)][stor8] = (100 * 10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * 10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    emit Approval(((100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10)), this.address, sub_b28bc466Address);
                                    if sub_d5f3c0e3 > !sub_c608c29f:
                                        revert with 0, 17
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) and sub_c608c29f > -1 / (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10):
                                        revert with 0, 17
                                    if not sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 18
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) < (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f)
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = buyBackFundAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f), 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), buyBackFundAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5561 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5951 = mem[_5561]
                                    require mem[_5561] <= test266151307()
                                    require _5561 + mem[_5561] + 31 < _5561 + return_data.size
                                    _5973 = mem[_5561 + mem[_5561]]
                                    if mem[_5561 + mem[_5561]] > test266151307():
                                        revert with 0, 65
                                    if _5561 + ceil32(return_data.size) + ceil32(32 * mem[_5561 + mem[_5561]]) + 1 > test266151307() or ceil32(32 * mem[_5561 + mem[_5561]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _5561 + ceil32(return_data.size) + ceil32(32 * mem[_5561 + mem[_5561]]) + 1
                                    mem[_5561 + ceil32(return_data.size)] = _5973
                                    require (32 * _5973) + _5951 + 32 <= return_data.size
                                    mem[_5561 + ceil32(return_data.size) + 32 len ceil32(32 * _5973)] = mem[_5561 + _5951 + 32 len ceil32(32 * _5973)]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = taxCollectorAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f, 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), taxCollectorAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8327 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8327] <= test266151307()
                                    require _8327 + mem[_8327] + 31 < _8327 + return_data.size
                                    if mem[_8327 + mem[_8327]] > test266151307():
                                        revert with 0, 65
                                    if _8327 + ceil32(return_data.size) + ceil32(32 * mem[_8327 + mem[_8327]]) + 1 > test266151307() or ceil32(32 * mem[_8327 + mem[_8327]]) + 1 < 0:
                                        revert with 0, 65
                                    require (32 * mem[_8327 + mem[_8327]]) + mem[_8327] + 32 <= return_data.size
                                else:
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > maxTxAmount:
                                        revert with 0, 'tipsy: transfer amount exceeds maxTxAmount.'
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    if stor20[address(arg1)] < (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    stor20[address(arg1)] -= (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if stor20[this.address] > !((10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal):
                                        revert with 0, 17
                                    stor20[this.address] += (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not sub_b28bc466Address:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    if (100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    if not _rTotal:
                                        revert with 0, 18
                                    mem[32] = sha3(address(this.address), 24)
                                    stor24[address(this.address)][stor8] = (100 * 10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * 10^18 * arg3 * sub_c608c29f / stor26 / 10) / _rTotal
                                    emit Approval(((100 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (100 * arg3 * sub_c608c29f / stor26 / 10)), this.address, sub_b28bc466Address);
                                    if sub_d5f3c0e3 > !sub_c608c29f:
                                        revert with 0, 17
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) and sub_c608c29f > -1 / (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10):
                                        revert with 0, 17
                                    if not sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 18
                                    if (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) < (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f:
                                        revert with 0, 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f)
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = buyBackFundAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) - ((arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f), 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), buyBackFundAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5562 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5952 = mem[_5562]
                                    require mem[_5562] <= test266151307()
                                    require _5562 + mem[_5562] + 31 < _5562 + return_data.size
                                    _5974 = mem[_5562 + mem[_5562]]
                                    if mem[_5562 + mem[_5562]] > test266151307():
                                        revert with 0, 65
                                    if _5562 + ceil32(return_data.size) + ceil32(32 * mem[_5562 + mem[_5562]]) + 1 > test266151307() or ceil32(32 * mem[_5562 + mem[_5562]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _5562 + ceil32(return_data.size) + ceil32(32 * mem[_5562 + mem[_5562]]) + 1
                                    mem[_5562 + ceil32(return_data.size)] = _5974
                                    require (32 * _5974) + _5952 + 32 <= return_data.size
                                    mem[_5562 + ceil32(return_data.size) + 32 len ceil32(32 * _5974)] = mem[_5562 + _5952 + 32 len ceil32(32 * _5974)]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor27.length
                                    mem[0] = 27
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor27.length:
                                        mem[t] = stor27[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = taxCollectorAddress
                                    mem[mem[64] + 132] = block.timestamp
                                    call stor25.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (arg3 * sub_d5f3c0e3 / stor26 / 10 * sub_c608c29f) + (arg3 * sub_c608c29f / stor26 / 10 * sub_c608c29f) / sub_d5f3c0e3 + sub_c608c29f, 1, Array(len=stor27.length, data=mem[mem[64] + 196 len 32 * stor27.length]), taxCollectorAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8328 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8328] <= test266151307()
                                    require _8328 + mem[_8328] + 31 < _8328 + return_data.size
                                    if mem[_8328 + mem[_8328]] > test266151307():
                                        revert with 0, 65
                                    if _8328 + ceil32(return_data.size) + ceil32(32 * mem[_8328 + mem[_8328]]) + 1 > test266151307() or ceil32(32 * mem[_8328 + mem[_8328]]) + 1 < 0:
                                        revert with 0, 65
                                    require (32 * mem[_8328 + mem[_8328]]) + mem[_8328] + 32 <= return_data.size
                            emit 0xaeaccb67: (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10), _3714
                    if arg3 < arg3 * sub_d5f3c0e3 / stor26 / 10:
                        revert with 0, 17
                    if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) < arg3 * sub_c608c29f / stor26 / 10:
                        revert with 0, 17
                    if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) < arg3 * sub_fc89f064 / stor26 / 10:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'tipsy: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'tipsy: transfer to the zero address, use _reflect'
                    if 57005 == address(arg2):
                        revert with 0, 'tipsy: transfer to the DEAD_ADDRESS, use _burn'
                    if 6 > !launchTime:
                        revert with 0, 17
                    if block.timestamp <= launchTime + 6:
                        revert with 0, 'tipsy: token not tradable yet! Please wait'
                    if not stor7[address(arg1)]:
                        if not stor7[address(arg2)]:
                            if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10) > maxTxAmount:
                                revert with 0, 'tipsy: transfer amount exceeds maxTxAmount.'
                    if arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    if stor20[address(arg1)] < (10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    stor20[address(arg1)] -= (10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal
                    if stor20[address(arg2)] > !((10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal):
                        revert with 0, 17
                    stor20[address(arg2)] += (10^18 * arg3) - (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) - (10^18 * arg3 * sub_c608c29f / stor26 / 10) - (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal
                    if arg3 * sub_fc89f064 / stor26 / 10:
                        if not address(arg1):
                            revert with 0, 'tipsy: reflect from the zero address'
                        if arg3 * sub_fc89f064 / stor26 / 10 <= 0:
                            revert with 0, 'tipsy: reflect amount must be greater than zero'
                        if arg3 * sub_fc89f064 / stor26 / 10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not _rTotal:
                            revert with 0, 18
                        if stor20[address(arg1)] < 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal:
                            revert with 0, 'tipsy: reflect amount exceeds balance'
                        stor20[address(arg1)] -= 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal
                        if stor21 and _rTotal > -1 / stor21:
                            revert with 0, 17
                        if stor21 * _rTotal / 10^18 < arg3 * sub_fc89f064 / stor26 / 10:
                            revert with 0, 17
                        if stor21 and _rTotal > -1 / stor21:
                            revert with 0, 17
                        if stor21 * _rTotal / 10^18 and _rTotal > -1 / stor21 * _rTotal / 10^18:
                            revert with 0, 17
                        if not (stor21 * _rTotal / 10^18) - (arg3 * sub_fc89f064 / stor26 / 10):
                            revert with 0, 18
                        _rTotal = stor21 * _rTotal / 10^18 * _rTotal / (stor21 * _rTotal / 10^18) - (arg3 * sub_fc89f064 / stor26 / 10)
                        if stor21 < 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal:
                            revert with 0, 17
                        stor21 -= 10^18 * arg3 * sub_fc89f064 / stor26 / 10 / _rTotal
                        emit 0xde80b670: _rTotal, arg3 * sub_fc89f064 / stor26 / 10, _rTotal
                    emit Transfer((arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10)), address(arg1), address(arg2));
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if stor24[address(arg1)][msg.sender] * _rTotal / 10^18 < arg3 - (arg3 * sub_d5f3c0e3 / stor26 / 10) - (arg3 * sub_c608c29f / stor26 / 10) - (arg3 * sub_fc89f064 / stor26 / 10):
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if stor24[address(arg1)][msg.sender] and _rTotal > -1 / stor24[address(arg1)][msg.sender]:
                        revert with 0, 17
                    if not address(arg1):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    if (stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3 + (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) + (arg3 * sub_fc89f064 / stor26 / 10) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not _rTotal:
                        revert with 0, 18
                    stor24[address(arg1)][address(msg.sender)] = (10^18 * stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - (10^18 * arg3) + (10^18 * arg3 * sub_d5f3c0e3 / stor26 / 10) + (10^18 * arg3 * sub_c608c29f / stor26 / 10) + (10^18 * arg3 * sub_fc89f064 / stor26 / 10) / _rTotal
                    emit Approval(((stor24[address(arg1)][msg.sender] * _rTotal / 10^18) - arg3 + (arg3 * sub_d5f3c0e3 / stor26 / 10) + (arg3 * sub_c608c29f / stor26 / 10) + (arg3 * sub_fc89f064 / stor26 / 10)), address(arg1), msg.sender);
    return 1
}



}

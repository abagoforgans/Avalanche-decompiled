contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferBatch(address[] arg1, uint256[] arg2)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address stor6;
uint256 stor8;
uint8 decimals;
uint256 totalSupply;
uint256 stor12;
uint256 totalFees;
array of struct stor14;
array of struct stor15;
uint256 _reflectFee;
uint256 stor18;
uint256 _liquidityFee;
uint256 stor21;
uint256 _marketingFee;
uint256 stor24;
uint256 stor25;
address dexRouterAddress;
address lpPairAddress;
address burnAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor30; offset 168
address stor30;
uint256 stor33;
uint256 maxTxAmountUI;
uint256 stor38;
uint256 maxWalletSizeUI;
uint8 _hasLiqBeenAdded;

function dexRouter() {
    return dexRouterAddress
}

function totalFees() {
    return totalFees
}

function _reflectFee() {
    return _reflectFee
}

function totalSupply() {
    return totalSupply
}

function _marketingFee() {
    return _marketingFee
}

function decimals() {
    return decimals
}

function lpPair() {
    return lpPairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function _hasLiqBeenAdded() {
    return bool(_hasLiqBeenAdded)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function maxTxAmountUI() {
    return maxTxAmountUI
}

function _liquidityFee() {
    return _liquidityFee
}

function burnAddress() {
    return burnAddress
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function maxWalletSizeUI() {
    return maxWalletSizeUI
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLPPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lpPairAddress = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor18
    _reflectFee = arg1
}

function setMarketingFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor24
    _marketingFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor21
    _liquidityFee = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor30.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(stor30.field_0) == arg1:
        revert with 0, 'Wallet already set!'
    address(stor30.field_0) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor6.length < 1:
            revert with 'NH{q', 17
        if stor6.length - 1 >= stor6.length:
            revert with 'NH{q', 50
        if idx >= stor6.length:
            revert with 'NH{q', 50
        stor6[idx] = stor6[stor6.length]
        stor2[address(arg1)] = 0
        stor5[address(arg1)] = 0
        if not stor6.length:
            revert with 'NH{q', 49
        stor6[stor6.length] = 0
        stor6.length--
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 10000
    if not totalSupply:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        stor33 = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        stor33 = totalSupply * arg1 / arg2
    if not stor8:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        maxTxAmountUI = 0 / arg2
    else:
        if stor8 and arg1 > -1 / stor8:
            revert with 'NH{q', 17
        if not stor8:
            revert with 'NH{q', 18
        if stor8 * arg1 / stor8 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        maxTxAmountUI = stor8 * arg1 / arg2
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 1000
    if not totalSupply:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        stor38 = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        stor38 = totalSupply * arg1 / arg2
    if not stor8:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        maxWalletSizeUI = 0 / arg2
    else:
        if stor8 and arg1 > -1 / stor8:
            revert with 'NH{q', 17
        if not stor8:
            revert with 'NH{q', 18
        if stor8 * arg1 / stor8 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            revert with 'NH{q', 18
        maxWalletSizeUI = stor8 * arg1 / arg2
}

function name() {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function symbol() {
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_96 + idx + 68] = mem[_92 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply > 0:
                if not stor12 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor12 / totalSupply)
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_119 + idx + 68] = mem[_112 + idx + 32]
                idx = idx + 32
                continue 
            mem[_119 + 94] = 0
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _99 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_99 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_99 + 94] = 0
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 26
            mem[_120 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply > 0:
                if not stor12 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor12 / totalSupply)
            _123 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_123 + idx + 68] = mem[_120 + idx + 32]
                idx = idx + 32
                continue 
            mem[_123 + 94] = 0
            revert with memory
              from mem[64]
               len _123 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 30
        mem[_95 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_98 + idx + 68] = mem[_95 + idx + 32]
                idx = idx + 32
                continue 
            mem[_98 + 98] = 0
            revert with memory
              from mem[64]
               len _98 + -mem[64] + 100
        if t < stor1[stor6[idx]]:
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 30
        mem[_116 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _121 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_121 + idx + 68] = mem[_116 + idx + 32]
            idx = idx + 32
            continue 
        mem[_121 + 98] = 0
        revert with memory
          from mem[64]
           len _121 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor12 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (arg1 / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor12 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor12 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_101 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply > 0:
                if not stor12 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor12 / totalSupply)
            _124 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_124 + idx + 68] = mem[_117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_124 + 94] = 0
            revert with memory
              from mem[64]
               len _124 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_102] = 26
            mem[_102 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_104 + idx + 68] = mem[_102 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_104 + 94] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_125] = 26
            mem[_125 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply > 0:
                if not stor12 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor12 / totalSupply)
            _128 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_128 + idx + 68] = mem[_125 + idx + 32]
                idx = idx + 32
                continue 
            mem[_128 + 94] = 0
            revert with memory
              from mem[64]
               len _128 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 30
        mem[_100 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _103 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_103 + idx + 68] = mem[_100 + idx + 32]
                idx = idx + 32
                continue 
            mem[_103 + 98] = 0
            revert with memory
              from mem[64]
               len _103 + -mem[64] + 100
        if t < stor1[stor6[idx]]:
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _126 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_126 + idx + 68] = mem[_121 + idx + 32]
            idx = idx + 32
            continue 
        mem[_126 + 98] = 0
        revert with memory
          from mem[64]
           len _126 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor12 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (stor1[address(arg1)] / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor12 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor12 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 26
                mem[_105 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _109 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_109 + idx + 68] = mem[_105 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_109 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _109 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor12 / totalSupply > 0:
                    if not stor12 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor12 / totalSupply
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _132 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_132 + idx + 68] = mem[_125 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_132 + 94] = 0
                revert with memory
                  from mem[64]
                   len _132 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
                _110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_110] = 26
                mem[_110 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_112 + idx + 68] = mem[_110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_112 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _112 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                if stor12 / totalSupply > 0:
                    if not stor12 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor12 / totalSupply
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_136 + idx + 68] = mem[_133 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 94] = 0
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 1
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
                _111 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_111 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_111 + 98] = 0
                revert with memory
                  from mem[64]
                   len _111 + -mem[64] + 100
            if t < stor1[stor6[idx]]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 2
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                if s < stor2[stor6[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
                continue 
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_134 + idx + 68] = mem[_129 + idx + 32]
                idx = idx + 32
                continue 
            mem[_134 + 98] = 0
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor12 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor12 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / stor12 / totalSupply
    stor5[address(arg1)] = 1
    stor6.length++
    stor6[stor6.length] = arg1
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor25:
            revert with 'NH{q', 18
        if _liquidityFee > -_marketingFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1 - (0 / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor25) < 0 / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2098] = 26
                    mem[_2098 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2129 + idx + 68] = mem[_2098 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2129 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2129 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not 0 / stor25:
                            _2258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2258] = 30
                            mem[_2258 + 32] = 'SafeMath: subtraction overflow'
                            _2321 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2321] = 30
                            mem[_2321 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2492] = 30
                            mem[_2492 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _2543 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2543 + idx + 68] = mem[_2492 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2543 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2543 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2869 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2869] = 30
                            mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2948 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2948 + idx + 68] = mem[_2869 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2948 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2948 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _2351 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2351] = 30
                            mem[_2351 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _2372 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2372 + idx + 68] = mem[_2351 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2372 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2372 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2529 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2529] = 30
                            mem[_2529 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                                _2572 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2572 + idx + 68] = mem[_2529 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2572 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2572 + -mem[64] + 100
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2989 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2989] = 30
                            mem[_2989 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3130 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3130 + idx + 68] = mem[_2989 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3130 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3130 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3640 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3640] = 30
                            mem[_3640 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3787 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3787 + idx + 68] = mem[_3640 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3787 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3787 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2611 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2611] = 30
                        mem[_2611 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _2668 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2668 + idx + 68] = mem[_2611 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2668 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2668 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3076 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3076] = 30
                        mem[_3076 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                            _3172 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3172 + idx + 68] = mem[_3076 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3172 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3172 + -mem[64] + 100
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3832] = 30
                        mem[_3832 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3986 + idx + 68] = mem[_3832 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3986 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3986 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4504] = 30
                        mem[_4504 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4638 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4638 + idx + 68] = mem[_4504 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4638 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4638 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _2350 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2350] = 30
                        mem[_2350 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2371 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2371 + idx + 68] = mem[_2350 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2371 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2371 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2527 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2527] = 30
                        mem[_2527 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2571 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2571 + idx + 68] = mem[_2527 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2571 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2571 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _2987 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2987] = 30
                        mem[_2987 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3129 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3129 + idx + 68] = mem[_2987 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3129 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3129 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3638 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3638] = 30
                        mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3785 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3785 + idx + 68] = mem[_3638 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3785 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3785 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _2610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2610] = 30
                        mem[_2610 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2665 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2665 + idx + 68] = mem[_2610 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2665 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2665 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3075 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3075] = 30
                        mem[_3075 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                            _3170 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3170 + idx + 68] = mem[_3075 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3170 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3170 + -mem[64] + 100
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3831] = 30
                        mem[_3831 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3983 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3983 + idx + 68] = mem[_3831 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3983 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3983 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _4503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4503] = 30
                        mem[_4503 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4636 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4636 + idx + 68] = mem[_4503 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4636 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4636 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3241] = 30
                    mem[_3241 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3334 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3334 + idx + 68] = mem[_3241 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3334 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3334 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3910] = 30
                    mem[_3910 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        _4026 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4026 + idx + 68] = mem[_3910 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4026 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4026 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4677 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4677] = 30
                    mem[_4677 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4772 + idx + 68] = mem[_4677 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4772 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4772 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _5178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5178] = 30
                    mem[_5178 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _5242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5242 + idx + 68] = mem[_5178 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5242 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5242 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2118] = 30
                    mem[_2118 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2134 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2134 + idx + 68] = mem[_2118 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2134 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2134 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _2202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2202] = 30
                    mem[_2202 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _2214 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2214 + idx + 68] = mem[_2202 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2214 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2214 + -mem[64] + 100
                _2130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2130] = 26
                mem[_2130 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2138 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2138 + idx + 68] = mem[_2130 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2138 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2138 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        _2278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2278] = 30
                        mem[_2278 + 32] = 'SafeMath: subtraction overflow'
                        _2340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2340] = 30
                        mem[_2340 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _2546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2546] = 30
                        mem[_2546 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _2612 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2612 + idx + 68] = mem[_2546 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2612 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2612 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _2951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2951] = 30
                        mem[_2951 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3079 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3079 + idx + 68] = mem[_2951 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3079 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3079 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _2374 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2374] = 30
                        mem[_2374 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _2394 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2394 + idx + 68] = mem[_2374 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2394 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2394 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2575] = 30
                        mem[_2575 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                            _2631 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2631 + idx + 68] = mem[_2575 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2631 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2631 + -mem[64] + 100
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3136 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3136] = 30
                        mem[_3136 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3245 + idx + 68] = mem[_3136 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3245 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3245 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3792 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3792] = 30
                        mem[_3792 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3914 + idx + 68] = mem[_3792 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3914 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3914 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2672] = 30
                    mem[_2672 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        _2724 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2724 + idx + 68] = mem[_2672 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2724 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2724 + -mem[64] + 100
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3177] = 30
                    mem[_3177 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                        _3282 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3282 + idx + 68] = mem[_3177 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3282 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3282 + -mem[64] + 100
                    if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3992] = 30
                    mem[_3992 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4092 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4092 + idx + 68] = mem[_3992 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4092 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4092 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4642 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4642] = 30
                    mem[_4642 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4720 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4720 + idx + 68] = mem[_4642 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4720 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4720 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    _2373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2373] = 30
                    mem[_2373 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2393 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2393 + idx + 68] = mem[_2373 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2393 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2393 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2573 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2573] = 30
                    mem[_2573 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2630 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2630 + idx + 68] = mem[_2573 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2630 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2630 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3134] = 30
                    mem[_3134 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _3244 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3244 + idx + 68] = mem[_3134 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3244 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3244 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3790 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3790] = 30
                    mem[_3790 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3912 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3912 + idx + 68] = mem[_3790 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3912 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3912 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    _2671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2671] = 30
                    mem[_2671 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2721 + idx + 68] = mem[_2671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2721 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2721 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3176 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3176] = 30
                    mem[_3176 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        _3280 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3280 + idx + 68] = mem[_3176 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3280 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3280 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3991] = 30
                    mem[_3991 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4089 + idx + 68] = mem[_3991 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4089 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4089 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4641] = 30
                    mem[_4641 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4718 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4718 + idx + 68] = mem[_4641 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4718 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4718 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3339 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3339] = 30
                mem[_3339 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3419 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3419 + idx + 68] = mem[_3339 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3419 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3419 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _4031 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4031] = 30
                mem[_4031 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                    _4128 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4128 + idx + 68] = mem[_4031 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4128 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4128 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _4779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4779] = 30
                mem[_4779 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                    _4853 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4853 + idx + 68] = mem[_4779 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4853 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4853 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _5245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5245] = 30
                mem[_5245 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _5277 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5277 + idx + 68] = mem[_5245 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5277 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5277 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if 0 / stor25:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 / stor25 * t / s > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if 0 / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * t / s) - (0 / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (0 / stor25 * t / s) < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 / stor25 * t / s > (arg1 * t / s) - (0 / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (0 / stor25 * t / s) < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if 0 / stor25:
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 > arg1 - (0 / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor25) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2091] = 26
                    mem[_2091 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2127 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2127 + idx + 68] = mem[_2091 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2127 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2127 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not 0 / stor25:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                _2257 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2257] = 30
                                mem[_2257 + 32] = 'SafeMath: subtraction overflow'
                                _2319 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2319] = 30
                                mem[_2319 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _2487 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2487] = 30
                                mem[_2487 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _2539 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2539 + idx + 68] = mem[_2487 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2539 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2539 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _2864 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2864] = 30
                                mem[_2864 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor12:
                                    if stor12 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _2937 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2937 + idx + 68] = mem[_2864 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2937 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2937 + -mem[64] + 100
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2349 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2349] = 30
                            mem[_2349 + 32] = 'SafeMath: subtraction overflow'
                            _2521 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2521] = 30
                            mem[_2521 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                                _2565 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2565 + idx + 68] = mem[_2521 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2565 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2565 + -mem[64] + 100
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2981 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2981] = 30
                            mem[_2981 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3116 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3116 + idx + 68] = mem[_2981 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3116 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3116 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3628 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3628] = 30
                            mem[_3628 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3770 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3770 + idx + 68] = mem[_3628 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3770 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3770 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _2348 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2348] = 30
                            mem[_2348 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _2367 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2367 + idx + 68] = mem[_2348 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2367 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2367 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2520 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2520] = 30
                            mem[_2520 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                                _2564 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2564 + idx + 68] = mem[_2520 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2564 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2564 + -mem[64] + 100
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2980] = 30
                            mem[_2980 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3115 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3115 + idx + 68] = mem[_2980 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3115 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3115 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3627 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3627] = 30
                            mem[_3627 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3769 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3769 + idx + 68] = mem[_3627 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3769 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3769 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2604 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2604] = 30
                        mem[_2604 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _2658 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2658 + idx + 68] = mem[_2604 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2658 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2658 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3057] = 30
                        mem[_3057 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                            _3162 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3162 + idx + 68] = mem[_3057 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3162 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3162 + -mem[64] + 100
                        if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3824 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3824] = 30
                        mem[_3824 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3968 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3968 + idx + 68] = mem[_3824 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3968 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3968 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4486] = 30
                        mem[_4486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4624 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4624 + idx + 68] = mem[_4486 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4624 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4624 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _2347 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2347] = 30
                            mem[_2347 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2366 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2366 + idx + 68] = mem[_2347 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2366 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2366 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2518] = 30
                            mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2563 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2563 + idx + 68] = mem[_2518 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2563 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2563 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2978 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2978] = 30
                            mem[_2978 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                                _3114 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3114 + idx + 68] = mem[_2978 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3114 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3114 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                            _3625 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3625] = 30
                            mem[_3625 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply <= stor12:
                                if stor12 < arg1 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                stor12 += -1 * arg1 * stor12 / totalSupply
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3767 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3767 + idx + 68] = mem[_3625 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3767 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3767 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2603 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2603] = 30
                        mem[_2603 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2655 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2655 + idx + 68] = mem[_2603 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2655 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2655 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3056 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3056] = 30
                        mem[_3056 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3160 + idx + 68] = mem[_3056 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3160 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3823] = 30
                        mem[_3823 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3965 + idx + 68] = mem[_3823 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3965 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3965 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _4485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4485] = 30
                        mem[_4485 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4622 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4622 + idx + 68] = mem[_4485 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4622 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4622 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _2602 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2602] = 30
                        mem[_2602 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2654 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2654 + idx + 68] = mem[_2602 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2654 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2654 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3055 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3055] = 30
                        mem[_3055 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                            _3159 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3159 + idx + 68] = mem[_3055 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3159 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3159 + -mem[64] + 100
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3822] = 30
                        mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3964 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3964 + idx + 68] = mem[_3822 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3964 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3964 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _4484 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4484] = 30
                        mem[_4484 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4621 + idx + 68] = mem[_4484 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4621 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4621 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3226] = 30
                    mem[_3226 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3319 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3319 + idx + 68] = mem[_3226 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3319 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3319 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3892 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3892] = 30
                    mem[_3892 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        _4016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4016 + idx + 68] = mem[_3892 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4016 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4669 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4669] = 30
                    mem[_4669 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4756 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4756 + idx + 68] = mem[_4669 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4756 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4756 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _5160 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5160] = 30
                    mem[_5160 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _5235 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5235 + idx + 68] = mem[_5160 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5235 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5235 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2114] = 30
                    mem[_2114 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2133 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2133 + idx + 68] = mem[_2114 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2133 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2133 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _2201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2201] = 30
                    mem[_2201 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _2213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2213 + idx + 68] = mem[_2201 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2213 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2213 + -mem[64] + 100
                _2128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2128] = 26
                mem[_2128 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2137 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2137 + idx + 68] = mem[_2128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2137 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2137 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _2275 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2275] = 30
                            mem[_2275 + 32] = 'SafeMath: subtraction overflow'
                            _2336 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2336] = 30
                            mem[_2336 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2542 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2542] = 30
                            mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _2605 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2605 + idx + 68] = mem[_2542 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2605 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2605 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2941] = 30
                            mem[_2941 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3061 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3061 + idx + 68] = mem[_2941 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3061 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3061 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2370] = 30
                        mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                        _2570 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2570] = 30
                        mem[_2570 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                            _2627 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2627 + idx + 68] = mem[_2570 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2627 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2627 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3124] = 30
                        mem[_3124 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3232 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3232 + idx + 68] = mem[_3124 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3232 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3232 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3777 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3777] = 30
                        mem[_3777 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3898 + idx + 68] = mem[_3777 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3898 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3898 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _2369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2369] = 30
                        mem[_2369 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _2392 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2392 + idx + 68] = mem[_2369 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2392 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2392 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2569] = 30
                        mem[_2569 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                            _2626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2626 + idx + 68] = mem[_2569 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2626 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2626 + -mem[64] + 100
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3123 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3123] = 30
                        mem[_3123 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3231 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3231 + idx + 68] = mem[_3123 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3231 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3231 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3776 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3776] = 30
                        mem[_3776 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3897 + idx + 68] = mem[_3776 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3897 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3897 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2664] = 30
                    mem[_2664 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        _2717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2717 + idx + 68] = mem[_2664 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2717 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2717 + -mem[64] + 100
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3169] = 30
                    mem[_3169 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                        _3274 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3274 + idx + 68] = mem[_3169 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3274 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3274 + -mem[64] + 100
                    if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3977] = 30
                    mem[_3977 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4077 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4077 + idx + 68] = mem[_3977 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4077 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4077 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4630] = 30
                    mem[_4630 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4710 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4710 + idx + 68] = mem[_4630 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4710 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4710 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _2368 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2368] = 30
                        mem[_2368 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2391 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2391 + idx + 68] = mem[_2368 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2391 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2391 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2567] = 30
                        mem[_2567 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2625 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2625 + idx + 68] = mem[_2567 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2625 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2625 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3121 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3121] = 30
                        mem[_3121 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3230 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3230 + idx + 68] = mem[_3121 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3230 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3230 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3774] = 30
                        mem[_3774 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3895 + idx + 68] = mem[_3774 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3895 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3895 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2663 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2663] = 30
                    mem[_2663 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2714 + idx + 68] = mem[_2663 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2714 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2714 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3168 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3168] = 30
                    mem[_3168 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3272 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3272 + idx + 68] = mem[_3168 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3272 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3272 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3976] = 30
                    mem[_3976 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4074 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4074 + idx + 68] = mem[_3976 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4074 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4074 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4629] = 30
                    mem[_4629 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4708 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4708 + idx + 68] = mem[_4629 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4708 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4708 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _2662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2662] = 30
                    mem[_2662 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2713 + idx + 68] = mem[_2662 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2713 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2713 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3167] = 30
                    mem[_3167 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        _3271 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3271 + idx + 68] = mem[_3167 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3271 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3271 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3975] = 30
                    mem[_3975 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4073 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4073 + idx + 68] = mem[_3975 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4073 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4073 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4628 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4628] = 30
                    mem[_4628 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4707 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4707 + idx + 68] = mem[_4628 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4707 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4707 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3326] = 30
                mem[_3326 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3411 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3411 + idx + 68] = mem[_3326 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3411 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3411 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _4023 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4023] = 30
                mem[_4023 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                    _4119 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4119 + idx + 68] = mem[_4023 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4119 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4119 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _4766 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4766] = 30
                mem[_4766 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                    _4842 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4842 + idx + 68] = mem[_4766 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4842 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4842 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _5239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5239] = 30
                mem[_5239 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _5273 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5273 + idx + 68] = mem[_5239 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5273 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5273 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * t / s) - (0 / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (0 / stor25 * t / s) < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > (arg1 * t / s) - (0 / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (0 / stor25 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
    else:
        if arg1 and _reflectFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _reflectFee / arg1 != _reflectFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor25:
            revert with 'NH{q', 18
        if _liquidityFee > -_marketingFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1 - (arg1 * _reflectFee / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor25) < 0 / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2083] = 26
                    mem[_2083 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2125 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2125 + idx + 68] = mem[_2083 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2125 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2125 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _reflectFee / stor25:
                            if not 0 / stor25:
                                _2256 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2256] = 30
                                mem[_2256 + 32] = 'SafeMath: subtraction overflow'
                                _2316 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2316] = 30
                                mem[_2316 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _2482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2482] = 30
                                mem[_2482 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _2535 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2535 + idx + 68] = mem[_2482 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2535 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2535 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _2858 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2858] = 30
                                mem[_2858 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor12:
                                    if stor12 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _2923 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2923 + idx + 68] = mem[_2858 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2923 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2923 + -mem[64] + 100
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2346 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2346] = 30
                            mem[_2346 + 32] = 'SafeMath: subtraction overflow'
                            _2511 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2511] = 30
                            mem[_2511 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _2557 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2557 + idx + 68] = mem[_2511 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2557 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2557 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2971 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2971] = 30
                            mem[_2971 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3101 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3101 + idx + 68] = mem[_2971 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3101 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3101 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3612 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3612] = 30
                            mem[_3612 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3749 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3749 + idx + 68] = mem[_3612 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3749 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3749 + -mem[64] + 100
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _2345 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2345] = 30
                            mem[_2345 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                _2362 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2362 + idx + 68] = mem[_2345 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2362 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2362 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2510 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2510] = 30
                            mem[_2510 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                _2556 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2556 + idx + 68] = mem[_2510 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2556 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2556 + -mem[64] + 100
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2970 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2970] = 30
                            mem[_2970 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3100 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3100 + idx + 68] = mem[_2970 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3100 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3100 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3611 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3611] = 30
                            mem[_3611 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3748 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3748 + idx + 68] = mem[_3611 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3748 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3748 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2594] = 30
                        mem[_2594 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _2647 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2647 + idx + 68] = mem[_2594 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2647 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2647 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3033 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3033] = 30
                        mem[_3033 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            _3151 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3151 + idx + 68] = mem[_3033 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3151 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3151 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3813 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3813] = 30
                        mem[_3813 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3947 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3947 + idx + 68] = mem[_3813 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3947 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3947 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4461 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4461] = 30
                        mem[_4461 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4607 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4607 + idx + 68] = mem[_4461 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4607 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4607 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            _2344 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2344] = 30
                            mem[_2344 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2361 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2361 + idx + 68] = mem[_2344 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2361 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2361 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2508 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2508] = 30
                            mem[_2508 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2555 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2555 + idx + 68] = mem[_2508 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2555 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2555 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2968 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2968] = 30
                            mem[_2968 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                                _3099 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3099 + idx + 68] = mem[_2968 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3099 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3099 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                            _3609 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3609] = 30
                            mem[_3609 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply <= stor12:
                                if stor12 < arg1 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                stor12 += -1 * arg1 * stor12 / totalSupply
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3746 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3746 + idx + 68] = mem[_3609 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3746 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3746 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2593] = 30
                        mem[_2593 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2644 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2644 + idx + 68] = mem[_2593 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2644 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2644 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3032 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3032] = 30
                        mem[_3032 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3149 + idx + 68] = mem[_3032 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3149 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3149 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3812 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3812] = 30
                        mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3944 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3944 + idx + 68] = mem[_3812 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3944 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3944 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _4460 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4460] = 30
                        mem[_4460 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4605 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4605 + idx + 68] = mem[_4460 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4605 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4605 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _2592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2592] = 30
                        mem[_2592 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2643 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2643 + idx + 68] = mem[_2592 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2643 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2643 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3031 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3031] = 30
                        mem[_3031 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                            _3148 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3148 + idx + 68] = mem[_3031 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3148 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3148 + -mem[64] + 100
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3811 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3811] = 30
                        mem[_3811 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3943 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3943 + idx + 68] = mem[_3811 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3943 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3943 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _4459 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4459] = 30
                        mem[_4459 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4604 + idx + 68] = mem[_4459 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4604 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4604 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3207] = 30
                    mem[_3207 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3304 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3304 + idx + 68] = mem[_3207 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3304 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3304 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3870 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3870] = 30
                    mem[_3870 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        _4006 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4006 + idx + 68] = mem[_3870 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4006 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4006 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4659] = 30
                    mem[_4659 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4740 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4740 + idx + 68] = mem[_4659 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4740 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4740 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _5136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5136] = 30
                    mem[_5136 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _5228 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5228 + idx + 68] = mem[_5136 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5228 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5228 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2109] = 30
                    mem[_2109 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2132 + idx + 68] = mem[_2109 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2132 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2132 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _2200 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2200] = 30
                    mem[_2200 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _2212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2212 + idx + 68] = mem[_2200 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2212 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2212 + -mem[64] + 100
                _2126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2126] = 26
                mem[_2126 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2136 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2136 + idx + 68] = mem[_2126 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2136 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2136 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            _2272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2272] = 30
                            mem[_2272 + 32] = 'SafeMath: subtraction overflow'
                            _2331 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2331] = 30
                            mem[_2331 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2538 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2538] = 30
                            mem[_2538 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _2595 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2595 + idx + 68] = mem[_2538 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2595 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2595 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2927 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2927] = 30
                            mem[_2927 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3037 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3037 + idx + 68] = mem[_2927 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3037 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3037 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2365] = 30
                        mem[_2365 + 32] = 'SafeMath: subtraction overflow'
                        _2562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2562] = 30
                        mem[_2562 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _2622 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2622 + idx + 68] = mem[_2562 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2622 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3109 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3109] = 30
                        mem[_3109 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3213 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3213 + idx + 68] = mem[_3109 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3213 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3213 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3756 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3756] = 30
                        mem[_3756 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3876 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3876 + idx + 68] = mem[_3756 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3876 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3876 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _2364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2364] = 30
                        mem[_2364 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _2390 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2390 + idx + 68] = mem[_2364 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2390 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2390 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2561] = 30
                        mem[_2561 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            _2621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2621 + idx + 68] = mem[_2561 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2621 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2621 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3108 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3108] = 30
                        mem[_3108 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3212 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3212 + idx + 68] = mem[_3108 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3212 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3212 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3755 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3755] = 30
                        mem[_3755 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3875 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3875 + idx + 68] = mem[_3755 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3875 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3875 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2653] = 30
                    mem[_2653 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        _2709 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2709 + idx + 68] = mem[_2653 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2709 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2709 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3158] = 30
                    mem[_3158 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        _3264 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3264 + idx + 68] = mem[_3158 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3264 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3264 + -mem[64] + 100
                    if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3956 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3956] = 30
                    mem[_3956 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4060 + idx + 68] = mem[_3956 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4060 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4060 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4613 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4613] = 30
                    mem[_4613 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4699 + idx + 68] = mem[_4613 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4699 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4699 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not 0 / stor25:
                        _2363 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2363] = 30
                        mem[_2363 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2389 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2389 + idx + 68] = mem[_2363 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2389 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2389 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2559 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2559] = 30
                        mem[_2559 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2620 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2620 + idx + 68] = mem[_2559 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2620 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2620 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3106] = 30
                        mem[_3106 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3211 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3211 + idx + 68] = mem[_3106 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3211 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3211 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3753 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3753] = 30
                        mem[_3753 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3873 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3873 + idx + 68] = mem[_3753 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3873 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3873 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2652] = 30
                    mem[_2652 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2706 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2706 + idx + 68] = mem[_2652 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2706 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2706 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3157] = 30
                    mem[_3157 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3262 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3262 + idx + 68] = mem[_3157 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3262 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3262 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3955] = 30
                    mem[_3955 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4057 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4057 + idx + 68] = mem[_3955 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4057 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4057 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4612 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4612] = 30
                    mem[_4612 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4697 + idx + 68] = mem[_4612 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4697 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4697 + -mem[64] + 100
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    _2651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2651] = 30
                    mem[_2651 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2705 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2705 + idx + 68] = mem[_2651 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2705 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2705 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3156 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3156] = 30
                    mem[_3156 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        _3261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3261 + idx + 68] = mem[_3156 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3261 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3261 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3954 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3954] = 30
                    mem[_3954 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4056 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4056 + idx + 68] = mem[_3954 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4056 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4056 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4611 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4611] = 30
                    mem[_4611 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4696 + idx + 68] = mem[_4611 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4696 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3311] = 30
                mem[_3311 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3403 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3403 + idx + 68] = mem[_3311 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3403 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3403 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _4013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4013] = 30
                mem[_4013 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    _4109 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4109 + idx + 68] = mem[_4013 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4109 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4109 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _4750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4750] = 30
                mem[_4750 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                    _4831 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4831 + idx + 68] = mem[_4750 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4831 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4831 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _5232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5232] = 30
                mem[_5232 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _5269 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5269 + idx + 68] = mem[_5232 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5269 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5269 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if 0 / stor25:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 / stor25 * t / s > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if 0 / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 / stor25 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if 0 / stor25:
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 > arg1 - (arg1 * _reflectFee / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor25) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2076 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2076] = 26
                    mem[_2076 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2123 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2123 + idx + 68] = mem[_2076 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2123 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2123 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _reflectFee / stor25:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                _2255 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2255] = 30
                                mem[_2255 + 32] = 'SafeMath: subtraction overflow'
                                _2313 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2313] = 30
                                mem[_2313 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _2477 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2477] = 30
                                mem[_2477 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _2531 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2531 + idx + 68] = mem[_2477 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2531 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2531 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _2852 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2852] = 30
                                mem[_2852 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor12:
                                    if stor12 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _2909 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2909 + idx + 68] = mem[_2852 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2909 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2909 + -mem[64] + 100
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2343] = 30
                            mem[_2343 + 32] = 'SafeMath: subtraction overflow'
                            _2501 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2501] = 30
                            mem[_2501 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                                _2549 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2549 + idx + 68] = mem[_2501 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2549 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2549 + -mem[64] + 100
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2961 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2961] = 30
                            mem[_2961 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3086 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3086 + idx + 68] = mem[_2961 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3086 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3086 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3596 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3596] = 30
                            mem[_3596 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3728 + idx + 68] = mem[_3596 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3728 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3728 + -mem[64] + 100
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _2342 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2342] = 30
                            mem[_2342 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                _2357 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2357 + idx + 68] = mem[_2342 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2357 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2357 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2500 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2500] = 30
                            mem[_2500 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                _2548 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2548 + idx + 68] = mem[_2500 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2548 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2548 + -mem[64] + 100
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2960 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2960] = 30
                            mem[_2960 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3085 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3085 + idx + 68] = mem[_2960 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3085 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3085 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3595 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3595] = 30
                            mem[_3595 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3727 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3727 + idx + 68] = mem[_3595 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3727 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3727 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2584] = 30
                        mem[_2584 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _2636 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2636 + idx + 68] = mem[_2584 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2636 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2636 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3009] = 30
                        mem[_3009 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            _3140 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3140 + idx + 68] = mem[_3009 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3140 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3140 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3802 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3802] = 30
                        mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3926 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3926 + idx + 68] = mem[_3802 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3926 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3926 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4436] = 30
                        mem[_4436 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4590 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4590 + idx + 68] = mem[_4436 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4590 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4590 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _2341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2341] = 30
                            mem[_2341 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2356 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2356 + idx + 68] = mem[_2341 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2356 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2356 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2498] = 30
                            mem[_2498 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2547 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2547 + idx + 68] = mem[_2498 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2547 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2547 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2958 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2958] = 30
                            mem[_2958 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                                _3084 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3084 + idx + 68] = mem[_2958 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3084 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3084 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                            _3593 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3593] = 30
                            mem[_3593 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply <= stor12:
                                if stor12 < arg1 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                stor12 += -1 * arg1 * stor12 / totalSupply
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3725 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3725 + idx + 68] = mem[_3593 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3725 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3725 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2583] = 30
                        mem[_2583 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2633 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2633 + idx + 68] = mem[_2583 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2633 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2633 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3008 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3008] = 30
                        mem[_3008 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3138 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3138 + idx + 68] = mem[_3008 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3138 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3138 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3801] = 30
                        mem[_3801 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3923 + idx + 68] = mem[_3801 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3923 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3923 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _4435 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4435] = 30
                        mem[_4435 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4588 + idx + 68] = mem[_4435 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4588 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4588 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _2582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2582] = 30
                        mem[_2582 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2632 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2632 + idx + 68] = mem[_2582 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2632 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2632 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3007] = 30
                        mem[_3007 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                            _3137 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3137 + idx + 68] = mem[_3007 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3137 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3137 + -mem[64] + 100
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3800 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3800] = 30
                        mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3922 + idx + 68] = mem[_3800 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3922 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _4434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4434] = 30
                        mem[_4434 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4587 + idx + 68] = mem[_4434 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4587 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4587 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3188] = 30
                    mem[_3188 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3289 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3289 + idx + 68] = mem[_3188 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3289 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3289 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3848] = 30
                    mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        _3996 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3996 + idx + 68] = mem[_3848 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3996 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3996 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4649] = 30
                    mem[_4649 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4724 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4724 + idx + 68] = mem[_4649 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4724 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4724 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _5112 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5112] = 30
                    mem[_5112 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _5221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5221 + idx + 68] = mem[_5112 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5221 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5221 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2105] = 30
                    mem[_2105 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2131 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2131 + idx + 68] = mem[_2105 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2131 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2131 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _2199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2199] = 30
                    mem[_2199 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _2211 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2211 + idx + 68] = mem[_2199 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2211 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2211 + -mem[64] + 100
                _2124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2124] = 26
                mem[_2124 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2135 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2135 + idx + 68] = mem[_2124 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2135 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2135 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _2269 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2269] = 30
                            mem[_2269 + 32] = 'SafeMath: subtraction overflow'
                            _2326 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2326] = 30
                            mem[_2326 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2534] = 30
                            mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _2585 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2585 + idx + 68] = mem[_2534 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2585 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2585 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _2913 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2913] = 30
                            mem[_2913 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3013 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3013 + idx + 68] = mem[_2913 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3013 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3013 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2360] = 30
                        mem[_2360 + 32] = 'SafeMath: subtraction overflow'
                        _2554 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2554] = 30
                        mem[_2554 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                            _2617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2617 + idx + 68] = mem[_2554 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2617 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2617 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3094 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3094] = 30
                        mem[_3094 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3194 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3194 + idx + 68] = mem[_3094 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3194 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3194 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3735] = 30
                        mem[_3735 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3854 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3854 + idx + 68] = mem[_3735 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3854 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3854 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _2359 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2359] = 30
                        mem[_2359 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _2388 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2388 + idx + 68] = mem[_2359 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2388 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2388 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2553 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2553] = 30
                        mem[_2553 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            _2616 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2616 + idx + 68] = mem[_2553 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2616 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2616 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3093 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3093] = 30
                        mem[_3093 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3193 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3193 + idx + 68] = mem[_3093 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3193 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3193 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3734] = 30
                        mem[_3734 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3853 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3853 + idx + 68] = mem[_3734 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3853 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3853 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2642 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2642] = 30
                    mem[_2642 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        _2701 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2701 + idx + 68] = mem[_2642 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2701 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2701 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3147 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3147] = 30
                    mem[_3147 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        _3254 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3254 + idx + 68] = mem[_3147 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3254 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3254 + -mem[64] + 100
                    if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3935] = 30
                    mem[_3935 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4043 + idx + 68] = mem[_3935 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4043 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4043 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4596] = 30
                    mem[_4596 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4688 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4688 + idx + 68] = mem[_4596 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4688 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4688 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _2358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2358] = 30
                        mem[_2358 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2387 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2387 + idx + 68] = mem[_2358 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2387 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2387 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2551] = 30
                        mem[_2551 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2615 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2615 + idx + 68] = mem[_2551 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2615 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2615 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3091 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3091] = 30
                        mem[_3091 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                            _3192 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3192 + idx + 68] = mem[_3091 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3192 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3192 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3732 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3732] = 30
                        mem[_3732 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3851 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3851 + idx + 68] = mem[_3732 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3851 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3851 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2641] = 30
                    mem[_2641 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2698 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2698 + idx + 68] = mem[_2641 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2698 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2698 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3146] = 30
                    mem[_3146 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3252 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3252 + idx + 68] = mem[_3146 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3252 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3252 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3934] = 30
                    mem[_3934 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4040 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4040 + idx + 68] = mem[_3934 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4040 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4040 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4595] = 30
                    mem[_4595 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4686 + idx + 68] = mem[_4595 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4686 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4686 + -mem[64] + 100
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _2640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2640] = 30
                    mem[_2640 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2697 + idx + 68] = mem[_2640 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2697 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2697 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3145 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3145] = 30
                    mem[_3145 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        _3251 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3251 + idx + 68] = mem[_3145 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3251 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3251 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3933] = 30
                    mem[_3933 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        _4039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4039 + idx + 68] = mem[_3933 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4039 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4039 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4594] = 30
                    mem[_4594 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4685 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4685 + idx + 68] = mem[_4594 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4685 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4685 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3296 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3296] = 30
                mem[_3296 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3395 + idx + 68] = mem[_3296 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3395 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3395 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _4003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4003] = 30
                mem[_4003 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    _4099 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4099 + idx + 68] = mem[_4003 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4099 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4099 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _4734 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4734] = 30
                mem[_4734 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                    _4820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4820 + idx + 68] = mem[_4734 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4820 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4820 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _5225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5225] = 30
                mem[_5225 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _5265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5265 + idx + 68] = mem[_5225 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5265 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5265 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
    if totalFees > -arg1 - 1:
        revert with 'NH{q', 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            if _liquidityFee > -_marketingFee - 1:
                revert with 'NH{q', 17
            if _liquidityFee + _marketingFee < _liquidityFee:
                revert with 0, 'SafeMath: addition overflow'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                if stor25 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor25:
                    revert with 'NH{q', 18
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 / stor25 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0 / stor25:
                    revert with 'NH{q', 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 / stor25 > arg1 - (0 / stor25):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (0 / stor25) < 0 / stor25:
                    revert with 'NH{q', 17
                idx = 0
                s = totalSupply
                t = stor12
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    if stor1[stor6[idx]] > t:
                        _2818 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2818] = 26
                        mem[_2818 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2897 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2897 + idx + 68] = mem[_2818 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2897 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2897 + -mem[64] + 100
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if not arg1:
                            if not 0 / stor25:
                                return 0
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 0 / stor25:
                                _3337 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3337] = 30
                                mem[_3337 + 32] = 'SafeMath: subtraction overflow'
                                if 0 / stor25 * stor12 / totalSupply > 0:
                                    _3373 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3373 + idx + 68] = mem[_3337 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3373 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3373 + -mem[64] + 100
                                if 0 < 0 / stor25 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                _3651 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3651] = 30
                                mem[_3651 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                                    if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                        revert with 'NH{q', 17
                                    return (-1 * 0 / stor25 * stor12 / totalSupply)
                                _3735 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3735 + idx + 68] = mem[_3651 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3735 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3735 + -mem[64] + 100
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3805 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3805] = 30
                            mem[_3805 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _3905 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3905 + idx + 68] = mem[_3805 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3905 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3905 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _4529 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4529] = 30
                            mem[_4529 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                                if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                return ((-1 * 0 / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                            _4728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4728 + idx + 68] = mem[_4529 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4728 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4728 + -mem[64] + 100
                        if arg1 and stor12 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _3336 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3336] = 30
                            mem[_3336 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _3372 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3372 + idx + 68] = mem[_3336 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3372 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3372 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _3649 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3649] = 30
                            mem[_3649 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _3734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3734 + idx + 68] = mem[_3649 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3734 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3734 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _3804 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3804] = 30
                            mem[_3804 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                _3902 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3902 + idx + 68] = mem[_3804 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3902 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3902 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _4527 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4527] = 30
                            mem[_4527 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                                    revert with 'NH{q', 17
                                return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                            _4726 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4726 + idx + 68] = mem[_4527 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4726 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4726 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4831] = 30
                        mem[_4831 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _4962 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4962 + idx + 68] = mem[_4831 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4962 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4962 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _5639 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5639] = 30
                        mem[_5639 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                        _5829 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_5829 + idx + 68] = mem[_5639 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_5829 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5829 + -mem[64] + 100
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    if stor2[stor6[idx]] <= s:
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = stor6[idx]
                        mem[32] = 1
                        _2868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2868] = 30
                        mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor6[idx]] > t:
                            _2910 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2910 + idx + 68] = mem[_2868 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2910 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2910 + -mem[64] + 100
                        if t < stor1[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = stor6[idx]
                        mem[32] = 2
                        _3046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3046] = 30
                        mem[_3046 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor6[idx]] <= s:
                            if s < stor2[stor6[idx]]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s - stor2[stor6[idx]]
                            t = t - stor1[stor6[idx]]
                            continue 
                        _3070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3070 + idx + 68] = mem[_3046 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3070 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3070 + -mem[64] + 100
                    _2898 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2898] = 26
                    mem[_2898 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2918 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2918 + idx + 68] = mem[_2898 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2918 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2918 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not 0 / stor25:
                            return 0
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _3375 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3375] = 30
                            mem[_3375 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _3426 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3426 + idx + 68] = mem[_3375 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3426 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3426 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _3738 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3738] = 30
                            mem[_3738 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                                if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (-1 * 0 / stor25 * stor12 / totalSupply)
                            _3853 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3853 + idx + 68] = mem[_3738 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3853 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3853 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3909 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3909] = 30
                        mem[_3909 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _4026 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4026 + idx + 68] = mem[_3909 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4026 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4026 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4733 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4733] = 30
                        mem[_4733 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((-1 * 0 / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                        _4905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4905 + idx + 68] = mem[_4733 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4905 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4905 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3374 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3374] = 30
                        mem[_3374 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3425 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3425 + idx + 68] = mem[_3374 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3425 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3425 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3736] = 30
                        mem[_3736 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3852 + idx + 68] = mem[_3736 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3852 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3852 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3908 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3908] = 30
                        mem[_3908 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _4023 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4023 + idx + 68] = mem[_3908 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4023 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4023 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4731] = 30
                        mem[_4731 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                        _4903 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4903 + idx + 68] = mem[_4731 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4903 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4903 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4967 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4967] = 30
                    mem[_4967 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _5120 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_5120 + idx + 68] = mem[_4967 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_5120 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5120 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _5832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5832] = 30
                    mem[_5832 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                    _5931 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5931 + idx + 68] = mem[_5832 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5931 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5931 + -mem[64] + 100
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if t >= stor12 / totalSupply:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not s:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not 0 / stor25:
                            return 0
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                            return (-1 * 0 / stor25 * t / s)
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor25 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 / stor25 * t / s > -1 * 0 / stor25 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor25 * t / s < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        return ((-1 * 0 / stor25 * t / s) - (0 / stor25 * t / s))
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        return (arg1 * t / s)
                    if 0 / stor25 and t / s > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * t / s / 0 / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if 0 / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (0 / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor25 * t / s) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * t / s) - (0 / stor25 * t / s))
                    if 0 / stor25 and t / s > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * t / s / 0 / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor25 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor25 * t / s:
                        revert with 'NH{q', 17
                    if 0 / stor25 * t / s > (arg1 * t / s) - (0 / stor25 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (0 / stor25 * t / s) < 0 / stor25 * t / s:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - (0 / stor25 * t / s) - (0 / stor25 * t / s))
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        return 0
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * 0 / stor25 * stor12 / totalSupply)
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((-1 * 0 / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 > arg1 - (0 / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor25) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2811] = 26
                    mem[_2811 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2895 + idx + 68] = mem[_2811 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2895 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2895 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not 0 / stor25:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                return 0
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3335 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3335] = 30
                            mem[_3335 + 32] = 'SafeMath: subtraction overflow'
                            _3643 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3643] = 30
                            mem[_3643 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply)
                            _3727 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3727 + idx + 68] = mem[_3643 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3727 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3727 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _3334 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3334] = 30
                            mem[_3334 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _3368 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3368 + idx + 68] = mem[_3334 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3368 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3368 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _3642 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3642] = 30
                            mem[_3642 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                                if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (-1 * 0 / stor25 * stor12 / totalSupply)
                            _3726 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3726 + idx + 68] = mem[_3642 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3726 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3726 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3799 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3799] = 30
                        mem[_3799 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _3895 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3895 + idx + 68] = mem[_3799 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3895 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3895 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4511] = 30
                        mem[_4511 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                            if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((-1 * 0 / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                        _4716 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4716 + idx + 68] = mem[_4511 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4716 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4716 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _3333 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3333] = 30
                            mem[_3333 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _3367 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3367 + idx + 68] = mem[_3333 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3367 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3367 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _3640 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3640] = 30
                            mem[_3640 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _3725 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3725 + idx + 68] = mem[_3640 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3725 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3725 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3798] = 30
                        mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3892 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3892 + idx + 68] = mem[_3798 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3892 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3892 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _4509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4509] = 30
                        mem[_4509 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                        _4714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4714 + idx + 68] = mem[_4509 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4714 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4714 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3797 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3797] = 30
                        mem[_3797 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3891 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3891 + idx + 68] = mem[_3797 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3891 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3891 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4508] = 30
                        mem[_4508 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                        _4713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4713 + idx + 68] = mem[_4508 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4713 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4713 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4821] = 30
                    mem[_4821 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4951 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4951 + idx + 68] = mem[_4821 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4951 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4951 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _5625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5625] = 30
                    mem[_5625 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                    _5821 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5821 + idx + 68] = mem[_5625 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5821 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5821 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2864 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2864] = 30
                    mem[_2864 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2909 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2909 + idx + 68] = mem[_2864 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2909 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2909 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3045] = 30
                    mem[_3045 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3069 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3069 + idx + 68] = mem[_3045 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3069 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3069 + -mem[64] + 100
                _2896 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2896] = 26
                mem[_2896 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2917 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2917 + idx + 68] = mem[_2896 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2917 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2917 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3371] = 30
                        mem[_3371 + 32] = 'SafeMath: subtraction overflow'
                        _3732 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3732] = 30
                        mem[_3732 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply)
                        _3850 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3850 + idx + 68] = mem[_3732 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3850 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3850 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3370] = 30
                        mem[_3370 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _3424 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3424 + idx + 68] = mem[_3370 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3424 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3424 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3731] = 30
                        mem[_3731 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * 0 / stor25 * stor12 / totalSupply)
                        _3849 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3849 + idx + 68] = mem[_3731 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3849 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3849 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3901] = 30
                    mem[_3901 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        _4019 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4019 + idx + 68] = mem[_3901 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4019 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4019 + -mem[64] + 100
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4723] = 30
                    mem[_4723 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                        if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((-1 * 0 / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                    _4900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4900 + idx + 68] = mem[_4723 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4900 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4900 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3369] = 30
                        mem[_3369 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3423 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3423 + idx + 68] = mem[_3369 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3423 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3423 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3729 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3729] = 30
                        mem[_3729 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3848 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3848 + idx + 68] = mem[_3729 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3848 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3848 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3900] = 30
                    mem[_3900 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _4016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4016 + idx + 68] = mem[_3900 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4016 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _4721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4721] = 30
                    mem[_4721 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                    _4898 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4898 + idx + 68] = mem[_4721 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4898 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4898 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _3899 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3899] = 30
                    mem[_3899 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4015 + idx + 68] = mem[_3899 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4015 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4015 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4720] = 30
                    mem[_4720 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                    _4897 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4897 + idx + 68] = mem[_4720 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4897 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4897 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4958 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4958] = 30
                mem[_4958 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _5113 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5113 + idx + 68] = mem[_4958 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5113 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5113 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _5825 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5825] = 30
                mem[_5825 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                _5927 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5927 + idx + 68] = mem[_5825 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5927 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5927 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                            revert with 'NH{q', 17
                        return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s)
                    if 0 / stor25 and t / s > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * t / s / 0 / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if 0 / stor25 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * 0 / stor25 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor25 * t / s < 0:
                            revert with 'NH{q', 17
                        return (-1 * 0 / stor25 * t / s)
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor25 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor25 * t / s:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > -1 * 0 / stor25 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor25 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                        revert with 'NH{q', 17
                    return ((-1 * 0 / stor25 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s))
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        return (arg1 * t / s)
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s))
                if 0 / stor25 and t / s > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * t / s / 0 / stor25 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if 0 / stor25 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor25 * t / s:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * t / s) - (0 / stor25 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (0 / stor25 * t / s) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - (0 / stor25 * t / s))
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor25 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0 / stor25 * t / s:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > (arg1 * t / s) - (0 / stor25 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (0 / stor25 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (0 / stor25 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not 0 / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply)
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (-1 * 0 / stor25 * stor12 / totalSupply)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor25 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((-1 * 0 / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor25:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                revert with 'NH{q', 17
            if not 0 / stor25:
                revert with 'NH{q', 18
            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
        if arg1 and _reflectFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _reflectFee / arg1 != _reflectFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor25:
            revert with 'NH{q', 18
        if _liquidityFee > -_marketingFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1 - (arg1 * _reflectFee / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor25) < 0 / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2803] = 26
                    mem[_2803 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2893 + idx + 68] = mem[_2803 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2893 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2893 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _reflectFee / stor25:
                            if not 0 / stor25:
                                return 0
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3332 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3332] = 30
                            mem[_3332 + 32] = 'SafeMath: subtraction overflow'
                            _3633 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3633] = 30
                            mem[_3633 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply <= 0:
                                if 0 < 0 / stor25 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                return (-1 * 0 / stor25 * stor12 / totalSupply)
                            _3718 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3718 + idx + 68] = mem[_3633 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3718 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3718 + -mem[64] + 100
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _3331 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3331] = 30
                            mem[_3331 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                _3363 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3363 + idx + 68] = mem[_3331 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3363 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3363 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _3632 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3632] = 30
                            mem[_3632 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply)
                            _3717 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3717 + idx + 68] = mem[_3632 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3717 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3717 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3790 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3790] = 30
                        mem[_3790 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _3884 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3884 + idx + 68] = mem[_3790 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3884 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3884 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4488 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4488] = 30
                        mem[_4488 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                        _4703 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4703 + idx + 68] = mem[_4488 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4703 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4703 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            _3330 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3330] = 30
                            mem[_3330 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _3362 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3362 + idx + 68] = mem[_3330 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3362 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3362 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _3630 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3630] = 30
                            mem[_3630 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _3716 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3716 + idx + 68] = mem[_3630 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3716 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3716 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3789 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3789] = 30
                        mem[_3789 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3881 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3881 + idx + 68] = mem[_3789 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3881 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3881 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _4486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4486] = 30
                        mem[_4486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                        _4701 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4701 + idx + 68] = mem[_4486 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4701 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4701 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3788 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3788] = 30
                        mem[_3788 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3880 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3880 + idx + 68] = mem[_3788 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3880 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3880 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4485] = 30
                        mem[_4485 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply))
                        _4700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4700 + idx + 68] = mem[_4485 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4700 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4700 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4807] = 30
                    mem[_4807 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4940 + idx + 68] = mem[_4807 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4940 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4940 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _5607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5607] = 30
                    mem[_5607 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                    _5813 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5813 + idx + 68] = mem[_5607 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5813 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5813 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2859] = 30
                    mem[_2859 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2908 + idx + 68] = mem[_2859 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2908 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2908 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3044 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3044] = 30
                    mem[_3044 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3068 + idx + 68] = mem[_3044 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3068 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3068 + -mem[64] + 100
                _2894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2894] = 26
                mem[_2894 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2916 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2916 + idx + 68] = mem[_2894 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2916 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2916 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            return 0
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3366] = 30
                        mem[_3366 + 32] = 'SafeMath: subtraction overflow'
                        _3723 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3723] = 30
                        mem[_3723 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= 0:
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * 0 / stor25 * stor12 / totalSupply)
                        _3846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3846 + idx + 68] = mem[_3723 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3846 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3846 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3365] = 30
                        mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _3422 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3422 + idx + 68] = mem[_3365 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3422 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3422 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3722 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3722] = 30
                        mem[_3722 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply)
                        _3845 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3845 + idx + 68] = mem[_3722 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3845 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3845 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3890] = 30
                    mem[_3890 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        _4011 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4011 + idx + 68] = mem[_3890 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4011 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4011 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4710] = 30
                    mem[_4710 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                    _4894 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4894 + idx + 68] = mem[_4710 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4894 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4894 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not 0 / stor25:
                        _3364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3364] = 30
                        mem[_3364 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3421 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3421 + idx + 68] = mem[_3364 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3421 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3421 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3720 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3720] = 30
                        mem[_3720 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3844 + idx + 68] = mem[_3720 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3844 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3844 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3889 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3889] = 30
                    mem[_3889 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _4008 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4008 + idx + 68] = mem[_3889 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4008 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4008 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _4708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4708] = 30
                    mem[_4708 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                    _4892 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4892 + idx + 68] = mem[_4708 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4892 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4892 + -mem[64] + 100
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    _3888 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3888] = 30
                    mem[_3888 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4007 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4007 + idx + 68] = mem[_3888 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4007 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4007 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4707] = 30
                    mem[_4707 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply))
                    _4891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4891 + idx + 68] = mem[_4707 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4891 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4891 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4947 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4947] = 30
                mem[_4947 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _5106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5106 + idx + 68] = mem[_4947 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5106 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5106 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _5817 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5817] = 30
                mem[_5817 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
                _5923 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5923 + idx + 68] = mem[_5817 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5923 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5923 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            return 0
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor25 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        return (-1 * 0 / stor25 * t / s)
                    if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if arg1 * _reflectFee / stor25 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _reflectFee / stor25 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor25 * t / s < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _reflectFee / stor25 * t / s)
                    if 0 / stor25 and t / s > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * t / s / 0 / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor25 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor25 * t / s:
                        revert with 'NH{q', 17
                    if 0 / stor25 * t / s > -1 * arg1 * _reflectFee / stor25 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor25 * t / s < 0 / stor25 * t / s:
                        revert with 'NH{q', 17
                    return ((-1 * arg1 * _reflectFee / stor25 * t / s) - (0 / stor25 * t / s))
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not 0 / stor25:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        return (arg1 * t / s)
                    if 0 / stor25 and t / s > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * t / s / 0 / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 / stor25 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor25 * t / s:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - (0 / stor25 * t / s))
                if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s))
                if 0 / stor25 and t / s > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * t / s / 0 / stor25 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                    revert with 'NH{q', 17
                if 0 / stor25 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0 / stor25 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) - (0 / stor25 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _reflectFee / stor25:
                    if not 0 / stor25:
                        return 0
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (-1 * 0 / stor25 * stor12 / totalSupply)
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply)
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if 0 / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor25:
                if not 0 / stor25:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
            if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            if not arg1 * _reflectFee / stor25:
                revert with 'NH{q', 18
            if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor25:
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply))
            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                revert with 'NH{q', 17
            if not 0 / stor25:
                revert with 'NH{q', 18
            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply))
        if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor25:
            revert with 'NH{q', 18
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _reflectFee / stor25 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _reflectFee / stor25:
            revert with 'NH{q', 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 > arg1 - (arg1 * _reflectFee / stor25):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _reflectFee / stor25) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _2796 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2796] = 26
                mem[_2796 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2891 + idx + 68] = mem[_2796 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2891 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2891 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3329] = 30
                        mem[_3329 + 32] = 'SafeMath: subtraction overflow'
                        _3623 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3623] = 30
                        mem[_3623 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply)
                        _3709 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3709 + idx + 68] = mem[_3623 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3709 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3709 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3328] = 30
                        mem[_3328 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _3358 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3358 + idx + 68] = mem[_3328 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3358 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3358 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3622] = 30
                        mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply)
                        _3708 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3708 + idx + 68] = mem[_3622 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3708 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3708 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3781] = 30
                    mem[_3781 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        _3873 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3873 + idx + 68] = mem[_3781 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3873 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3873 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4465] = 30
                    mem[_4465 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                    _4690 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4690 + idx + 68] = mem[_4465 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4690 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4690 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3327] = 30
                        mem[_3327 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3357 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3357 + idx + 68] = mem[_3327 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3357 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3357 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3620 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3620] = 30
                        mem[_3620 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3707 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3707 + idx + 68] = mem[_3620 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3707 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3707 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3780] = 30
                    mem[_3780 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _3870 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3870 + idx + 68] = mem[_3780 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3870 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3870 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _4463 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4463] = 30
                    mem[_4463 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                    _4688 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4688 + idx + 68] = mem[_4463 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4688 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4688 + -mem[64] + 100
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _3779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3779] = 30
                    mem[_3779 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3869 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3869 + idx + 68] = mem[_3779 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3869 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3869 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4462] = 30
                    mem[_4462 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply))
                    _4687 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4687 + idx + 68] = mem[_4462 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4687 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4687 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4793] = 30
                mem[_4793 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _4929 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4929 + idx + 68] = mem[_4793 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4929 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4929 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _5589 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5589] = 30
                mem[_5589 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                _5805 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5805 + idx + 68] = mem[_5589 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5805 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5805 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] <= s:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 1
                _2855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2855] = 30
                mem[_2855 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _2907 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2907 + idx + 68] = mem[_2855 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2907 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2907 + -mem[64] + 100
                if t < stor1[stor6[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                _3043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3043] = 30
                mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    if s < stor2[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _3067 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3067 + idx + 68] = mem[_3043 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3067 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3067 + -mem[64] + 100
            _2892 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2892] = 26
            mem[_2892 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2915 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2915 + idx + 68] = mem[_2892 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2915 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2915 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _reflectFee / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3361] = 30
                    mem[_3361 + 32] = 'SafeMath: subtraction overflow'
                    _3714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3714] = 30
                    mem[_3714 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply)
                    _3842 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3842 + idx + 68] = mem[_3714 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3842 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3842 + -mem[64] + 100
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _3360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3360] = 30
                    mem[_3360 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        _3420 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3420 + idx + 68] = mem[_3360 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3420 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3420 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3713] = 30
                    mem[_3713 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply)
                    _3841 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3841 + idx + 68] = mem[_3713 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3841 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3841 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3879 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3879] = 30
                mem[_3879 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                    _4003 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4003 + idx + 68] = mem[_3879 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4003 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4003 + -mem[64] + 100
                if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _4697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4697] = 30
                mem[_4697 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                _4888 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4888 + idx + 68] = mem[_4697 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4888 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4888 + -mem[64] + 100
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor25:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _3359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3359] = 30
                    mem[_3359 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _3419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3419 + idx + 68] = mem[_3359 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3419 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3419 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3711] = 30
                    mem[_3711 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _3840 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3840 + idx + 68] = mem[_3711 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3840 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3840 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3878 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3878] = 30
                mem[_3878 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _4000 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4000 + idx + 68] = mem[_3878 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4000 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4000 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                _4695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4695] = 30
                mem[_4695 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                    if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
                _4886 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4886 + idx + 68] = mem[_4695 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4886 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4886 + -mem[64] + 100
            if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            if not arg1 * _reflectFee / stor25:
                revert with 'NH{q', 18
            if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                _3877 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3877] = 30
                mem[_3877 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3999 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3999 + idx + 68] = mem[_3877 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3999 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3999 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _4694 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4694] = 30
                mem[_4694 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply))
                _4885 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4885 + idx + 68] = mem[_4694 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4885 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4885 + -mem[64] + 100
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _4936 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4936] = 30
            mem[_4936 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                _5099 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5099 + idx + 68] = mem[_4936 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5099 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5099 + -mem[64] + 100
            if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            _5809 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5809] = 30
            mem[_5809 + 32] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
            _5919 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_5919 + idx + 68] = mem[_5809 + idx + 32]
                idx = idx + 32
                continue 
            mem[_5919 + 98] = 0
            revert with memory
              from mem[64]
               len _5919 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor12 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _reflectFee / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                        revert with 'NH{q', 17
                    return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s)
                if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if arg1 * _reflectFee / stor25 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor25 * t / s:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _reflectFee / stor25 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor25 * t / s < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _reflectFee / stor25 * t / s)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor25 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor25 * t / s:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > -1 * arg1 * _reflectFee / stor25 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor25 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                    revert with 'NH{q', 17
                return ((-1 * arg1 * _reflectFee / stor25 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor25:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s))
            if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            if not arg1 * _reflectFee / stor25:
                revert with 'NH{q', 18
            if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                    revert with 'NH{q', 17
                if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s))
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                revert with 'NH{q', 17
            return ((arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s))
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            if not arg1 * _reflectFee / stor25:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    return 0
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply)
            if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            if not arg1 * _reflectFee / stor25:
                revert with 'NH{q', 18
            if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply)
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            return ((-1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
        if arg1 and stor12 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _reflectFee / stor25:
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor12 / totalSupply)
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
            revert with 'NH{q', 17
        if not arg1 * _reflectFee / stor25:
            revert with 'NH{q', 18
        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply))
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
            revert with 'NH{q', 17
        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
            revert with 'NH{q', 18
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
            revert with 'NH{q', 17
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
            revert with 'NH{q', 17
        return ((arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor25:
            revert with 'NH{q', 18
        if _liquidityFee > -_marketingFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1 - (0 / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor25) < 0 / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2848] = 26
                    mem[_2848 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2905 + idx + 68] = mem[_2848 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2905 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2905 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not 0 / stor25:
                            return 0
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _3348 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3348] = 30
                            mem[_3348 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _3392 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3392 + idx + 68] = mem[_3348 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3392 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3392 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _3689 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3689] = 30
                            mem[_3689 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                                if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _3768 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3768 + idx + 68] = mem[_3689 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3768 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3768 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3838] = 30
                        mem[_3838 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _3946 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3946 + idx + 68] = mem[_3838 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3946 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3946 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4615 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4615] = 30
                        mem[_4615 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _4776 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4776 + idx + 68] = mem[_4615 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4776 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4776 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3347] = 30
                        mem[_3347 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3391 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3391 + idx + 68] = mem[_3347 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3391 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3391 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3687 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3687] = 30
                        mem[_3687 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3767 + idx + 68] = mem[_3687 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3767 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3767 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3837] = 30
                        mem[_3837 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3943 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3943 + idx + 68] = mem[_3837 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3943 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3943 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4613] = 30
                        mem[_4613 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _4774 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4774 + idx + 68] = mem[_4613 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4774 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4774 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4882] = 30
                    mem[_4882 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _5003 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_5003 + idx + 68] = mem[_4882 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_5003 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5003 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _5706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5706] = 30
                    mem[_5706 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _5859 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5859 + idx + 68] = mem[_5706 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5859 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5859 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2886 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2886] = 30
                    mem[_2886 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2914 + idx + 68] = mem[_2886 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2914 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2914 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3050 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3050] = 30
                    mem[_3050 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3074 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3074 + idx + 68] = mem[_3050 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3074 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3074 + -mem[64] + 100
                _2906 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2906] = 26
                mem[_2906 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2922 + idx + 68] = mem[_2906 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2922 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2922 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        return 0
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3394 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3394] = 30
                        mem[_3394 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _3434 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3434 + idx + 68] = mem[_3394 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3434 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3434 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3771 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3771] = 30
                        mem[_3771 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3868 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3868 + idx + 68] = mem[_3771 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3868 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3868 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3950 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3950] = 30
                    mem[_3950 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        _4056 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4056 + idx + 68] = mem[_3950 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4056 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4056 + -mem[64] + 100
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4781] = 30
                    mem[_4781 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _4927 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4927 + idx + 68] = mem[_4781 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4927 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4927 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    _3393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3393] = 30
                    mem[_3393 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _3433 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3433 + idx + 68] = mem[_3393 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3433 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3433 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3769] = 30
                    mem[_3769 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _3867 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3867 + idx + 68] = mem[_3769 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3867 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3867 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    _3949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3949] = 30
                    mem[_3949 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4053 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4053 + idx + 68] = mem[_3949 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4053 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4053 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4779] = 30
                    mem[_4779 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _4925 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4925 + idx + 68] = mem[_4779 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4925 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4925 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5008] = 30
                mem[_5008 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _5146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5146 + idx + 68] = mem[_5008 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5146 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5146 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _5862 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5862] = 30
                mem[_5862 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _5946 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5946 + idx + 68] = mem[_5862 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5946 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5946 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if 0 / stor25:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 / stor25 * t / s > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                        return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if 0 / stor25 and t / s > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * t / s / 0 / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if 0 / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (0 / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor25 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 / stor25 * t / s > (arg1 * t / s) - (0 / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor25 * t / s) < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if 0 / stor25:
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                    return 0
                else:
                    return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor25:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 > arg1 - (0 / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor25) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2841 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2841] = 26
                    mem[_2841 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2903 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2903 + idx + 68] = mem[_2841 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2903 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2903 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not 0 / stor25:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                return 0
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3346 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3346] = 30
                            mem[_3346 + 32] = 'SafeMath: subtraction overflow'
                            _3681 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3681] = 30
                            mem[_3681 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _3760 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3760 + idx + 68] = mem[_3681 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3760 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3760 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _3345 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3345] = 30
                            mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply > 0:
                                _3387 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3387 + idx + 68] = mem[_3345 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3387 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3387 + -mem[64] + 100
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _3680 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3680] = 30
                            mem[_3680 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                                if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _3759 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3759 + idx + 68] = mem[_3680 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3759 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3759 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3832] = 30
                        mem[_3832 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _3936 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3936 + idx + 68] = mem[_3832 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3936 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3936 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4597] = 30
                        mem[_4597 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                            if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _4764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4764 + idx + 68] = mem[_4597 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4764 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4764 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _3344 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3344] = 30
                            mem[_3344 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _3386 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3386 + idx + 68] = mem[_3344 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3386 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3386 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _3678 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3678] = 30
                            mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _3758 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3758 + idx + 68] = mem[_3678 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3758 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3758 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3831] = 30
                        mem[_3831 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3933 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3933 + idx + 68] = mem[_3831 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3933 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3933 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _4595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4595] = 30
                        mem[_4595 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _4762 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4762 + idx + 68] = mem[_4595 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4762 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4762 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3830 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3830] = 30
                        mem[_3830 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3932 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3932 + idx + 68] = mem[_3830 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3932 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3932 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4594] = 30
                        mem[_4594 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _4761 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4761 + idx + 68] = mem[_4594 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4761 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4761 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4872] = 30
                    mem[_4872 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4992 + idx + 68] = mem[_4872 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4992 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4992 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _5692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5692] = 30
                    mem[_5692 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _5851 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5851 + idx + 68] = mem[_5692 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5851 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5851 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2882] = 30
                    mem[_2882 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2913 + idx + 68] = mem[_2882 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2913 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2913 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3049] = 30
                    mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3073 + idx + 68] = mem[_3049 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3073 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3073 + -mem[64] + 100
                _2904 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2904] = 26
                mem[_2904 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2921 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2921 + idx + 68] = mem[_2904 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2921 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2921 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3390] = 30
                        mem[_3390 + 32] = 'SafeMath: subtraction overflow'
                        _3765 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3765] = 30
                        mem[_3765 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3865 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3865 + idx + 68] = mem[_3765 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3865 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3865 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3389] = 30
                        mem[_3389 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            _3432 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3432 + idx + 68] = mem[_3389 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3432 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3432 + -mem[64] + 100
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3764] = 30
                        mem[_3764 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor25 * stor12 / totalSupply:
                            if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3864 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3864 + idx + 68] = mem[_3764 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3864 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3864 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3942] = 30
                    mem[_3942 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > 0:
                        _4049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4049 + idx + 68] = mem[_3942 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4049 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4049 + -mem[64] + 100
                    if 0 < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4771] = 30
                    mem[_4771 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * 0 / stor25 * stor12 / totalSupply:
                        if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _4922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4922 + idx + 68] = mem[_4771 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4922 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4922 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3388 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3388] = 30
                        mem[_3388 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3431 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3431 + idx + 68] = mem[_3388 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3431 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3431 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3762 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3762] = 30
                        mem[_3762 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3863 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3863 + idx + 68] = mem[_3762 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3863 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3863 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3941] = 30
                    mem[_3941 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _4046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4046 + idx + 68] = mem[_3941 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4046 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4046 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _4769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4769] = 30
                    mem[_4769 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _4920 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4920 + idx + 68] = mem[_4769 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4920 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4920 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _3940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3940] = 30
                    mem[_3940 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4045 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4045 + idx + 68] = mem[_3940 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4045 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4045 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4768] = 30
                    mem[_4768 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _4919 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4919 + idx + 68] = mem[_4768 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4919 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4919 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4999] = 30
                mem[_4999 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _5139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5139 + idx + 68] = mem[_4999 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5139 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5139 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _5855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5855] = 30
                mem[_5855 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _5942 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5942 + idx + 68] = mem[_5855 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5942 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5942 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not 0 / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > -1 * 0 / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor25 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                            revert with 'NH{q', 17
                else:
                    if 0 / stor25 and t / s > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * t / s / 0 / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if 0 / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (0 / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor25 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > (arg1 * t / s) - (0 / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor25 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not 0 / stor25:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * 0 / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * 0 / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor25:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (0 / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
    else:
        if arg1 and _reflectFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _reflectFee / arg1 != _reflectFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if stor25 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor25:
            revert with 'NH{q', 18
        if _liquidityFee > -_marketingFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor25 > arg1 - (arg1 * _reflectFee / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor25) < 0 / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2833] = 26
                    mem[_2833 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2901 + idx + 68] = mem[_2833 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2901 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2901 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _reflectFee / stor25:
                            if not 0 / stor25:
                                return 0
                            if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3343] = 30
                            mem[_3343 + 32] = 'SafeMath: subtraction overflow'
                            _3671 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3671] = 30
                            mem[_3671 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor25 * stor12 / totalSupply <= 0:
                                if 0 < 0 / stor25 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _3751 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3751 + idx + 68] = mem[_3671 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3751 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3751 + -mem[64] + 100
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            _3342 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3342] = 30
                            mem[_3342 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                _3382 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3382 + idx + 68] = mem[_3342 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3382 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3382 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _3670 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3670] = 30
                            mem[_3670 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _3750 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3750 + idx + 68] = mem[_3670 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3750 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3750 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3823] = 30
                        mem[_3823 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _3925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3925 + idx + 68] = mem[_3823 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3925 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3925 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4574] = 30
                        mem[_4574 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _4751 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4751 + idx + 68] = mem[_4574 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4751 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4751 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            _3341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3341] = 30
                            mem[_3341 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _3381 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3381 + idx + 68] = mem[_3341 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3381 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3381 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _3668 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3668] = 30
                            mem[_3668 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _3749 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3749 + idx + 68] = mem[_3668 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3749 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3749 + -mem[64] + 100
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3822] = 30
                        mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3922 + idx + 68] = mem[_3822 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3922 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _4572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4572] = 30
                        mem[_4572 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _4749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4749 + idx + 68] = mem[_4572 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4749 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4749 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3821 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3821] = 30
                        mem[_3821 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3921 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3921 + idx + 68] = mem[_3821 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3921 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3921 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4571] = 30
                        mem[_4571 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _4748 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4748 + idx + 68] = mem[_4571 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4748 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4748 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4858] = 30
                    mem[_4858 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4981 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4981 + idx + 68] = mem[_4858 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4981 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4981 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _5674 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5674] = 30
                    mem[_5674 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _5843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5843 + idx + 68] = mem[_5674 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5843 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5843 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2877 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2877] = 30
                    mem[_2877 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2912 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2912 + idx + 68] = mem[_2877 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2912 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2912 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3048 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3048] = 30
                    mem[_3048 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3072 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3072 + idx + 68] = mem[_3048 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3072 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3072 + -mem[64] + 100
                _2902 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2902] = 26
                mem[_2902 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2920 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2920 + idx + 68] = mem[_2902 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2920 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2920 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if not 0 / stor25:
                            return 0
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3385] = 30
                        mem[_3385 + 32] = 'SafeMath: subtraction overflow'
                        _3756 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3756] = 30
                        mem[_3756 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor25 * stor12 / totalSupply <= 0:
                            if 0 < 0 / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3861 + idx + 68] = mem[_3756 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3861 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3861 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        _3384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3384] = 30
                        mem[_3384 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _3430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3430 + idx + 68] = mem[_3384 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3430 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3430 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3755 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3755] = 30
                        mem[_3755 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3860 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3860 + idx + 68] = mem[_3755 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3860 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3860 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3931] = 30
                    mem[_3931 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        _4041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4041 + idx + 68] = mem[_3931 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4041 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4041 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4758] = 30
                    mem[_4758 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _4916 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4916 + idx + 68] = mem[_4758 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4916 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4916 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not 0 / stor25:
                        _3383 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3383] = 30
                        mem[_3383 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3429 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3429 + idx + 68] = mem[_3383 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3429 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3429 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3753 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3753] = 30
                        mem[_3753 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3859 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3859 + idx + 68] = mem[_3753 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3859 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3859 + -mem[64] + 100
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3930 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3930] = 30
                    mem[_3930 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _4038 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4038 + idx + 68] = mem[_3930 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4038 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4038 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _4756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4756] = 30
                    mem[_4756 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _4914 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4914 + idx + 68] = mem[_4756 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4914 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4914 + -mem[64] + 100
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    _3929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3929] = 30
                    mem[_3929 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4037 + idx + 68] = mem[_3929 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4037 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4755 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4755] = 30
                    mem[_4755 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _4913 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4913 + idx + 68] = mem[_4755 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4913 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4913 + -mem[64] + 100
                if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                    revert with 'NH{q', 17
                if not 0 / stor25:
                    revert with 'NH{q', 18
                if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4988 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4988] = 30
                mem[_4988 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _5132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5132 + idx + 68] = mem[_4988 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5132 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5132 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _5847 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5847] = 30
                mem[_5847 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _5938 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5938 + idx + 68] = mem[_5847 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5938 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5938 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if 0 / stor25:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor25:
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if 0 / stor25 and t / s > -1 / 0 / stor25:
                                revert with 'NH{q', 17
                            if not 0 / stor25:
                                revert with 'NH{q', 18
                            if 0 / stor25 * t / s / 0 / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 / stor25 * t / s > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < 0 / stor25 * t / s:
                                revert with 'NH{q', 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not 0 / stor25:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and t / s > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * t / s / 0 / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 / stor25 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0 / stor25 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _reflectFee / stor25:
                    if 0 / stor25:
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor25:
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                            revert with 'NH{q', 17
                        if not 0 / stor25:
                            revert with 'NH{q', 18
                        if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor25:
                if not 0 / stor25:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor25:
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if 0 / stor25 and stor12 / totalSupply > -1 / 0 / stor25:
                        revert with 'NH{q', 17
                    if not 0 / stor25:
                        revert with 'NH{q', 18
                    if 0 / stor25 * stor12 / totalSupply / 0 / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0 / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if stor25 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor25:
                revert with 'NH{q', 18
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor25 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor25:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 > arg1 - (arg1 * _reflectFee / stor25):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor25) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2826 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2826] = 26
                    mem[_2826 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2899 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2899 + idx + 68] = mem[_2826 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2899 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2899 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _reflectFee / stor25:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                return 0
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3340 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3340] = 30
                            mem[_3340 + 32] = 'SafeMath: subtraction overflow'
                            _3661 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3661] = 30
                            mem[_3661 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _3742 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3742 + idx + 68] = mem[_3661 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3742 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3742 + -mem[64] + 100
                        if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _3339 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3339] = 30
                            mem[_3339 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                                _3377 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3377 + idx + 68] = mem[_3339 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3377 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3377 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _3660 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3660] = 30
                            mem[_3660 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _3741 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3741 + idx + 68] = mem[_3660 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3741 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3741 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3814 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3814] = 30
                        mem[_3814 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _3914 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3914 + idx + 68] = mem[_3814 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3914 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3914 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4551] = 30
                        mem[_4551 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _4738 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4738 + idx + 68] = mem[_4551 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4738 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4738 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            _3338 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3338] = 30
                            mem[_3338 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _3376 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3376 + idx + 68] = mem[_3338 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3376 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3376 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _3658 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3658] = 30
                            mem[_3658 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _3740 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3740 + idx + 68] = mem[_3658 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3740 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3740 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3813 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3813] = 30
                        mem[_3813 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3911 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3911 + idx + 68] = mem[_3813 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3911 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3911 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _4549 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4549] = 30
                        mem[_4549 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _4736 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4736 + idx + 68] = mem[_4549 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4736 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4736 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3812 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3812] = 30
                        mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3910 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3910 + idx + 68] = mem[_3812 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3910 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3910 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _4548 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4548] = 30
                        mem[_4548 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _4735 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4735 + idx + 68] = mem[_4548 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4735 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4735 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4844] = 30
                    mem[_4844 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4970 + idx + 68] = mem[_4844 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4970 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4970 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _5656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5656] = 30
                    mem[_5656 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _5835 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5835 + idx + 68] = mem[_5656 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5835 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5835 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2873 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2873] = 30
                    mem[_2873 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2911 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2911 + idx + 68] = mem[_2873 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2911 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2911 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3047] = 30
                    mem[_3047 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3071 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3071 + idx + 68] = mem[_3047 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3071 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3071 + -mem[64] + 100
                _2900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2900] = 26
                mem[_2900 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2919 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2919 + idx + 68] = mem[_2900 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2919 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2919 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3380] = 30
                        mem[_3380 + 32] = 'SafeMath: subtraction overflow'
                        _3747 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3747] = 30
                        mem[_3747 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3857 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3857 + idx + 68] = mem[_3747 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3857 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3857 + -mem[64] + 100
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3379] = 30
                        mem[_3379 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            _3428 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3428 + idx + 68] = mem[_3379 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3428 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3428 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3746 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3746] = 30
                        mem[_3746 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3856 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3856 + idx + 68] = mem[_3746 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3856 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3856 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3920] = 30
                    mem[_3920 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                        _4033 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4033 + idx + 68] = mem[_3920 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4033 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4033 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4745 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4745] = 30
                    mem[_4745 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _4910 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4910 + idx + 68] = mem[_4745 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4910 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4910 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        _3378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3378] = 30
                        mem[_3378 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _3427 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3427 + idx + 68] = mem[_3378 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3427 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3427 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3744 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3744] = 30
                        mem[_3744 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _3855 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3855 + idx + 68] = mem[_3744 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3855 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3855 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3919 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3919] = 30
                    mem[_3919 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _4030 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4030 + idx + 68] = mem[_3919 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4030 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4030 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _4743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4743] = 30
                    mem[_4743 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _4908 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4908 + idx + 68] = mem[_4743 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4908 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4908 + -mem[64] + 100
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    _3918 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3918] = 30
                    mem[_3918 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _4029 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4029 + idx + 68] = mem[_3918 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4029 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4029 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _4742 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4742] = 30
                    mem[_4742 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _4907 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4907 + idx + 68] = mem[_4742 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4907 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4907 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4977 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4977] = 30
                mem[_4977 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _5125 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5125 + idx + 68] = mem[_4977 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5125 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5125 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _5839 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5839] = 30
                mem[_5839 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _5934 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_5934 + idx + 68] = mem[_5839 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5934 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5934 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _reflectFee / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 17
                        if not arg1 * _reflectFee / stor25:
                            revert with 'NH{q', 18
                        if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor25 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor25 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > -1 * arg1 * _reflectFee / stor25 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor25 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                                revert with 'NH{q', 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor25:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _reflectFee / stor25 and t / s > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * t / s / arg1 * _reflectFee / stor25 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor25 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor25 * t / s:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor25 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _reflectFee / stor25:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 17
                    if not arg1 * _reflectFee / stor25:
                        revert with 'NH{q', 18
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor25 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor25 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor25:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if arg1 * _reflectFee / stor25 and stor12 / totalSupply > -1 / arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 17
                if not arg1 * _reflectFee / stor25:
                    revert with 'NH{q', 18
                if arg1 * _reflectFee / stor25 * stor12 / totalSupply / arg1 * _reflectFee / stor25 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 and stor12 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor25 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _reflectFee / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _reflectFee / stor25 * stor12 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor25 * stor12 / totalSupply:
                        revert with 'NH{q', 17
    return (arg1 * stor12 / totalSupply)
}



}

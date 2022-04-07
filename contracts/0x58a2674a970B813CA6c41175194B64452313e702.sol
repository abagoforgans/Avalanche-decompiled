contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferBatch(address[] arg1, uint256[] arg2)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address stor6;
mapping of uint8 stor7;
uint256 stor9;
uint8 decimals;
uint256 stor11;
uint256 totalSupply;
uint256 stor13;
uint256 totalFees;
array of struct stor15;
array of struct stor16;
uint256 _reflectFee;
uint256 stor19;
uint256 _liquidityFee;
uint256 stor22;
uint256 _marketingFee;
uint256 stor25;
uint256 stor26;
address dexRouterAddress;
address lpPairAddress;
address burnAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor31; offset 168
address stor31;
uint256 stor34;
uint256 maxTxAmountUI;
uint256 stor39;
uint256 maxWalletSizeUI;

function dexRouter() {
    return dexRouterAddress
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
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

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor19
    _reflectFee = arg1
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

function setMarketingFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor25
    _marketingFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor22
    _liquidityFee = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor31.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(stor31.field_0) == arg1:
        revert with 0, 'Wallet already set!'
    address(stor31.field_0) = arg1
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not a recorded sniper.'
    stor7[address(arg1)] = 0
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
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
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
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if idx >= stor6.length:
            revert with 0, 50
        stor6[idx] = stor6[stor6.length]
        stor2[address(arg1)] = 0
        stor5[address(arg1)] = 0
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length] = 0
        stor6.length--
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 10000
    if not totalSupply:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor34 = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor34 = totalSupply * arg1 / arg2
    if not stor9:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        maxTxAmountUI = 0 / arg2
    else:
        if stor9 and arg1 > -1 / stor9:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if stor9 * arg1 / stor9 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        maxTxAmountUI = stor9 * arg1 / arg2
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 1000
    if not totalSupply:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor39 = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor39 = totalSupply * arg1 / arg2
    if not stor9:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        maxWalletSizeUI = 0 / arg2
    else:
        if stor9 and arg1 > -1 / stor9:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if stor9 * arg1 / stor9 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        maxWalletSizeUI = stor9 * arg1 / arg2
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor11:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        stor34 = arg1
    else:
        if bool(bool(stor11 < 78)) or bool(bool(stor11 < 32)):
            if arg1 and 10^stor11 > -1 / arg1:
                revert with 0, 17
            stor34 = arg1 * 10^stor11
        else:
            s = 10
            t = 1
            idx = stor11
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            stor34 = arg1 * s * t
    if not stor11:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        maxTxAmountUI = arg1
    else:
        if bool(bool(stor11 < 78)) or bool(bool(stor11 < 32)):
            if arg1 and 10^stor11 > -1 / arg1:
                revert with 0, 17
            maxTxAmountUI = arg1 * 10^stor11
        else:
            s = 10
            t = 1
            idx = stor11
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            maxTxAmountUI = arg1 * s * t
}

function name() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
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

function symbol() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[ceil32(uint255(stor16.length) * 0.5) + (uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor13
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _96 + 68] = mem[idx + _92 + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (arg1 / stor13 / totalSupply)
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = 26
            mem[_98 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _103 + 68] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                mem[_103 + 94] = 0
                revert with memory
                  from mem[64]
                   len _103 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (arg1 / stor13 / totalSupply)
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _133 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_133 + 94] = 0
            revert with memory
              from mem[64]
               len _133 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _97 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if t < stor1[stor6[idx]]:
            revert with 0, 17
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _132 + 68] = mem[idx + _127 + 32]
            idx = idx + 32
            continue 
        mem[_132 + 98] = 0
        revert with memory
          from mem[64]
           len _132 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor13 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor13 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor13 / totalSupply)
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
    if stor1[address(arg1)] > stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor13
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _101 + 68] = mem[idx + _97 + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 26
            mem[_122 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (stor1[address(arg1)] / stor13 / totalSupply)
            _131 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _131 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_131 + 94] = 0
            revert with memory
              from mem[64]
               len _131 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _108 + 68] = mem[idx + _103 + 32]
                    idx = idx + 32
                    continue 
                mem[_108 + 94] = 0
                revert with memory
                  from mem[64]
                   len _108 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (stor1[address(arg1)] / stor13 / totalSupply)
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _138 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 94] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _102 + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
        if t < stor1[stor6[idx]]:
            revert with 0, 17
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _137 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _137 + 68] = mem[idx + _132 + 32]
            idx = idx + 32
            continue 
        mem[_137 + 98] = 0
        revert with memory
          from mem[64]
           len _137 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor13 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor1[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor13 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor1[address(arg1)] / stor13 / totalSupply)
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
    if stor1[address(arg1)]:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor13
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_100] = 26
                mem[_100 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _104 + 68] = mem[idx + _100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_104 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _104 + -mem[64] + 100
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor13 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor13 / totalSupply
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _134 + 68] = mem[idx + _125 + 32]
                    idx = idx + 32
                    continue 
                mem[_134 + 94] = 0
                revert with memory
                  from mem[64]
                   len _134 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _111 + 68] = mem[idx + _106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor13 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor13 / totalSupply
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 1
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _105 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 98] = 0
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            if t < stor1[stor6[idx]]:
                revert with 0, 17
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 2
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                if s < stor2[stor6[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
                continue 
            _140 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _140 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_140 + 98] = 0
            revert with memory
              from mem[64]
               len _140 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor13 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor13 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / stor13 / totalSupply
    stor5[address(arg1)] = 1
    stor6.length++
    stor6[stor6.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not stor26:
                revert with 0, 'SafeMath: division by zero', 0
            if _liquidityFee > !_marketingFee:
                revert with 0, 17
            if _liquidityFee + _marketingFee < _liquidityFee:
                revert with 0, 'SafeMath: addition overflow'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                if not stor26:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 / stor26 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0 / stor26:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 / stor26 > arg1 - (0 / stor26):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (0 / stor26) < 0 / stor26:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor13
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    if stor1[stor6[idx]] > t:
                        _4070 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4070] = 26
                        mem[_4070 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _4108 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4108 + 68] = mem[idx + _4070 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4108 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4108 + -mem[64] + 100
                        if not arg1:
                            if not 0 / stor26:
                                return 0
                            if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                                revert with 0, 17
                            if not 0 / stor26:
                                revert with 0, 18
                            if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 0 / stor26:
                                _4568 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4568] = 30
                                mem[_4568 + 32] = 'SafeMath: subtraction overflow'
                                if 0 / stor26 * stor13 / totalSupply > 0:
                                    _4655 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4655 + 68] = mem[idx + _4568 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4655 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4655 + -mem[64] + 100
                                if 0 < 0 / stor26 * stor13 / totalSupply:
                                    revert with 0, 17
                                _5038 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5038] = 30
                                mem[_5038 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                                    if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                        revert with 0, 17
                                    return (-1 * 0 / stor26 * stor13 / totalSupply)
                                _5229 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5229 + 68] = mem[idx + _5038 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5229 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5229 + -mem[64] + 100
                            if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                                revert with 0, 17
                            if not 0 / stor26:
                                revert with 0, 18
                            if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4865 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4865] = 30
                            mem[_4865 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply > 0:
                                _5037 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5037 + 68] = mem[idx + _4865 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5037 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5037 + -mem[64] + 100
                            if 0 < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5737 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5737] = 30
                            mem[_5737 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                                if -1 * 0 / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * 0 / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                            _6035 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6035 + 68] = mem[idx + _5737 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6035 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6035 + -mem[64] + 100
                        if arg1 and stor13 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            _4567 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4567] = 30
                            mem[_4567 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4654 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4654 + 68] = mem[idx + _4567 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4654 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4654 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5035 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5035] = 30
                            mem[_5035 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5228 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5228 + 68] = mem[idx + _5035 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5228 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5228 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            _4864 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4864] = 30
                            mem[_4864 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                                _5034 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5034 + 68] = mem[idx + _4864 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5034 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5034 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5735 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5735] = 30
                            mem[_5735 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                                if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                            _6033 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6033 + 68] = mem[idx + _5735 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6033 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6033 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5466] = 30
                        mem[_5466 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5734 + 68] = mem[idx + _5466 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5734 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5734 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _6610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6610] = 30
                        mem[_6610 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                        _6898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6898 + 68] = mem[idx + _6610 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6898 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6898 + -mem[64] + 100
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    if stor2[stor6[idx]] <= s:
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = stor6[idx]
                        mem[32] = 1
                        _4109 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4109] = 30
                        mem[_4109 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor6[idx]] > t:
                            _4149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4149 + 68] = mem[idx + _4109 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4149 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4149 + -mem[64] + 100
                        if t < stor1[stor6[idx]]:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = stor6[idx]
                        mem[32] = 2
                        _4326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4326] = 30
                        mem[_4326 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor6[idx]] <= s:
                            if s < stor2[stor6[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor2[stor6[idx]]
                            t = t - stor1[stor6[idx]]
                            continue 
                        _4350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4350 + 68] = mem[idx + _4326 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4350 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4350 + -mem[64] + 100
                    _4110 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4110] = 26
                    mem[_4110 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4150 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4150 + 68] = mem[idx + _4110 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4150 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4150 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor26:
                            return 0
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            _4659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4659] = 30
                            mem[_4659 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply > 0:
                                _4734 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4734 + 68] = mem[idx + _4659 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4734 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4734 + -mem[64] + 100
                            if 0 < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5234 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5234] = 30
                            mem[_5234 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                                if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * 0 / stor26 * stor13 / totalSupply)
                            _5469 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5469 + 68] = mem[idx + _5234 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5469 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5469 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5041 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5041] = 30
                        mem[_5041 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            _5233 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5233 + 68] = mem[idx + _5041 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5233 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5233 + -mem[64] + 100
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _6040 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6040] = 30
                        mem[_6040 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                            if -1 * 0 / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((-1 * 0 / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                        _6317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6317 + 68] = mem[idx + _6040 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6317 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6317 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4658 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4658] = 30
                        mem[_4658 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4733 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4733 + 68] = mem[idx + _4658 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4733 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4733 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5231 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5231] = 30
                        mem[_5231 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5468 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5468 + 68] = mem[idx + _5231 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5468 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5468 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _5040 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5040] = 30
                        mem[_5040 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5230 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5230 + 68] = mem[idx + _5040 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5230 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5230 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _6038 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6038] = 30
                        mem[_6038 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                        _6315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6315 + 68] = mem[idx + _6038 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6315 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6315 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5740 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5740] = 30
                    mem[_5740 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _6037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6037 + 68] = mem[idx + _5740 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6037 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6901] = 30
                    mem[_6901 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                    _7085 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7085 + 68] = mem[idx + _6901 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7085 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7085 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor13 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not 0 / stor26:
                            return 0
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            if 0 / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor26 * t / s:
                                revert with 0, 17
                            if 0 > -1 * 0 / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor26 * t / s < 0:
                                revert with 0, 17
                            return (-1 * 0 / stor26 * t / s)
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor26 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * t / s:
                            revert with 0, 17
                        if 0 / stor26 * t / s > -1 * 0 / stor26 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor26 * t / s < 0 / stor26 * t / s:
                            revert with 0, 17
                        return ((-1 * 0 / stor26 * t / s) - (0 / stor26 * t / s))
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if 0 / stor26 and t / s > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * t / s / 0 / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if 0 / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor26 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (0 / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor26 * t / s) < 0:
                            revert with 0, 17
                        return ((arg1 * t / s) - (0 / stor26 * t / s))
                    if 0 / stor26 and t / s > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * t / s / 0 / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor26 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor26 * t / s:
                        revert with 0, 17
                    if 0 / stor26 * t / s > (arg1 * t / s) - (0 / stor26 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (0 / stor26 * t / s) < 0 / stor26 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (0 / stor26 * t / s) - (0 / stor26 * t / s))
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not 0 / stor26:
                        return 0
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * 0 / stor26 * stor13 / totalSupply)
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor26 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 / stor26 * stor13 / totalSupply > -1 * 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((-1 * 0 / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor26:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor26 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor26:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 > arg1 - (0 / stor26):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor26) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4069] = 26
                    mem[_4069 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4105 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4105 + 68] = mem[idx + _4069 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4105 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4105 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor26:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                return 0
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4560 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4560] = 30
                            mem[_4560 + 32] = 'SafeMath: subtraction overflow'
                            _5024 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5024] = 30
                            mem[_5024 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                    revert with 0, 17
                                return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply)
                            _5216 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5216 + 68] = mem[idx + _5024 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5216 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5216 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            _4559 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4559] = 30
                            mem[_4559 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply > 0:
                                _4648 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4648 + 68] = mem[idx + _4559 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4648 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4648 + -mem[64] + 100
                            if 0 < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5022 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5022] = 30
                            mem[_5022 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                                if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * 0 / stor26 * stor13 / totalSupply)
                            _5215 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5215 + 68] = mem[idx + _5022 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5215 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5215 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4855] = 30
                        mem[_4855 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            _5021 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5021 + 68] = mem[idx + _4855 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5021 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5021 + -mem[64] + 100
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5718 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5718] = 30
                        mem[_5718 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                            if -1 * 0 / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((-1 * 0 / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                        _6016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6016 + 68] = mem[idx + _5718 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6016 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            _4558 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4558] = 30
                            mem[_4558 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4647 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4647 + 68] = mem[idx + _4558 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4647 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4647 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5019 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5019] = 30
                            mem[_5019 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5214 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5214 + 68] = mem[idx + _5019 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5214 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5214 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4854 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4854] = 30
                        mem[_4854 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5018 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5018 + 68] = mem[idx + _4854 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5018 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5018 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5716] = 30
                        mem[_5716 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                        _6014 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6014 + 68] = mem[idx + _5716 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6014 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6014 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4853] = 30
                        mem[_4853 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5017 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5017 + 68] = mem[idx + _4853 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5017 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5017 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5714 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5714] = 30
                        mem[_5714 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                        _6013 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6013 + 68] = mem[idx + _5714 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6013 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6013 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5457] = 30
                    mem[_5457 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5713 + 68] = mem[idx + _5457 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5713 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5713 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6593 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6593] = 30
                    mem[_6593 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                    _6881 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6881 + 68] = mem[idx + _6593 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6881 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6881 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4106] = 30
                    mem[_4106 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4146 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4146 + 68] = mem[idx + _4106 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4146 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4146 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4323] = 30
                    mem[_4323 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4347 + 68] = mem[idx + _4323 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4347 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4347 + -mem[64] + 100
                _4107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4107] = 26
                mem[_4107 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4147 + 68] = mem[idx + _4107 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4147 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4147 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4653 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4653] = 30
                        mem[_4653 + 32] = 'SafeMath: subtraction overflow'
                        _5224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5224] = 30
                        mem[_5224 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply)
                        _5461 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5461 + 68] = mem[idx + _5224 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5461 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5461 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4652 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4652] = 30
                        mem[_4652 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            _4730 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4730 + 68] = mem[idx + _4652 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4730 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4730 + -mem[64] + 100
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5222] = 30
                        mem[_5222 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                            if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * 0 / stor26 * stor13 / totalSupply)
                        _5460 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5460 + 68] = mem[idx + _5222 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5460 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5460 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5027 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5027] = 30
                    mem[_5027 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > 0:
                        _5221 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5221 + 68] = mem[idx + _5027 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5221 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5221 + -mem[64] + 100
                    if 0 < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6024] = 30
                    mem[_6024 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                        if -1 * 0 / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((-1 * 0 / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                    _6310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6310 + 68] = mem[idx + _6024 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6310 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6310 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4651 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4651] = 30
                        mem[_4651 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4729 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4729 + 68] = mem[idx + _4651 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4729 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4729 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5219] = 30
                        mem[_5219 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5459 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5459 + 68] = mem[idx + _5219 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5459 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5459 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5026] = 30
                    mem[_5026 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5218 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5218 + 68] = mem[idx + _5026 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5218 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5218 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6022] = 30
                    mem[_6022 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                    _6308 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6308 + 68] = mem[idx + _6022 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6308 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6308 + -mem[64] + 100
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    _5025 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5025] = 30
                    mem[_5025 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5217 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5217 + 68] = mem[idx + _5025 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5217 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5217 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6020 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6020] = 30
                    mem[_6020 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                    _6307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6307 + 68] = mem[idx + _6020 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6307 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6307 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5721] = 30
                mem[_5721 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6019 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6019 + 68] = mem[idx + _5721 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6019 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6019 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _6885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6885] = 30
                mem[_6885 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                _7081 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7081 + 68] = mem[idx + _6885 + 32]
                    idx = idx + 32
                    continue 
                mem[_7081 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7081 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not 0 / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                            revert with 0, 17
                        return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s)
                    if 0 / stor26 and t / s > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * t / s / 0 / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if 0 / stor26 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * t / s:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor26 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor26 * t / s < 0:
                            revert with 0, 17
                        return (-1 * 0 / stor26 * t / s)
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor26 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor26 * t / s:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > -1 * 0 / stor26 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor26 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                        revert with 0, 17
                    return ((-1 * 0 / stor26 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s))
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s))
                if 0 / stor26 and t / s > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * t / s / 0 / stor26 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if 0 / stor26 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor26 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (0 / stor26 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (0 / stor26 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (0 / stor26 * t / s))
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor26 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0 / stor26 * t / s:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > (arg1 * t / s) - (0 / stor26 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (0 / stor26 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (0 / stor26 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not 0 / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply)
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if 0 / stor26 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * 0 / stor26 * stor13 / totalSupply)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor26 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > -1 * 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * 0 / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                return ((-1 * 0 / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor26:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
            if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                revert with 0, 17
            if not 0 / stor26:
                revert with 0, 18
            if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
        if arg1 and _reflectFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _reflectFee / arg1 != _reflectFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not stor26:
            revert with 0, 'SafeMath: division by zero', 0
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor26:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor26 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor26:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor26 > arg1 - (arg1 * _reflectFee / stor26):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor26) < 0 / stor26:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4068 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4068] = 26
                    mem[_4068 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4102 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4102 + 68] = mem[idx + _4068 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4102 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4102 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor26:
                            if not 0 / stor26:
                                return 0
                            if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                                revert with 0, 17
                            if not 0 / stor26:
                                revert with 0, 18
                            if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4551 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4551] = 30
                            mem[_4551 + 32] = 'SafeMath: subtraction overflow'
                            _5007 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5007] = 30
                            mem[_5007 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply <= 0:
                                if 0 < 0 / stor26 * stor13 / totalSupply:
                                    revert with 0, 17
                                return (-1 * 0 / stor26 * stor13 / totalSupply)
                            _5200 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5200 + 68] = mem[idx + _5007 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5200 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5200 + -mem[64] + 100
                        if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor26:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            _4550 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4550] = 30
                            mem[_4550 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                                _4641 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4641 + 68] = mem[idx + _4550 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4641 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4641 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5005 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5005] = 30
                            mem[_5005 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply)
                            _5199 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5199 + 68] = mem[idx + _5005 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5199 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5199 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4842] = 30
                        mem[_4842 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            _5004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5004 + 68] = mem[idx + _4842 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5004 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5004 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5693] = 30
                        mem[_5693 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                        _5994 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5994 + 68] = mem[idx + _5693 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5994 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5994 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor26:
                        if not 0 / stor26:
                            _4549 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4549] = 30
                            mem[_4549 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4640 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4640 + 68] = mem[idx + _4549 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4640 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4640 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5002 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5002] = 30
                            mem[_5002 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5198 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5198 + 68] = mem[idx + _5002 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5198 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5198 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4841] = 30
                        mem[_4841 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5001 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5001 + 68] = mem[idx + _4841 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5001 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5001 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5691 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5691] = 30
                        mem[_5691 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                        _5992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5992 + 68] = mem[idx + _5691 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5992 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5992 + -mem[64] + 100
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4840] = 30
                        mem[_4840 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5000 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5000 + 68] = mem[idx + _4840 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5000 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5000 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5689 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5689] = 30
                        mem[_5689 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply))
                        _5991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5991 + 68] = mem[idx + _5689 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5991 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5991 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5446 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5446] = 30
                    mem[_5446 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5688 + 68] = mem[idx + _5446 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5688 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5688 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6572 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6572] = 30
                    mem[_6572 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                    _6860 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6860 + 68] = mem[idx + _6572 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6860 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6860 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4103 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4103] = 30
                    mem[_4103 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4143 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4143 + 68] = mem[idx + _4103 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4143 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4143 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4320] = 30
                    mem[_4320 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4344 + 68] = mem[idx + _4320 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4344 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4344 + -mem[64] + 100
                _4104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4104] = 26
                mem[_4104 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4144 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4144 + 68] = mem[idx + _4104 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4144 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4144 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor26:
                        if not 0 / stor26:
                            return 0
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4646] = 30
                        mem[_4646 + 32] = 'SafeMath: subtraction overflow'
                        _5208 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5208] = 30
                        mem[_5208 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= 0:
                            if 0 < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * 0 / stor26 * stor13 / totalSupply)
                        _5450 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5450 + 68] = mem[idx + _5208 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5450 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5450 + -mem[64] + 100
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4645] = 30
                        mem[_4645 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            _4723 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4723 + 68] = mem[idx + _4645 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4723 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4723 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5206 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5206] = 30
                        mem[_5206 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply)
                        _5449 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5449 + 68] = mem[idx + _5206 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5449 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5449 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5010] = 30
                    mem[_5010 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                        _5205 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5205 + 68] = mem[idx + _5010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5205 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5205 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6002 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6002] = 30
                    mem[_6002 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                    _6302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6302 + 68] = mem[idx + _6002 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6302 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6302 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor26:
                    if not 0 / stor26:
                        _4644 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4644] = 30
                        mem[_4644 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4722 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4722 + 68] = mem[idx + _4644 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4722 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4722 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5203] = 30
                        mem[_5203 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5448 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5448 + 68] = mem[idx + _5203 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5448 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5448 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5009 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5009] = 30
                    mem[_5009 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5202 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5202 + 68] = mem[idx + _5009 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5202 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5202 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6000] = 30
                    mem[_6000 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                    _6300 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6300 + 68] = mem[idx + _6000 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6300 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6300 + -mem[64] + 100
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    _5008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5008] = 30
                    mem[_5008 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5201 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5201 + 68] = mem[idx + _5008 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5201 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5201 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _5998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5998] = 30
                    mem[_5998 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply))
                    _6299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6299 + 68] = mem[idx + _5998 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6299 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6299 + -mem[64] + 100
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5696] = 30
                mem[_5696 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _5997 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5997 + 68] = mem[idx + _5696 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5997 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5997 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _6864 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6864] = 30
                mem[_6864 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
                _7077 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7077 + 68] = mem[idx + _6864 + 32]
                    idx = idx + 32
                    continue 
                mem[_7077 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7077 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _reflectFee / stor26:
                        if not 0 / stor26:
                            return 0
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor26 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * t / s:
                            revert with 0, 17
                        return (-1 * 0 / stor26 * t / s)
                    if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if arg1 * _reflectFee / stor26 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor26 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _reflectFee / stor26 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor26 * t / s < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _reflectFee / stor26 * t / s)
                    if 0 / stor26 and t / s > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * t / s / 0 / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor26 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor26 * t / s:
                        revert with 0, 17
                    if 0 / stor26 * t / s > -1 * arg1 * _reflectFee / stor26 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor26 * t / s < 0 / stor26 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * _reflectFee / stor26 * t / s) - (0 / stor26 * t / s))
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor26:
                    if not 0 / stor26:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if 0 / stor26 and t / s > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * t / s / 0 / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 / stor26 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor26 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (0 / stor26 * t / s))
                if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s))
                if 0 / stor26 and t / s > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * t / s / 0 / stor26 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                    revert with 0, 17
                if 0 / stor26 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < 0 / stor26 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) - (0 / stor26 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor26:
                    if not 0 / stor26:
                        return 0
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor26 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return (-1 * 0 / stor26 * stor13 / totalSupply)
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply)
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 / stor26 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor26:
                if not 0 / stor26:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
            if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                revert with 0, 17
            if not arg1 * _reflectFee / stor26:
                revert with 0, 18
            if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor26:
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply))
            if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                revert with 0, 17
            if not 0 / stor26:
                revert with 0, 18
            if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                revert with 0, 17
            if 0 / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply))
        if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not stor26:
            revert with 0, 'SafeMath: division by zero', 0
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _reflectFee / stor26 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _reflectFee / stor26:
            revert with 0, 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 > arg1 - (arg1 * _reflectFee / stor26):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _reflectFee / stor26) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
            revert with 0, 17
        idx = 0
        s = totalSupply
        t = stor13
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _4067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4067] = 26
                mem[_4067 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4099 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4099 + 68] = mem[idx + _4067 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4099 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4099 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4542] = 30
                        mem[_4542 + 32] = 'SafeMath: subtraction overflow'
                        _4990 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4990] = 30
                        mem[_4990 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply)
                        _5184 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5184 + 68] = mem[idx + _4990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5184 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5184 + -mem[64] + 100
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4541] = 30
                        mem[_4541 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            _4634 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4634 + 68] = mem[idx + _4541 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4634 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4634 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _4988 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4988] = 30
                        mem[_4988 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply)
                        _5183 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5183 + 68] = mem[idx + _4988 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5183 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5183 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4829] = 30
                    mem[_4829 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                        _4987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4987 + 68] = mem[idx + _4829 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4987 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4987 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _5668 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5668] = 30
                    mem[_5668 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                    _5972 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5972 + 68] = mem[idx + _5668 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5972 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5972 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4540 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4540] = 30
                        mem[_4540 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4633 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4633 + 68] = mem[idx + _4540 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4633 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4633 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4985 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4985] = 30
                        mem[_4985 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5182 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5182 + 68] = mem[idx + _4985 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5182 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5182 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4828] = 30
                    mem[_4828 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4984 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4984 + 68] = mem[idx + _4828 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4984 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4984 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _5666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5666] = 30
                    mem[_5666 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                    _5970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5970 + 68] = mem[idx + _5666 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5970 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5970 + -mem[64] + 100
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    _4827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4827] = 30
                    mem[_4827 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4983 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4983 + 68] = mem[idx + _4827 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4983 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4983 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _5664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5664] = 30
                    mem[_5664 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply))
                    _5969 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5969 + 68] = mem[idx + _5664 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5969 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5969 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5435 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5435] = 30
                mem[_5435 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _5663 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5663 + 68] = mem[idx + _5435 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5663 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5663 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _6551 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6551] = 30
                mem[_6551 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                _6839 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6839 + 68] = mem[idx + _6551 + 32]
                    idx = idx + 32
                    continue 
                mem[_6839 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6839 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] <= s:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 1
                _4100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4100] = 30
                mem[_4100 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _4140 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4140 + 68] = mem[idx + _4100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4140 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4140 + -mem[64] + 100
                if t < stor1[stor6[idx]]:
                    revert with 0, 17
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                _4317 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4317] = 30
                mem[_4317 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    if s < stor2[stor6[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _4341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4341 + 68] = mem[idx + _4317 + 32]
                    idx = idx + 32
                    continue 
                mem[_4341 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4341 + -mem[64] + 100
            _4101 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4101] = 26
            mem[_4101 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _4141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4141 + 68] = mem[idx + _4101 + 32]
                    idx = idx + 32
                    continue 
                mem[_4141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4141 + -mem[64] + 100
            if not arg1:
                if not arg1 * _reflectFee / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4639] = 30
                    mem[_4639 + 32] = 'SafeMath: subtraction overflow'
                    _5192 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5192] = 30
                    mem[_5192 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply)
                    _5439 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5439 + 68] = mem[idx + _5192 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5439 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5439 + -mem[64] + 100
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    _4638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4638] = 30
                    mem[_4638 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                        _4716 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4716 + 68] = mem[idx + _4638 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4716 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4716 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _5190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5190] = 30
                    mem[_5190 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply)
                    _5438 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5438 + 68] = mem[idx + _5190 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5438 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5438 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4993 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4993] = 30
                mem[_4993 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                    _5189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5189 + 68] = mem[idx + _4993 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5189 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5189 + -mem[64] + 100
                if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _5980 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5980] = 30
                mem[_5980 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                _6294 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6294 + 68] = mem[idx + _5980 + 32]
                    idx = idx + 32
                    continue 
                mem[_6294 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6294 + -mem[64] + 100
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor26:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    _4637 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4637] = 30
                    mem[_4637 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4715 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4715 + 68] = mem[idx + _4637 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4715 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4715 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _5187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5187] = 30
                    mem[_5187 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _5437 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5437 + 68] = mem[idx + _5187 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5437 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5437 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4992] = 30
                mem[_4992 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    _5186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5186 + 68] = mem[idx + _4992 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5186 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5186 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                _5978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5978] = 30
                mem[_5978 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
                _6292 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6292 + 68] = mem[idx + _5978 + 32]
                    idx = idx + 32
                    continue 
                mem[_6292 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6292 + -mem[64] + 100
            if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                revert with 0, 17
            if not arg1 * _reflectFee / stor26:
                revert with 0, 18
            if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                _4991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4991] = 30
                mem[_4991 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _5185 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5185 + 68] = mem[idx + _4991 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5185 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5185 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _5976 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5976] = 30
                mem[_5976 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply))
                _6291 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6291 + 68] = mem[idx + _5976 + 32]
                    idx = idx + 32
                    continue 
                mem[_6291 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6291 + -mem[64] + 100
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _5671 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5671] = 30
            mem[_5671 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                _5975 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _5975 + 68] = mem[idx + _5671 + 32]
                    idx = idx + 32
                    continue 
                mem[_5975 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5975 + -mem[64] + 100
            if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                revert with 0, 17
            _6843 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6843] = 30
            mem[_6843 + 32] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
            _7073 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _7073 + 68] = mem[idx + _6843 + 32]
                idx = idx + 32
                continue 
            mem[_7073 + 98] = 0
            revert with memory
              from mem[64]
               len _7073 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor13 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                        revert with 0, 17
                    return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s)
                if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if arg1 * _reflectFee / stor26 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor26 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _reflectFee / stor26 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor26 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _reflectFee / stor26 * t / s)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor26 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor26 * t / s:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > -1 * arg1 * _reflectFee / stor26 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor26 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * _reflectFee / stor26 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor26:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s))
            if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                revert with 0, 17
            if not arg1 * _reflectFee / stor26:
                revert with 0, 18
            if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s))
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s))
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _reflectFee / stor26:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    return 0
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply)
            if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                revert with 0, 17
            if not arg1 * _reflectFee / stor26:
                revert with 0, 18
            if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply)
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
        if arg1 and stor13 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _reflectFee / stor26:
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor13 / totalSupply)
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
        if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
            revert with 0, 17
        if not arg1 * _reflectFee / stor26:
            revert with 0, 18
        if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
            if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply))
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
            revert with 0, 17
        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
            revert with 0, 18
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
            revert with 0, 17
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not stor26:
            revert with 0, 'SafeMath: division by zero', 0
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor26:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor26 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor26:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor26 > arg1 - (0 / stor26):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor26) < 0 / stor26:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4074] = 26
                    mem[_4074 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4120 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4120 + 68] = mem[idx + _4074 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4120 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4120 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor26:
                            return 0
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            _4602 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4602] = 30
                            mem[_4602 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply > 0:
                                _4682 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4682 + 68] = mem[idx + _4602 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4682 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4682 + -mem[64] + 100
                            if 0 < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5103 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5103] = 30
                            mem[_5103 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                                if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5288 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5288 + 68] = mem[idx + _5103 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5288 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5288 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4913 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4913] = 30
                        mem[_4913 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            _5102 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5102 + 68] = mem[idx + _4913 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5102 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5102 + -mem[64] + 100
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5831] = 30
                        mem[_5831 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                            if -1 * 0 / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6117 + 68] = mem[idx + _5831 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6117 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6117 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4601 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4601] = 30
                        mem[_4601 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4681 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4681 + 68] = mem[idx + _4601 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4681 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4681 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5100] = 30
                        mem[_5100 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5287 + 68] = mem[idx + _5100 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5287 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5287 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4912 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4912] = 30
                        mem[_4912 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5099 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5099 + 68] = mem[idx + _4912 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5099 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5099 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5829 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5829] = 30
                        mem[_5829 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6115 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6115 + 68] = mem[idx + _5829 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6115 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6115 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5507 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5507] = 30
                    mem[_5507 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5828 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5828 + 68] = mem[idx + _5507 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5828 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5828 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6689 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6689] = 30
                    mem[_6689 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6976 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6976 + 68] = mem[idx + _6689 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6976 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6976 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4121 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4121] = 30
                    mem[_4121 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4161 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4161 + 68] = mem[idx + _4121 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4161 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4161 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4338 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4338] = 30
                    mem[_4338 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4362 + 68] = mem[idx + _4338 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4362 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4362 + -mem[64] + 100
                _4122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4122] = 26
                mem[_4122 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4162 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4162 + 68] = mem[idx + _4122 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4162 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4162 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor26:
                        return 0
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4686 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4686] = 30
                        mem[_4686 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            _4759 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4759 + 68] = mem[idx + _4686 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4759 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4759 + -mem[64] + 100
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5293 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5293] = 30
                        mem[_5293 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                            if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5510 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5510 + 68] = mem[idx + _5293 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5510 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5510 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5106] = 30
                    mem[_5106 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > 0:
                        _5292 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5292 + 68] = mem[idx + _5106 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5292 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5292 + -mem[64] + 100
                    if 0 < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6122] = 30
                    mem[_6122 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                        if -1 * 0 / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6347 + 68] = mem[idx + _6122 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6347 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6347 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    _4685 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4685] = 30
                    mem[_4685 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4758 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4758 + 68] = mem[idx + _4685 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4758 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4758 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _5290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5290] = 30
                    mem[_5290 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _5509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5509 + 68] = mem[idx + _5290 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5509 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5509 + -mem[64] + 100
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    _5105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5105] = 30
                    mem[_5105 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5289 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5289 + 68] = mem[idx + _5105 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5289 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5289 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6120 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6120] = 30
                    mem[_6120 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6345 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6345 + 68] = mem[idx + _6120 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6345 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6345 + -mem[64] + 100
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5834] = 30
                mem[_5834 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6119 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6119 + 68] = mem[idx + _5834 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6119 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6119 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _6979 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6979] = 30
                mem[_6979 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7100 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7100 + 68] = mem[idx + _6979 + 32]
                    idx = idx + 32
                    continue 
                mem[_7100 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7100 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 / stor26:
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            if 0 / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor26 * t / s:
                                revert with 0, 17
                            if 0 > -1 * 0 / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor26 * t / s < 0:
                                revert with 0, 17
                        else:
                            if 0 / stor26 and t / s > -1 / 0 / stor26:
                                revert with 0, 17
                            if not 0 / stor26:
                                revert with 0, 18
                            if 0 / stor26 * t / s / 0 / stor26 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor26 * t / s:
                                revert with 0, 17
                            if 0 / stor26 * t / s > -1 * 0 / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor26 * t / s < 0 / stor26 * t / s:
                                revert with 0, 17
                        return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if 0 / stor26 and t / s > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * t / s / 0 / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if 0 / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor26 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (0 / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor26 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor26 * t / s:
                            revert with 0, 17
                        if 0 / stor26 * t / s > (arg1 * t / s) - (0 / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor26 * t / s) < 0 / stor26 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if 0 / stor26:
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 / stor26 * stor13 / totalSupply > -1 * 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                    return 0
                else:
                    return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor26:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
            else:
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor26:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor26 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor26:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 > arg1 - (0 / stor26):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor26) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4073 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4073] = 26
                    mem[_4073 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4117 + 68] = mem[idx + _4073 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4117 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4117 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor26:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                return 0
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4594 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4594] = 30
                            mem[_4594 + 32] = 'SafeMath: subtraction overflow'
                            _5089 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5089] = 30
                            mem[_5089 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5275 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5275 + 68] = mem[idx + _5089 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5275 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5275 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            _4593 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4593] = 30
                            mem[_4593 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply > 0:
                                _4675 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4675 + 68] = mem[idx + _4593 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4675 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4675 + -mem[64] + 100
                            if 0 < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5087] = 30
                            mem[_5087 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                                if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5274 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5274 + 68] = mem[idx + _5087 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5274 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5274 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4903 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4903] = 30
                        mem[_4903 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            _5086 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5086 + 68] = mem[idx + _4903 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5086 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5086 + -mem[64] + 100
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5812 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5812] = 30
                        mem[_5812 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                            if -1 * 0 / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6098 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6098 + 68] = mem[idx + _5812 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6098 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6098 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            _4592 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4592] = 30
                            mem[_4592 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4674 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4674 + 68] = mem[idx + _4592 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4674 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4674 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5084 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5084] = 30
                            mem[_5084 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5273 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5273 + 68] = mem[idx + _5084 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5273 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5273 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4902] = 30
                        mem[_4902 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5083 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5083 + 68] = mem[idx + _4902 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5083 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5083 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5810 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5810] = 30
                        mem[_5810 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6096 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6096 + 68] = mem[idx + _5810 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6096 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6096 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4901 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4901] = 30
                        mem[_4901 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5082 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5082 + 68] = mem[idx + _4901 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5082 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5082 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5808 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5808] = 30
                        mem[_5808 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6095 + 68] = mem[idx + _5808 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6095 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6095 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5498 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5498] = 30
                    mem[_5498 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5807 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5807 + 68] = mem[idx + _5498 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5807 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5807 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6672] = 30
                    mem[_6672 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6959 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6959 + 68] = mem[idx + _6672 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6959 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6959 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4118] = 30
                    mem[_4118 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4158 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4158 + 68] = mem[idx + _4118 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4158 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4158 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4335 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4335] = 30
                    mem[_4335 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4359 + 68] = mem[idx + _4335 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4359 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4359 + -mem[64] + 100
                _4119 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4119] = 26
                mem[_4119 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4159 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4159 + 68] = mem[idx + _4119 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4159 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4159 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4680 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4680] = 30
                        mem[_4680 + 32] = 'SafeMath: subtraction overflow'
                        _5283 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5283] = 30
                        mem[_5283 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _5502 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5502 + 68] = mem[idx + _5283 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5502 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5502 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4679 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4679] = 30
                        mem[_4679 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            _4755 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4755 + 68] = mem[idx + _4679 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4755 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4755 + -mem[64] + 100
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5281] = 30
                        mem[_5281 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor26 * stor13 / totalSupply:
                            if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5501 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5501 + 68] = mem[idx + _5281 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5501 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5501 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5092 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5092] = 30
                    mem[_5092 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > 0:
                        _5280 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5280 + 68] = mem[idx + _5092 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5280 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5280 + -mem[64] + 100
                    if 0 < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6106] = 30
                    mem[_6106 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * 0 / stor26 * stor13 / totalSupply:
                        if -1 * 0 / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6340 + 68] = mem[idx + _6106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6340 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6340 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4678] = 30
                        mem[_4678 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4754 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4754 + 68] = mem[idx + _4678 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4754 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4754 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5278] = 30
                        mem[_5278 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5500 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5500 + 68] = mem[idx + _5278 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5500 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5500 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5091] = 30
                    mem[_5091 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5277 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5277 + 68] = mem[idx + _5091 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5277 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5277 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6104] = 30
                    mem[_6104 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6338 + 68] = mem[idx + _6104 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6338 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6338 + -mem[64] + 100
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    _5090 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5090] = 30
                    mem[_5090 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5276 + 68] = mem[idx + _5090 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5276 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5276 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6102] = 30
                    mem[_6102 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6337 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6337 + 68] = mem[idx + _6102 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6337 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6337 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5815] = 30
                mem[_5815 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6101 + 68] = mem[idx + _5815 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6101 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6101 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _6963 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6963] = 30
                mem[_6963 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7096 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7096 + 68] = mem[idx + _6963 + 32]
                    idx = idx + 32
                    continue 
                mem[_7096 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7096 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not 0 / stor26:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                                revert with 0, 17
                    else:
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            if 0 / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor26 * t / s:
                                revert with 0, 17
                            if 0 > -1 * 0 / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor26 * t / s < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor26 * t / s:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > -1 * 0 / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor26 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                            revert with 0, 17
                else:
                    if 0 / stor26 and t / s > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * t / s / 0 / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if 0 / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor26 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (0 / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor26 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor26 * t / s:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > (arg1 * t / s) - (0 / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor26 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not 0 / stor26:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                else:
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor26 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > -1 * 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor26:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
            else:
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
    else:
        if arg1 and _reflectFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _reflectFee / arg1 != _reflectFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not stor26:
            revert with 0, 'SafeMath: division by zero', 0
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor26:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor26 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor26:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor26 > arg1 - (arg1 * _reflectFee / stor26):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor26) < 0 / stor26:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4072] = 26
                    mem[_4072 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4114 + 68] = mem[idx + _4072 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4114 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4114 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor26:
                            if not 0 / stor26:
                                return 0
                            if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                                revert with 0, 17
                            if not 0 / stor26:
                                revert with 0, 18
                            if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4585 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4585] = 30
                            mem[_4585 + 32] = 'SafeMath: subtraction overflow'
                            _5072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5072] = 30
                            mem[_5072 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor26 * stor13 / totalSupply <= 0:
                                if 0 < 0 / stor26 * stor13 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5259 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5259 + 68] = mem[idx + _5072 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5259 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5259 + -mem[64] + 100
                        if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor26:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            _4584 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4584] = 30
                            mem[_4584 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                                _4668 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4668 + 68] = mem[idx + _4584 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4668 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4668 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5070 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5070] = 30
                            mem[_5070 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5258 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5258 + 68] = mem[idx + _5070 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5258 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5258 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4890] = 30
                        mem[_4890 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            _5069 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5069 + 68] = mem[idx + _4890 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5069 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5069 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5787 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5787] = 30
                        mem[_5787 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6076 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6076 + 68] = mem[idx + _5787 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6076 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6076 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor26:
                        if not 0 / stor26:
                            _4583 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4583] = 30
                            mem[_4583 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4667 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4667 + 68] = mem[idx + _4583 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4667 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4667 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5067 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5067] = 30
                            mem[_5067 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5257 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5257 + 68] = mem[idx + _5067 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5257 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5257 + -mem[64] + 100
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4889 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4889] = 30
                        mem[_4889 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5066 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5066 + 68] = mem[idx + _4889 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5066 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5066 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5785] = 30
                        mem[_5785 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6074 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6074 + 68] = mem[idx + _5785 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6074 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6074 + -mem[64] + 100
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4888 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4888] = 30
                        mem[_4888 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5065 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5065 + 68] = mem[idx + _4888 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5065 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5065 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5783 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5783] = 30
                        mem[_5783 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6073 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6073 + 68] = mem[idx + _5783 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6073 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6073 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5487] = 30
                    mem[_5487 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5782 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5782 + 68] = mem[idx + _5487 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5782 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5782 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6651] = 30
                    mem[_6651 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6938 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6938 + 68] = mem[idx + _6651 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6938 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6938 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4115] = 30
                    mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4155 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4155 + 68] = mem[idx + _4115 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4155 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4155 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4332 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4332] = 30
                    mem[_4332 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4356 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4356 + 68] = mem[idx + _4332 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4356 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4356 + -mem[64] + 100
                _4116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4116] = 26
                mem[_4116 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4156 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4156 + 68] = mem[idx + _4116 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4156 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4156 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor26:
                        if not 0 / stor26:
                            return 0
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4673] = 30
                        mem[_4673 + 32] = 'SafeMath: subtraction overflow'
                        _5267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5267] = 30
                        mem[_5267 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor26 * stor13 / totalSupply <= 0:
                            if 0 < 0 / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _5491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5491 + 68] = mem[idx + _5267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5491 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5491 + -mem[64] + 100
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        _4672 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4672] = 30
                        mem[_4672 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            _4748 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4748 + 68] = mem[idx + _4672 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4748 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4748 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5265] = 30
                        mem[_5265 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5490 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5490 + 68] = mem[idx + _5265 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5490 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5490 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5075 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5075] = 30
                    mem[_5075 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                        _5264 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5264 + 68] = mem[idx + _5075 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5264 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5264 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6084 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6084] = 30
                    mem[_6084 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6332 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6332 + 68] = mem[idx + _6084 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6332 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6332 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor26:
                    if not 0 / stor26:
                        _4671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4671] = 30
                        mem[_4671 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4747 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4747 + 68] = mem[idx + _4671 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4747 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4747 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5262] = 30
                        mem[_5262 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5489 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5489 + 68] = mem[idx + _5262 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5489 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5489 + -mem[64] + 100
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5074] = 30
                    mem[_5074 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5261 + 68] = mem[idx + _5074 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5261 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5261 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6082] = 30
                    mem[_6082 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6330 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6330 + 68] = mem[idx + _6082 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6330 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6330 + -mem[64] + 100
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    _5073 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5073] = 30
                    mem[_5073 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5260 + 68] = mem[idx + _5073 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5260 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5260 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6080 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6080] = 30
                    mem[_6080 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6329 + 68] = mem[idx + _6080 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6329 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6329 + -mem[64] + 100
                if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                    revert with 0, 17
                if not 0 / stor26:
                    revert with 0, 18
                if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5790 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5790] = 30
                mem[_5790 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6079 + 68] = mem[idx + _5790 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6079 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6079 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _6942 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6942] = 30
                mem[_6942 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7092 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7092 + 68] = mem[idx + _6942 + 32]
                    idx = idx + 32
                    continue 
                mem[_7092 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7092 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _reflectFee / stor26:
                        if 0 / stor26:
                            if 0 / stor26 and t / s > -1 / 0 / stor26:
                                revert with 0, 17
                            if not 0 / stor26:
                                revert with 0, 18
                            if 0 / stor26 * t / s / 0 / stor26 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor26 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor26:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor26:
                            if arg1 * _reflectFee / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor26 * t / s < 0:
                                revert with 0, 17
                        else:
                            if 0 / stor26 and t / s > -1 / 0 / stor26:
                                revert with 0, 17
                            if not 0 / stor26:
                                revert with 0, 18
                            if 0 / stor26 * t / s / 0 / stor26 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 17
                            if 0 / stor26 * t / s > -1 * arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor26 * t / s < 0 / stor26 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor26:
                    if not 0 / stor26:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor26 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor26 and t / s > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * t / s / 0 / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                            revert with 0, 17
                        if 0 / stor26 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < 0 / stor26 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor26:
                    if 0 / stor26:
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor26:
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                            revert with 0, 17
                        if not 0 / stor26:
                            revert with 0, 18
                        if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 / stor26 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor26:
                if not 0 / stor26:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor26:
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if 0 / stor26 and stor13 / totalSupply > -1 / 0 / stor26:
                        revert with 0, 17
                    if not 0 / stor26:
                        revert with 0, 18
                    if 0 / stor26 * stor13 / totalSupply / 0 / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0 / stor26 * stor13 / totalSupply:
                        revert with 0, 17
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor26:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor26 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor26:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 > arg1 - (arg1 * _reflectFee / stor26):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor26) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4071 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4071] = 26
                    mem[_4071 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4111 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4111 + 68] = mem[idx + _4071 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4111 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4111 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor26:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                return 0
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4576 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4576] = 30
                            mem[_4576 + 32] = 'SafeMath: subtraction overflow'
                            _5055 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5055] = 30
                            mem[_5055 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5243 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5243 + 68] = mem[idx + _5055 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5243 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5243 + -mem[64] + 100
                        if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor26:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            _4575 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4575] = 30
                            mem[_4575 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                                _4661 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4661 + 68] = mem[idx + _4575 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4661 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4661 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            _5053 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5053] = 30
                            mem[_5053 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5242 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5242 + 68] = mem[idx + _5053 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5242 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5242 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4877 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4877] = 30
                        mem[_4877 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            _5052 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5052 + 68] = mem[idx + _4877 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5052 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5052 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5762 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5762] = 30
                        mem[_5762 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6054 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6054 + 68] = mem[idx + _5762 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6054 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6054 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            _4574 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4574] = 30
                            mem[_4574 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4660 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4660 + 68] = mem[idx + _4574 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4660 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4660 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5050 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5050] = 30
                            mem[_5050 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5241 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5241 + 68] = mem[idx + _5050 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5241 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5241 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4876 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4876] = 30
                        mem[_4876 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5049 + 68] = mem[idx + _4876 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5049 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5049 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5760 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5760] = 30
                        mem[_5760 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6052 + 68] = mem[idx + _5760 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6052 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6052 + -mem[64] + 100
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4875 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4875] = 30
                        mem[_4875 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5048 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5048 + 68] = mem[idx + _4875 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5048 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5048 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5758 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5758] = 30
                        mem[_5758 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6051 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6051 + 68] = mem[idx + _5758 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6051 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6051 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5476] = 30
                    mem[_5476 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5757 + 68] = mem[idx + _5476 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5757 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5757 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6630] = 30
                    mem[_6630 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6917 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6917 + 68] = mem[idx + _6630 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6917 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6917 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4112 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4112] = 30
                    mem[_4112 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4152 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4152 + 68] = mem[idx + _4112 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4152 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4152 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4329 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4329] = 30
                    mem[_4329 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4353 + 68] = mem[idx + _4329 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4353 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4353 + -mem[64] + 100
                _4113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4113] = 26
                mem[_4113 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4153 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4153 + 68] = mem[idx + _4113 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4153 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4153 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor26:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4666 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4666] = 30
                        mem[_4666 + 32] = 'SafeMath: subtraction overflow'
                        _5251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5251] = 30
                        mem[_5251 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _5480 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5480 + 68] = mem[idx + _5251 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5480 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5480 + -mem[64] + 100
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4665 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4665] = 30
                        mem[_4665 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            _4741 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4741 + 68] = mem[idx + _4665 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4741 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4741 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        _5249 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5249] = 30
                        mem[_5249 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5479 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5479 + 68] = mem[idx + _5249 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5479 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5479 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5058] = 30
                    mem[_5058 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                        _5248 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5248 + 68] = mem[idx + _5058 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5248 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5248 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6062] = 30
                    mem[_6062 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6324 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6324 + 68] = mem[idx + _6062 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6324 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6324 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        _4664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4664] = 30
                        mem[_4664 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4740 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4740 + 68] = mem[idx + _4664 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4740 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4740 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5246 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5246] = 30
                        mem[_5246 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5478 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5478 + 68] = mem[idx + _5246 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5478 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5478 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5057 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5057] = 30
                    mem[_5057 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5245 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5245 + 68] = mem[idx + _5057 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5245 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5245 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6060 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6060] = 30
                    mem[_6060 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6322 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6322 + 68] = mem[idx + _6060 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6322 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6322 + -mem[64] + 100
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    _5056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5056] = 30
                    mem[_5056 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5244 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5244 + 68] = mem[idx + _5056 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5244 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5244 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    _6058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6058] = 30
                    mem[_6058 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6321 + 68] = mem[idx + _6058 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6321 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6321 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5765] = 30
                mem[_5765 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6057 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6057 + 68] = mem[idx + _5765 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6057 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6057 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                    revert with 0, 17
                _6921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6921] = 30
                mem[_6921 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7088 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7088 + 68] = mem[idx + _6921 + 32]
                    idx = idx + 32
                    continue 
                mem[_7088 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7088 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _reflectFee / stor26:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor26:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            if arg1 * _reflectFee / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor26 * t / s < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor26 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > -1 * arg1 * _reflectFee / stor26 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor26 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor26:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor26 and t / s > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * t / s / arg1 * _reflectFee / stor26 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor26 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor26 * t / s:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor26 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor26:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor26:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor26 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor26 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor26:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _reflectFee / stor26 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor26:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor26:
                    revert with 0, 18
                if arg1 * _reflectFee / stor26 * stor13 / totalSupply / arg1 * _reflectFee / stor26 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor26 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor26 * stor13 / totalSupply:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor26 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / stor26 * stor13 / totalSupply:
                        revert with 0, 17
    return (arg1 * stor13 / totalSupply)
}



}

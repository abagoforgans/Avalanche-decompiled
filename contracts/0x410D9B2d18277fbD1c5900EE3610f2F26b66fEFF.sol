contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const totalSupply = 100000000 * 10^18


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of address stor5;
uint256 stor6;
uint256 totalFees;
array of struct stor8;
array of struct stor9;
uint8 decimals;

function totalFees() payable {
    return totalFees
}

function decimals() payable {
    return decimals
}

function owner() payable {
    return owner
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function increaseAllowance(address arg1, uint256 arg2) payable {
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

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor5.length < 1:
            revert with 'NH{q', 17
        if stor5.length - 1 >= stor5.length:
            revert with 'NH{q', 50
        if idx >= stor5.length:
            revert with 'NH{q', 50
        stor5[idx] = stor5[stor5.length]
        stor2[address(arg1)] = 0
        stor4[address(arg1)] = 0
        if not stor5.length:
            revert with 'NH{q', 49
        stor5[stor5.length] = 0
        stor5.length--
}

function name() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() payable {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 100000000 * 10^18
    t = stor6
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = 26
            mem[_76 + 32] = 'SafeMath: division by zero'
            if stor6 / 100000000 * 10^18 > 0:
                if not stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 18
                return (arg1 / stor6 / 100000000 * 10^18)
            _81 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_81 + idx + 68] = mem[_76 + idx + 32]
                idx = idx + 32
                continue 
            mem[_81 + 94] = 0
            revert with memory
              from mem[64]
               len _81 + -mem[64] + 100
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 26
            mem[_69 + 32] = 'SafeMath: division by zero'
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            if stor6 / 100000000 * 10^18 > 0:
                if not stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 18
                return (arg1 / stor6 / 100000000 * 10^18)
            _84 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_84 + idx + 68] = mem[_82 + idx + 32]
                idx = idx + 32
                continue 
            mem[_84 + 94] = 0
            revert with memory
              from mem[64]
               len _84 + -mem[64] + 100
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = stor5[idx]
        mem[32] = 1
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 30
        mem[_68 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _70 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_70 + idx + 68] = mem[_68 + idx + 32]
                idx = idx + 32
                continue 
            mem[_70 + 98] = 0
            revert with memory
              from mem[64]
               len _70 + -mem[64] + 100
        if t < stor1[stor5[idx]]:
            revert with 'NH{q', 17
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = stor5[idx]
        mem[32] = 2
        _79 = mem[64]
        mem[64] = mem[64] + 64
        mem[_79] = 30
        mem[_79 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            if s < stor2[stor5[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _83 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_83 + idx + 68] = mem[_79 + idx + 32]
            idx = idx + 32
            continue 
        mem[_83 + 98] = 0
        revert with memory
          from mem[64]
           len _83 + -mem[64] + 100
    if t < stor6 / 100000000 * 10^18:
        if stor6 / 100000000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor6 / 100000000 * 10^18:
            revert with 'NH{q', 18
        return (arg1 / stor6 / 100000000 * 10^18)
    if s <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not s:
        revert with 'NH{q', 18
    if t / s <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 'NH{q', 18
    return (arg1 / t / s)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 100000000 * 10^18
    t = stor6
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = 26
            mem[_70 + 32] = 'SafeMath: division by zero'
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 26
            mem[_81 + 32] = 'SafeMath: division by zero'
            if stor6 / 100000000 * 10^18 > 0:
                if not stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor6 / 100000000 * 10^18)
            _86 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_86 + idx + 68] = mem[_81 + idx + 32]
                idx = idx + 32
                continue 
            mem[_86 + 94] = 0
            revert with memory
              from mem[64]
               len _86 + -mem[64] + 100
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _74 = mem[64]
            mem[64] = mem[64] + 64
            mem[_74] = 26
            mem[_74 + 32] = 'SafeMath: division by zero'
            _87 = mem[64]
            mem[64] = mem[64] + 64
            mem[_87] = 26
            mem[_87 + 32] = 'SafeMath: division by zero'
            if stor6 / 100000000 * 10^18 > 0:
                if not stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor6 / 100000000 * 10^18)
            _89 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_89 + idx + 68] = mem[_87 + idx + 32]
                idx = idx + 32
                continue 
            mem[_89 + 94] = 0
            revert with memory
              from mem[64]
               len _89 + -mem[64] + 100
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = stor5[idx]
        mem[32] = 1
        _73 = mem[64]
        mem[64] = mem[64] + 64
        mem[_73] = 30
        mem[_73 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _75 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_75 + idx + 68] = mem[_73 + idx + 32]
                idx = idx + 32
                continue 
            mem[_75 + 98] = 0
            revert with memory
              from mem[64]
               len _75 + -mem[64] + 100
        if t < stor1[stor5[idx]]:
            revert with 'NH{q', 17
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = stor5[idx]
        mem[32] = 2
        _84 = mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = 30
        mem[_84 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            if s < stor2[stor5[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _88 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_88 + idx + 68] = mem[_84 + idx + 32]
            idx = idx + 32
            continue 
        mem[_88 + 98] = 0
        revert with memory
          from mem[64]
           len _88 + -mem[64] + 100
    if t < stor6 / 100000000 * 10^18:
        if stor6 / 100000000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor6 / 100000000 * 10^18:
            revert with 'NH{q', 18
        return (stor1[address(arg1)] / stor6 / 100000000 * 10^18)
    if s <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not s:
        revert with 'NH{q', 18
    if t / s <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / t / s)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[address(arg1)]:
        revert with 0, 'Account is not excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 100000000 * 10^18
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _78 = mem[64]
                mem[64] = mem[64] + 64
                mem[_78] = 26
                mem[_78 + 32] = 'SafeMath: division by zero'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 26
                mem[_89 + 32] = 'SafeMath: division by zero'
                if stor6 / 100000000 * 10^18 > 0:
                    if not stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor6 / 100000000 * 10^18
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _94 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_94 + idx + 68] = mem[_89 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_94 + 94] = 0
                revert with memory
                  from mem[64]
                   len _94 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _82 = mem[64]
                mem[64] = mem[64] + 64
                mem[_82] = 26
                mem[_82 + 32] = 'SafeMath: division by zero'
                _95 = mem[64]
                mem[64] = mem[64] + 64
                mem[_95] = 26
                mem[_95 + 32] = 'SafeMath: division by zero'
                if stor6 / 100000000 * 10^18 > 0:
                    if not stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor6 / 100000000 * 10^18
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _97 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_97 + idx + 68] = mem[_95 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_97 + 94] = 0
                revert with memory
                  from mem[64]
                   len _97 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 1
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 30
            mem[_81 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _83 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_83 + idx + 68] = mem[_81 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_83 + 98] = 0
                revert with memory
                  from mem[64]
                   len _83 + -mem[64] + 100
            if t < stor1[stor5[idx]]:
                revert with 'NH{q', 17
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 30
            mem[_92 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                if s < stor2[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _96 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_96 + idx + 68] = mem[_92 + idx + 32]
                idx = idx + 32
                continue 
            mem[_96 + 98] = 0
            revert with memory
              from mem[64]
               len _96 + -mem[64] + 100
        if t < stor6 / 100000000 * 10^18:
            if stor6 / 100000000 * 10^18 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor6 / 100000000 * 10^18:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / stor6 / 100000000 * 10^18
        else:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
    stor4[address(arg1)] = 1
    stor5.length++
    stor5[stor5.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > 100000000 * 10^18:
        revert with 0, 'Amount must be less than supply'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if arg2:
        if not arg1 / 100:
            mem[64] = 224
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            idx = 0
            s = 100000000 * 10^18
            t = stor6
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _529 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_529] = 26
                    mem[_529 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_664] = 30
                    mem[_664 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _680 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_680 + idx + 68] = mem[_664 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_680 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _680 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_550] = 26
                    mem[_550 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_681] = 30
                    mem[_681 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_705 + idx + 68] = mem[_681 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_705 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _705 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _543 = mem[64]
                mem[64] = mem[64] + 64
                mem[_543] = 30
                mem[_543 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _554 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_554 + idx + 68] = mem[_543 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_554 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _554 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _586 = mem[64]
                mem[64] = mem[64] + 64
                mem[_586] = 30
                mem[_586 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _594 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_594 + idx + 68] = mem[_586 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_594 + 98] = 0
                revert with memory
                  from mem[64]
                   len _594 + -mem[64] + 100
            if t < stor6 / 100000000 * 10^18:
                if not arg1:
                    return 0
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor6 / 100000000 * 10^18)
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                return 0
            if arg1 and t / s > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 'NH{q', 17
            return (arg1 * t / s)
        if arg1 / 100 and 5 > -1 / arg1 / 100:
            revert with 'NH{q', 17
        if not arg1 / 100:
            revert with 'NH{q', 18
        if 5 * arg1 / 100 / arg1 / 100 != 5:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 5 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < 5 * arg1 / 100:
            revert with 'NH{q', 17
        idx = 0
        s = 100000000 * 10^18
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _525 = mem[64]
                mem[64] = mem[64] + 64
                mem[_525] = 26
                mem[_525 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not 5 * arg1 / 100:
                        return 0
                    if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_662] = 30
                    mem[_662 + 32] = 'SafeMath: subtraction overflow'
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= 0:
                        if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        return (-5 * arg1 / 100 * stor6 / 100000000 * 10^18)
                    _676 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_676 + idx + 68] = mem[_662 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_676 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _676 + -mem[64] + 100
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 5 * arg1 / 100:
                    _661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_661] = 30
                    mem[_661 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_675 + idx + 68] = mem[_661 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_675 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _675 + -mem[64] + 100
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_799] = 30
                mem[_799 + 32] = 'SafeMath: subtraction overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= arg1 * stor6 / 100000000 * 10^18:
                    if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    return ((arg1 * stor6 / 100000000 * 10^18) - (5 * arg1 / 100 * stor6 / 100000000 * 10^18))
                _825 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_825 + idx + 68] = mem[_799 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_825 + 98] = 0
                revert with memory
                  from mem[64]
                   len _825 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _541 = mem[64]
                mem[64] = mem[64] + 64
                mem[_541] = 30
                mem[_541 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _553 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_553 + idx + 68] = mem[_541 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_553 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _553 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _585 = mem[64]
                mem[64] = mem[64] + 64
                mem[_585] = 30
                mem[_585 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _593 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_593 + idx + 68] = mem[_585 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_593 + 98] = 0
                revert with memory
                  from mem[64]
                   len _593 + -mem[64] + 100
            _549 = mem[64]
            mem[64] = mem[64] + 64
            mem[_549] = 26
            mem[_549 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not 5 * arg1 / 100:
                    return 0
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_678] = 30
                mem[_678 + 32] = 'SafeMath: subtraction overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= 0:
                    if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    return (-5 * arg1 / 100 * stor6 / 100000000 * 10^18)
                _704 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_704 + idx + 68] = mem[_678 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_704 + 98] = 0
                revert with memory
                  from mem[64]
                   len _704 + -mem[64] + 100
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 5 * arg1 / 100:
                _677 = mem[64]
                mem[64] = mem[64] + 64
                mem[_677] = 30
                mem[_677 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor6 / 100000000 * 10^18:
                    if arg1 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor6 / 100000000 * 10^18)
                _703 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_703 + idx + 68] = mem[_677 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_703 + 98] = 0
                revert with memory
                  from mem[64]
                   len _703 + -mem[64] + 100
            if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                revert with 'NH{q', 17
            if not 5 * arg1 / 100:
                revert with 'NH{q', 18
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _828 = mem[64]
            mem[64] = mem[64] + 64
            mem[_828] = 30
            mem[_828 + 32] = 'SafeMath: subtraction overflow'
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= arg1 * stor6 / 100000000 * 10^18:
                if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                return ((arg1 * stor6 / 100000000 * 10^18) - (5 * arg1 / 100 * stor6 / 100000000 * 10^18))
            _847 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_847 + idx + 68] = mem[_828 + idx + 32]
                idx = idx + 32
                continue 
            mem[_847 + 98] = 0
            revert with memory
              from mem[64]
               len _847 + -mem[64] + 100
        if t < stor6 / 100000000 * 10^18:
            if not arg1:
                if not 5 * arg1 / 100:
                    return 0
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                return (-5 * arg1 / 100 * stor6 / 100000000 * 10^18)
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 5 * arg1 / 100:
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor6 / 100000000 * 10^18)
            if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                revert with 'NH{q', 17
            if not 5 * arg1 / 100:
                revert with 'NH{q', 18
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > arg1 * stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                revert with 'NH{q', 17
            return ((arg1 * stor6 / 100000000 * 10^18) - (5 * arg1 / 100 * stor6 / 100000000 * 10^18))
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if not arg1:
            if not 5 * arg1 / 100:
                return 0
            if 5 * arg1 / 100 and t / s > -1 / 5 * arg1 / 100:
                revert with 'NH{q', 17
            if not 5 * arg1 / 100:
                revert with 'NH{q', 18
            if 5 * arg1 / 100 * t / s / 5 * arg1 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if 5 * arg1 / 100 * t / s > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < 5 * arg1 / 100 * t / s:
                revert with 'NH{q', 17
            return (-5 * arg1 / 100 * t / s)
        if arg1 and t / s > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 5 * arg1 / 100:
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 'NH{q', 17
            return (arg1 * t / s)
        if 5 * arg1 / 100 and t / s > -1 / 5 * arg1 / 100:
            revert with 'NH{q', 17
        if not 5 * arg1 / 100:
            revert with 'NH{q', 18
        if 5 * arg1 / 100 * t / s / 5 * arg1 / 100 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if 5 * arg1 / 100 * t / s > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * t / s < 5 * arg1 / 100 * t / s:
            revert with 'NH{q', 17
        return ((arg1 * t / s) - (5 * arg1 / 100 * t / s))
    if not arg1 / 100:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < 0:
            revert with 'NH{q', 17
        idx = 0
        s = 100000000 * 10^18
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _537 = mem[64]
                mem[64] = mem[64] + 64
                mem[_537] = 26
                mem[_537 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _669 = mem[64]
                mem[64] = mem[64] + 64
                mem[_669] = 30
                mem[_669 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor6 / 100000000 * 10^18:
                    if arg1 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor6 / 100000000 * 10^18)
                _688 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_688 + idx + 68] = mem[_669 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_688 + 98] = 0
                revert with memory
                  from mem[64]
                   len _688 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _552 = mem[64]
                mem[64] = mem[64] + 64
                mem[_552] = 26
                mem[_552 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _689 = mem[64]
                mem[64] = mem[64] + 64
                mem[_689] = 30
                mem[_689 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor6 / 100000000 * 10^18:
                    if arg1 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor6 / 100000000 * 10^18)
                _708 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_708 + idx + 68] = mem[_689 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_708 + 98] = 0
                revert with memory
                  from mem[64]
                   len _708 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 1
            _547 = mem[64]
            mem[64] = mem[64] + 64
            mem[_547] = 30
            mem[_547 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _556 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_556 + idx + 68] = mem[_547 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_556 + 98] = 0
                revert with memory
                  from mem[64]
                   len _556 + -mem[64] + 100
            if t < stor1[stor5[idx]]:
                revert with 'NH{q', 17
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            _588 = mem[64]
            mem[64] = mem[64] + 64
            mem[_588] = 30
            mem[_588 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                if s < stor2[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _596 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_596 + idx + 68] = mem[_588 + idx + 32]
                idx = idx + 32
                continue 
            mem[_596 + 98] = 0
            revert with memory
              from mem[64]
               len _596 + -mem[64] + 100
        if t < stor6 / 100000000 * 10^18:
            if not arg1:
                return 0
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor6 / 100000000 * 10^18 < 0:
                revert with 'NH{q', 17
            return (arg1 * stor6 / 100000000 * 10^18)
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if not arg1:
            return 0
        if arg1 and t / s > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * t / s < 0:
            revert with 'NH{q', 17
    else:
        if arg1 / 100 and 5 > -1 / arg1 / 100:
            revert with 'NH{q', 17
        if not arg1 / 100:
            revert with 'NH{q', 18
        if 5 * arg1 / 100 / arg1 / 100 != 5:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 5 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < 5 * arg1 / 100:
            revert with 'NH{q', 17
        idx = 0
        s = 100000000 * 10^18
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _533 = mem[64]
                mem[64] = mem[64] + 64
                mem[_533] = 26
                mem[_533 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not 5 * arg1 / 100:
                        return 0
                    if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_667] = 30
                    mem[_667 + 32] = 'SafeMath: subtraction overflow'
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= 0:
                        if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _684 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_684 + idx + 68] = mem[_667 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_684 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _684 + -mem[64] + 100
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 5 * arg1 / 100:
                    _666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_666] = 30
                    mem[_666 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _683 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_683 + idx + 68] = mem[_666 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_683 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _683 + -mem[64] + 100
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_811] = 30
                mem[_811 + 32] = 'SafeMath: subtraction overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= arg1 * stor6 / 100000000 * 10^18:
                    if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    return (arg1 * stor6 / 100000000 * 10^18)
                _833 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_833 + idx + 68] = mem[_811 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_833 + 98] = 0
                revert with memory
                  from mem[64]
                   len _833 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_545] = 30
                mem[_545 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _555 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_555 + idx + 68] = mem[_545 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_555 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _555 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _587 = mem[64]
                mem[64] = mem[64] + 64
                mem[_587] = 30
                mem[_587 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _595 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_595 + idx + 68] = mem[_587 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_595 + 98] = 0
                revert with memory
                  from mem[64]
                   len _595 + -mem[64] + 100
            _551 = mem[64]
            mem[64] = mem[64] + 64
            mem[_551] = 26
            mem[_551 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not 5 * arg1 / 100:
                    return 0
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _686 = mem[64]
                mem[64] = mem[64] + 64
                mem[_686] = 30
                mem[_686 + 32] = 'SafeMath: subtraction overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= 0:
                    if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    else:
                        return 0
                _707 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_707 + idx + 68] = mem[_686 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_707 + 98] = 0
                revert with memory
                  from mem[64]
                   len _707 + -mem[64] + 100
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 5 * arg1 / 100:
                _685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_685] = 30
                mem[_685 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor6 / 100000000 * 10^18:
                    if arg1 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor6 / 100000000 * 10^18)
                _706 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_706 + idx + 68] = mem[_685 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_706 + 98] = 0
                revert with memory
                  from mem[64]
                   len _706 + -mem[64] + 100
            if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                revert with 'NH{q', 17
            if not 5 * arg1 / 100:
                revert with 'NH{q', 18
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _836 = mem[64]
            mem[64] = mem[64] + 64
            mem[_836] = 30
            mem[_836 + 32] = 'SafeMath: subtraction overflow'
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 <= arg1 * stor6 / 100000000 * 10^18:
                if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                return (arg1 * stor6 / 100000000 * 10^18)
            _851 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_851 + idx + 68] = mem[_836 + idx + 32]
                idx = idx + 32
                continue 
            mem[_851 + 98] = 0
            revert with memory
              from mem[64]
               len _851 + -mem[64] + 100
        if t < stor6 / 100000000 * 10^18:
            if not arg1:
                if 5 * arg1 / 100:
                    if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 5 * arg1 / 100:
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
            else:
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > arg1 * stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
            return (arg1 * stor6 / 100000000 * 10^18)
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if not arg1:
            if 5 * arg1 / 100:
                if 5 * arg1 / 100 and t / s > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * t / s / 5 * arg1 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 5 * arg1 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 5 * arg1 / 100 * t / s:
                    revert with 'NH{q', 17
                else:
                    return 0
            else:
                return 0
        if arg1 and t / s > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 5 * arg1 / 100:
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 'NH{q', 17
        else:
            if 5 * arg1 / 100 and t / s > -1 / 5 * arg1 / 100:
                revert with 'NH{q', 17
            if not 5 * arg1 / 100:
                revert with 'NH{q', 18
            if 5 * arg1 / 100 * t / s / 5 * arg1 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if 5 * arg1 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 5 * arg1 / 100 * t / s:
                revert with 'NH{q', 17
    return (arg1 * t / s)
}

function reflect(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 4
    if stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not arg1 / 100:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < 0:
            revert with 'NH{q', 17
        idx = 0
        s = 100000000 * 10^18
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _605 = mem[64]
                mem[64] = mem[64] + 64
                mem[_605] = 26
                mem[_605 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    _646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_646] = 30
                    mem[_646 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_672] = 30
                    mem[_672 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _682 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_682 + idx + 68] = mem[_672 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_682 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _682 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _745 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_745] = 30
                    mem[_745 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _764 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_764 + idx + 68] = mem[_745 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_764 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _764 + -mem[64] + 100
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_676] = 30
                mem[_676 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    _688 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_688 + idx + 68] = mem[_676 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_688 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _688 + -mem[64] + 100
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _774 = mem[64]
                mem[64] = mem[64] + 64
                mem[_774] = 30
                mem[_774 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                    _795 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_795 + idx + 68] = mem[_774 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_795 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _795 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                _900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_900] = 30
                mem[_900 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                    if stor6 < arg1 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _932 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_932 + idx + 68] = mem[_900 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_932 + 98] = 0
                revert with memory
                  from mem[64]
                   len _932 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _611 = mem[64]
                mem[64] = mem[64] + 64
                mem[_611] = 30
                mem[_611 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _616 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_616 + idx + 68] = mem[_611 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_616 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _616 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _632 = mem[64]
                mem[64] = mem[64] + 64
                mem[_632] = 30
                mem[_632 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _636 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_636 + idx + 68] = mem[_632 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_636 + 98] = 0
                revert with memory
                  from mem[64]
                   len _636 + -mem[64] + 100
            _614 = mem[64]
            mem[64] = mem[64] + 64
            mem[_614] = 26
            mem[_614 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_648] = 30
                mem[_648 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _683 = mem[64]
                mem[64] = mem[64] + 64
                mem[_683] = 30
                mem[_683 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_697 + idx + 68] = mem[_683 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_697 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _697 + -mem[64] + 100
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _766 = mem[64]
                mem[64] = mem[64] + 64
                mem[_766] = 30
                mem[_766 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor6:
                    if stor6 < 0:
                        revert with 'NH{q', 17
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _788 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_788 + idx + 68] = mem[_766 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_788 + 98] = 0
                revert with memory
                  from mem[64]
                   len _788 + -mem[64] + 100
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _689 = mem[64]
            mem[64] = mem[64] + 64
            mem[_689] = 30
            mem[_689 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1 * stor6 / 100000000 * 10^18:
                _702 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_702 + idx + 68] = mem[_689 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_702 + 98] = 0
                revert with memory
                  from mem[64]
                   len _702 + -mem[64] + 100
            if arg1 * stor6 / 100000000 * 10^18 < 0:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            _798 = mem[64]
            mem[64] = mem[64] + 64
            mem[_798] = 30
            mem[_798 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                _813 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_813 + idx + 68] = mem[_798 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_813 + 98] = 0
                revert with memory
                  from mem[64]
                   len _813 + -mem[64] + 100
            if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
            _934 = mem[64]
            mem[64] = mem[64] + 64
            mem[_934] = 30
            mem[_934 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                if stor6 < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                if totalFees > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _952 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_952 + idx + 68] = mem[_934 + idx + 32]
                idx = idx + 32
                continue 
            mem[_952 + 98] = 0
            revert with memory
              from mem[64]
               len _952 + -mem[64] + 100
        if t < stor6 / 100000000 * 10^18:
            if not arg1:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
                if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                if arg1 * stor6 / 100000000 * 10^18 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
        else:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if arg1 * t / s > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg1 * t / s:
                    revert with 'NH{q', 17
                stor1[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < arg1 * t / s:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * t / s
    else:
        if arg1 / 100 and 5 > -1 / arg1 / 100:
            revert with 'NH{q', 17
        if not arg1 / 100:
            revert with 'NH{q', 18
        if 5 * arg1 / 100 / arg1 / 100 != 5:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 5 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < 5 * arg1 / 100:
            revert with 'NH{q', 17
        idx = 0
        s = 100000000 * 10^18
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_601] = 26
                mem[_601 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not 5 * arg1 / 100:
                        _645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_645] = 30
                        mem[_645 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _670 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_670] = 30
                        mem[_670 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _679 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_679 + idx + 68] = mem[_670 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_679 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _679 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _739 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_739] = 30
                        mem[_739 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _759 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_759 + idx + 68] = mem[_739 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_759 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _759 + -mem[64] + 100
                    if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _674 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_674] = 30
                    mem[_674 + 32] = 'SafeMath: subtraction overflow'
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > 0:
                        _685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_685 + idx + 68] = mem[_674 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_685 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _685 + -mem[64] + 100
                    if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _770 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_770] = 30
                    mem[_770 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_790 + idx + 68] = mem[_770 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_790 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _790 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_893] = 30
                    mem[_893 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _925 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_925 + idx + 68] = mem[_893 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_925 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _925 + -mem[64] + 100
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 5 * arg1 / 100:
                    _673 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_673] = 30
                    mem[_673 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor6 / 100000000 * 10^18:
                        _684 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_684 + idx + 68] = mem[_673 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_684 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _684 + -mem[64] + 100
                    if arg1 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_769] = 30
                    mem[_769 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                        _789 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_789 + idx + 68] = mem[_769 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_789 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _789 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                    _892 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_892] = 30
                    mem[_892 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                        if stor6 < arg1 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _924 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_924 + idx + 68] = mem[_892 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_924 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _924 + -mem[64] + 100
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_781] = 30
                mem[_781 + 32] = 'SafeMath: subtraction overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > arg1 * stor6 / 100000000 * 10^18:
                    _799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_799 + idx + 68] = mem[_781 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_799 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _799 + -mem[64] + 100
                if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _939 = mem[64]
                mem[64] = mem[64] + 64
                mem[_939] = 30
                mem[_939 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                    _954 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_954 + idx + 68] = mem[_939 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_954 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _954 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                _1051 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1051] = 30
                mem[_1051 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                    if stor6 < arg1 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1072 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1072 + idx + 68] = mem[_1051 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1072 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1072 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_609] = 30
                mem[_609 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_615 + idx + 68] = mem[_609 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_615 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _615 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_631] = 30
                mem[_631 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _635 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_635 + idx + 68] = mem[_631 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_635 + 98] = 0
                revert with memory
                  from mem[64]
                   len _635 + -mem[64] + 100
            _613 = mem[64]
            mem[64] = mem[64] + 64
            mem[_613] = 26
            mem[_613 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not 5 * arg1 / 100:
                    _647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_647] = 30
                    mem[_647 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _680 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_680] = 30
                    mem[_680 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _693 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_693 + idx + 68] = mem[_680 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_693 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _693 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_762] = 30
                    mem[_762 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _784 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_784 + idx + 68] = mem[_762 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_784 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _784 + -mem[64] + 100
                if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                    revert with 'NH{q', 17
                if not 5 * arg1 / 100:
                    revert with 'NH{q', 18
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _687 = mem[64]
                mem[64] = mem[64] + 64
                mem[_687] = 30
                mem[_687 + 32] = 'SafeMath: subtraction overflow'
                if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > 0:
                    _700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_700 + idx + 68] = mem[_687 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_700 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _700 + -mem[64] + 100
                if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _794 = mem[64]
                mem[64] = mem[64] + 64
                mem[_794] = 30
                mem[_794 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_809 + idx + 68] = mem[_794 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_809 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _809 + -mem[64] + 100
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_929] = 30
                mem[_929 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor6:
                    if stor6 < 0:
                        revert with 'NH{q', 17
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _950 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_950 + idx + 68] = mem[_929 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_950 + 98] = 0
                revert with memory
                  from mem[64]
                   len _950 + -mem[64] + 100
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 5 * arg1 / 100:
                _686 = mem[64]
                mem[64] = mem[64] + 64
                mem[_686] = 30
                mem[_686 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    _699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_699 + idx + 68] = mem[_686 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_699 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _699 + -mem[64] + 100
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_793] = 30
                mem[_793 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                    _808 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_808 + idx + 68] = mem[_793 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_808 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _808 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                _928 = mem[64]
                mem[64] = mem[64] + 64
                mem[_928] = 30
                mem[_928 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                    if stor6 < arg1 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _949 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_949 + idx + 68] = mem[_928 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_949 + 98] = 0
                revert with memory
                  from mem[64]
                   len _949 + -mem[64] + 100
            if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                revert with 'NH{q', 17
            if not 5 * arg1 / 100:
                revert with 'NH{q', 18
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _803 = mem[64]
            mem[64] = mem[64] + 64
            mem[_803] = 30
            mem[_803 + 32] = 'SafeMath: subtraction overflow'
            if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > arg1 * stor6 / 100000000 * 10^18:
                _818 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_818 + idx + 68] = mem[_803 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_818 + 98] = 0
                revert with memory
                  from mem[64]
                   len _818 + -mem[64] + 100
            if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            _960 = mem[64]
            mem[64] = mem[64] + 64
            mem[_960] = 30
            mem[_960 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                _975 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_975 + idx + 68] = mem[_960 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_975 + 98] = 0
                revert with memory
                  from mem[64]
                   len _975 + -mem[64] + 100
            if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
            _1075 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1075] = 30
            mem[_1075 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                if stor6 < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                if totalFees > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1082 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1082 + idx + 68] = mem[_1075 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1082 + 98] = 0
            revert with memory
              from mem[64]
               len _1082 + -mem[64] + 100
        if t < stor6 / 100000000 * 10^18:
            if not arg1:
                if 5 * arg1 / 100:
                    if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 5 * arg1 / 100:
                    if 0 > arg1 * stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                else:
                    if 5 * arg1 / 100 and stor6 / 100000000 * 10^18 > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 / 5 * arg1 / 100 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 5 * arg1 / 100 * stor6 / 100000000 * 10^18 > arg1 * stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor6 / 100000000 * 10^18 < 5 * arg1 / 100 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                if arg1 * stor6 / 100000000 * 10^18 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
        else:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if 5 * arg1 / 100:
                    if 5 * arg1 / 100 and t / s > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * t / s / 5 * arg1 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 5 * arg1 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 5 * arg1 / 100 * t / s:
                        revert with 'NH{q', 17
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 5 * arg1 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if 5 * arg1 / 100 and t / s > -1 / 5 * arg1 / 100:
                        revert with 'NH{q', 17
                    if not 5 * arg1 / 100:
                        revert with 'NH{q', 18
                    if 5 * arg1 / 100 * t / s / 5 * arg1 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 5 * arg1 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 5 * arg1 / 100 * t / s:
                        revert with 'NH{q', 17
                if arg1 * t / s > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg1 * t / s:
                    revert with 'NH{q', 17
                stor1[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor6:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6 < arg1 * t / s:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * t / s
    if totalFees > -arg1 - 1:
        revert with 'NH{q', 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}

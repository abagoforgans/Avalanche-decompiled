contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
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
                    _369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_369] = 26
                    mem[_369 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _499 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_499] = 30
                    mem[_499 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _512 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_512 + idx + 68] = mem[_499 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_512 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _512 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_390] = 26
                    mem[_390 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _513 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_513] = 30
                    mem[_513 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _534 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_534 + idx + 68] = mem[_513 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_534 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _534 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _383 = mem[64]
                mem[64] = mem[64] + 64
                mem[_383] = 30
                mem[_383 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _394 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_394 + idx + 68] = mem[_383 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_394 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _394 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_426] = 30
                mem[_426 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _434 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_434 + idx + 68] = mem[_426 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_434 + 98] = 0
                revert with memory
                  from mem[64]
                   len _434 + -mem[64] + 100
        else:
            if arg1 / 100 and 0 > -1 / arg1 / 100:
                revert with 'NH{q', 17
            if not arg1 / 100:
                revert with 'NH{q', 18
            if 0 / arg1 / 100:
                revert with 0, 'SafeMath: multiplication overflow'
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
                    _365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_365] = 26
                    mem[_365 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_497] = 30
                    mem[_497 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_509 + idx + 68] = mem[_497 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_509 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _509 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _389 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_389] = 26
                    mem[_389 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_510] = 30
                    mem[_510 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _533 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_533 + idx + 68] = mem[_510 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_533 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _533 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _381 = mem[64]
                mem[64] = mem[64] + 64
                mem[_381] = 30
                mem[_381 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _393 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_393 + idx + 68] = mem[_381 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_393 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _393 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _425 = mem[64]
                mem[64] = mem[64] + 64
                mem[_425] = 30
                mem[_425 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_433 + idx + 68] = mem[_425 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_433 + 98] = 0
                revert with memory
                  from mem[64]
                   len _433 + -mem[64] + 100
    else:
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
                    _377 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_377] = 26
                    mem[_377 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_503] = 30
                    mem[_503 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _518 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_518 + idx + 68] = mem[_503 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_518 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _518 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _392 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_392] = 26
                    mem[_392 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_519] = 30
                    mem[_519 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _536 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_536 + idx + 68] = mem[_519 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_536 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _536 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _387 = mem[64]
                mem[64] = mem[64] + 64
                mem[_387] = 30
                mem[_387 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_396 + idx + 68] = mem[_387 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_396 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _396 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _428 = mem[64]
                mem[64] = mem[64] + 64
                mem[_428] = 30
                mem[_428 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _436 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_436 + idx + 68] = mem[_428 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_436 + 98] = 0
                revert with memory
                  from mem[64]
                   len _436 + -mem[64] + 100
        else:
            if arg1 / 100 and 0 > -1 / arg1 / 100:
                revert with 'NH{q', 17
            if not arg1 / 100:
                revert with 'NH{q', 18
            if 0 / arg1 / 100:
                revert with 0, 'SafeMath: multiplication overflow'
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
                    _373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_373] = 26
                    mem[_373 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_501] = 30
                    mem[_501 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_515 + idx + 68] = mem[_501 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_515 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _515 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_391] = 26
                    mem[_391 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_516] = 30
                    mem[_516 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 100000000 * 10^18:
                        if arg1 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor6 / 100000000 * 10^18)
                    _535 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_535 + idx + 68] = mem[_516 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_535 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _535 + -mem[64] + 100
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _385 = mem[64]
                mem[64] = mem[64] + 64
                mem[_385] = 30
                mem[_385 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_395 + idx + 68] = mem[_385 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_395 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _395 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _427 = mem[64]
                mem[64] = mem[64] + 64
                mem[_427] = 30
                mem[_427 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _435 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_435 + idx + 68] = mem[_427 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_435 + 98] = 0
                revert with memory
                  from mem[64]
                   len _435 + -mem[64] + 100
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
                _413 = mem[64]
                mem[64] = mem[64] + 64
                mem[_413] = 26
                mem[_413 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    _454 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_454] = 30
                    mem[_454 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_478] = 30
                    mem[_478 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _487 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_487 + idx + 68] = mem[_478 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_487 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _487 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _538 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_538] = 30
                    mem[_538 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _552 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_552 + idx + 68] = mem[_538 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_552 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _552 + -mem[64] + 100
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _481 = mem[64]
                mem[64] = mem[64] + 64
                mem[_481] = 30
                mem[_481 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    _491 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_491 + idx + 68] = mem[_481 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_491 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _491 + -mem[64] + 100
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_560] = 30
                mem[_560 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                    _573 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_573 + idx + 68] = mem[_560 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_573 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _573 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                _648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_648] = 30
                mem[_648 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                    if stor6 < arg1 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _668 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_668 + idx + 68] = mem[_648 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_668 + 98] = 0
                revert with memory
                  from mem[64]
                   len _668 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _419 = mem[64]
                mem[64] = mem[64] + 64
                mem[_419] = 30
                mem[_419 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _424 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_424 + idx + 68] = mem[_419 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_424 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _424 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _440 = mem[64]
                mem[64] = mem[64] + 64
                mem[_440] = 30
                mem[_440 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _444 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_444 + idx + 68] = mem[_440 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_444 + 98] = 0
                revert with memory
                  from mem[64]
                   len _444 + -mem[64] + 100
            _422 = mem[64]
            mem[64] = mem[64] + 64
            mem[_422] = 26
            mem[_422 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _456 = mem[64]
                mem[64] = mem[64] + 64
                mem[_456] = 30
                mem[_456 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _488 = mem[64]
                mem[64] = mem[64] + 64
                mem[_488] = 30
                mem[_488 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_500 + idx + 68] = mem[_488 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_500 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _500 + -mem[64] + 100
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _554 = mem[64]
                mem[64] = mem[64] + 64
                mem[_554] = 30
                mem[_554 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor6:
                    if stor6 < 0:
                        revert with 'NH{q', 17
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _568 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_568 + idx + 68] = mem[_554 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_568 + 98] = 0
                revert with memory
                  from mem[64]
                   len _568 + -mem[64] + 100
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _492 = mem[64]
            mem[64] = mem[64] + 64
            mem[_492] = 30
            mem[_492 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1 * stor6 / 100000000 * 10^18:
                _504 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_504 + idx + 68] = mem[_492 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_504 + 98] = 0
                revert with memory
                  from mem[64]
                   len _504 + -mem[64] + 100
            if arg1 * stor6 / 100000000 * 10^18 < 0:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            _576 = mem[64]
            mem[64] = mem[64] + 64
            mem[_576] = 30
            mem[_576 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                _586 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_586 + idx + 68] = mem[_576 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_586 + 98] = 0
                revert with memory
                  from mem[64]
                   len _586 + -mem[64] + 100
            if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
            _670 = mem[64]
            mem[64] = mem[64] + 64
            mem[_670] = 30
            mem[_670 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                if stor6 < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                if totalFees > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
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
    else:
        if arg1 / 100 and 0 > -1 / arg1 / 100:
            revert with 'NH{q', 17
        if not arg1 / 100:
            revert with 'NH{q', 18
        if 0 / arg1 / 100:
            revert with 0, 'SafeMath: multiplication overflow'
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
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = 26
                mem[_409 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    _453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_453] = 30
                    mem[_453 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _477 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_477] = 30
                    mem[_477 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_484 + idx + 68] = mem[_477 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_484 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _484 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_532] = 30
                    mem[_532 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _548 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_548 + idx + 68] = mem[_532 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_548 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _548 + -mem[64] + 100
                if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _479 = mem[64]
                mem[64] = mem[64] + 64
                mem[_479] = 30
                mem[_479 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor6 / 100000000 * 10^18:
                    _489 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_489 + idx + 68] = mem[_479 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_489 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _489 + -mem[64] + 100
                if arg1 * stor6 / 100000000 * 10^18 < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _557 = mem[64]
                mem[64] = mem[64] + 64
                mem[_557] = 30
                mem[_557 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                    _569 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_569 + idx + 68] = mem[_557 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_569 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _569 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
                _641 = mem[64]
                mem[64] = mem[64] + 64
                mem[_641] = 30
                mem[_641 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                    if stor6 < arg1 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _663 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_663 + idx + 68] = mem[_641 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_663 + 98] = 0
                revert with memory
                  from mem[64]
                   len _663 + -mem[64] + 100
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 1
                _417 = mem[64]
                mem[64] = mem[64] + 64
                mem[_417] = 30
                mem[_417 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_423 + idx + 68] = mem[_417 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_423 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _423 + -mem[64] + 100
                if t < stor1[stor5[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = stor5[idx]
                mem[32] = 2
                _439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_439] = 30
                mem[_439 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    if s < stor2[stor5[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _443 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_443 + idx + 68] = mem[_439 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_443 + 98] = 0
                revert with memory
                  from mem[64]
                   len _443 + -mem[64] + 100
            _421 = mem[64]
            mem[64] = mem[64] + 64
            mem[_421] = 26
            mem[_421 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _455 = mem[64]
                mem[64] = mem[64] + 64
                mem[_455] = 30
                mem[_455 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _485 = mem[64]
                mem[64] = mem[64] + 64
                mem[_485] = 30
                mem[_485 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_496 + idx + 68] = mem[_485 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_496 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _496 + -mem[64] + 100
                if stor1[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                _550 = mem[64]
                mem[64] = mem[64] + 64
                mem[_550] = 30
                mem[_550 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor6:
                    if stor6 < 0:
                        revert with 'NH{q', 17
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _564 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_564 + idx + 68] = mem[_550 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_564 + 98] = 0
                revert with memory
                  from mem[64]
                   len _564 + -mem[64] + 100
            if arg1 and stor6 / 100000000 * 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor6 / 100000000 * 10^18 / arg1 != stor6 / 100000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _490 = mem[64]
            mem[64] = mem[64] + 64
            mem[_490] = 30
            mem[_490 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1 * stor6 / 100000000 * 10^18:
                _502 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_502 + idx + 68] = mem[_490 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_502 + 98] = 0
                revert with memory
                  from mem[64]
                   len _502 + -mem[64] + 100
            if arg1 * stor6 / 100000000 * 10^18 < 0:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            _572 = mem[64]
            mem[64] = mem[64] + 64
            mem[_572] = 30
            mem[_572 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                _582 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_582 + idx + 68] = mem[_572 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_582 + 98] = 0
                revert with memory
                  from mem[64]
                   len _582 + -mem[64] + 100
            if stor1[address(msg.sender)] < arg1 * stor6 / 100000000 * 10^18:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor6 / 100000000 * 10^18
            _665 = mem[64]
            mem[64] = mem[64] + 64
            mem[_665] = 30
            mem[_665 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 100000000 * 10^18 <= stor6:
                if stor6 < arg1 * stor6 / 100000000 * 10^18:
                    revert with 'NH{q', 17
                stor6 += -1 * arg1 * stor6 / 100000000 * 10^18
                if totalFees > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _677 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_677 + idx + 68] = mem[_665 + idx + 32]
                idx = idx + 32
                continue 
            mem[_677 + 98] = 0
            revert with memory
              from mem[64]
               len _677 + -mem[64] + 100
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
    if totalFees > -arg1 - 1:
        revert with 'NH{q', 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if not stor4[address(msg.sender)]:
        if stor4[address(msg.sender)]:
            mem[0] = msg.sender
            mem[32] = 4
            if stor4[address(msg.sender)]:
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if not arg2 / 100:
                    mem[64] = 224
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    idx = 0
                    s = 100000000 * 10^18
                    t = stor6
                    while idx < stor5.length:
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        if stor1[stor5[idx]] > t:
                            _8027 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8027] = 26
                            mem[_8027 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8684 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8684] = 30
                                mem[_8684 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9044 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9044] = 30
                                mem[_9044 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9137 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9137 + idx + 68] = mem[_9044 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9137 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9137 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11099 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11099] = 30
                                mem[_11099 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11229 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11229 + idx + 68] = mem[_11099 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11229 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11229 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9075] = 30
                            mem[_9075 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9225 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9225 + idx + 68] = mem[_9075 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9225 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9225 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10194 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10194] = 30
                            mem[_10194 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10374 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10374 + idx + 68] = mem[_10194 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10374 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10374 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12753 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12753] = 30
                            mem[_12753 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _12930 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12930 + idx + 68] = mem[_12753 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12930 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12930 + -mem[64] + 100
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        if stor2[stor5[idx]] <= s:
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            _8145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8145] = 30
                            mem[_8145 + 32] = 'SafeMath: subtraction overflow'
                            if stor1[stor5[idx]] > t:
                                _8234 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8234 + idx + 68] = mem[_8145 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8234 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8234 + -mem[64] + 100
                            if t < stor1[stor5[idx]]:
                                revert with 'NH{q', 17
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            _8474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8474] = 30
                            mem[_8474 + 32] = 'SafeMath: subtraction overflow'
                            if stor2[stor5[idx]] <= s:
                                if s < stor2[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s - stor2[stor5[idx]]
                                t = t - stor1[stor5[idx]]
                                continue 
                            _8534 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_8534 + idx + 68] = mem[_8474 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_8534 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8534 + -mem[64] + 100
                        _8204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8204] = 26
                        mem[_8204 + 32] = 'SafeMath: division by zero'
                        if not arg2:
                            _8714 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8714] = 30
                            mem[_8714 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _9138 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9138] = 30
                            mem[_9138 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _9290 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9290 + idx + 68] = mem[_9138 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9290 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9290 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            _11230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11230] = 30
                            mem[_11230 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _11436 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11436 + idx + 68] = mem[_11230 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11436 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11436 + -mem[64] + 100
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9226] = 30
                        mem[_9226 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            _9406 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9406 + idx + 68] = mem[_9226 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9406 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9406 + -mem[64] + 100
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _10376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10376] = 30
                        mem[_10376 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            _10527 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10527 + idx + 68] = mem[_10376 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10527 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10527 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                        _12932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12932] = 30
                        mem[_12932 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _13067 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13067 + idx + 68] = mem[_12932 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13067 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13067 + -mem[64] + 100
                else:
                    if arg2 / 100 and 0 > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if 0 / arg2 / 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[64] = 224
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    idx = 0
                    s = 100000000 * 10^18
                    t = stor6
                    while idx < stor5.length:
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        if stor1[stor5[idx]] > t:
                            _8023 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8023] = 26
                            mem[_8023 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8683 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8683] = 30
                                mem[_8683 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9043 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9043] = 30
                                mem[_9043 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9134 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9134 + idx + 68] = mem[_9043 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9134 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9134 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11097 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11097] = 30
                                mem[_11097 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11225 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11225 + idx + 68] = mem[_11097 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11225 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11225 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9073 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9073] = 30
                            mem[_9073 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9223 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9223 + idx + 68] = mem[_9073 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9223 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9223 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10191 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10191] = 30
                            mem[_10191 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10371 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10371 + idx + 68] = mem[_10191 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10371 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10371 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12747 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12747] = 30
                            mem[_12747 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _12927 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12927 + idx + 68] = mem[_12747 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12927 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12927 + -mem[64] + 100
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        if stor2[stor5[idx]] <= s:
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            _8143 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8143] = 30
                            mem[_8143 + 32] = 'SafeMath: subtraction overflow'
                            if stor1[stor5[idx]] > t:
                                _8233 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8233 + idx + 68] = mem[_8143 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8233 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8233 + -mem[64] + 100
                            if t < stor1[stor5[idx]]:
                                revert with 'NH{q', 17
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            _8473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8473] = 30
                            mem[_8473 + 32] = 'SafeMath: subtraction overflow'
                            if stor2[stor5[idx]] <= s:
                                if s < stor2[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s - stor2[stor5[idx]]
                                t = t - stor1[stor5[idx]]
                                continue 
                            _8533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_8533 + idx + 68] = mem[_8473 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_8533 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8533 + -mem[64] + 100
                        _8203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8203] = 26
                        mem[_8203 + 32] = 'SafeMath: division by zero'
                        if not arg2:
                            _8713 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8713] = 30
                            mem[_8713 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _9135 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9135] = 30
                            mem[_9135 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _9286 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9286 + idx + 68] = mem[_9135 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9286 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9286 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            _11226 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11226] = 30
                            mem[_11226 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _11431 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11431 + idx + 68] = mem[_11226 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11431 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11431 + -mem[64] + 100
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9224] = 30
                        mem[_9224 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            _9404 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9404 + idx + 68] = mem[_9224 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9404 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9404 + -mem[64] + 100
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _10373 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10373] = 30
                        mem[_10373 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            _10524 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10524 + idx + 68] = mem[_10373 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10524 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10524 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                        _12929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12929] = 30
                        mem[_12929 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _13063 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13063 + idx + 68] = mem[_12929 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13063 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13063 + -mem[64] + 100
            else:
                mem[0] = arg1
                mem[32] = 4
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if stor4[address(arg1)]:
                    if not arg2 / 100:
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8035 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8035] = 26
                                mem[_8035 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8686 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8686] = 30
                                    mem[_8686 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9046 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9046] = 30
                                    mem[_9046 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9143 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9143 + idx + 68] = mem[_9046 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9143 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9143 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11103 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11103] = 30
                                    mem[_11103 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11237 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11237 + idx + 68] = mem[_11103 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11237 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11237 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9079 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9079] = 30
                                mem[_9079 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9229 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9229 + idx + 68] = mem[_9079 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9229 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9229 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10200 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10200] = 30
                                mem[_10200 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10380 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10380 + idx + 68] = mem[_10200 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10380 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10380 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12765 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12765] = 30
                                mem[_12765 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12936 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12936 + idx + 68] = mem[_12765 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12936 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12936 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8149] = 30
                                mem[_8149 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8236 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8236 + idx + 68] = mem[_8149 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8236 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8236 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8476 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8476] = 30
                                mem[_8476 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8536 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8536 + idx + 68] = mem[_8476 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8536 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8536 + -mem[64] + 100
                            _8206 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8206] = 26
                            mem[_8206 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8716 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8716] = 30
                                mem[_8716 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9144 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9144] = 30
                                mem[_9144 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9298 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9298 + idx + 68] = mem[_9144 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9298 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9298 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11238 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11238] = 30
                                mem[_11238 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11446 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11446 + idx + 68] = mem[_11238 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11446 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11446 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9230] = 30
                            mem[_9230 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9410 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9410 + idx + 68] = mem[_9230 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9410 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9410 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10382 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10382] = 30
                            mem[_10382 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10533 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10533 + idx + 68] = mem[_10382 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10533 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10533 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12938] = 30
                            mem[_12938 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13075 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13075 + idx + 68] = mem[_12938 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13075 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13075 + -mem[64] + 100
                    else:
                        if arg2 / 100 and 0 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 0 / arg2 / 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8031 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8031] = 26
                                mem[_8031 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8685 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8685] = 30
                                    mem[_8685 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9045 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9045] = 30
                                    mem[_9045 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9140 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9140 + idx + 68] = mem[_9045 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9140 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9140 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11101 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11101] = 30
                                    mem[_11101 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11233 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11233 + idx + 68] = mem[_11101 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11233 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11233 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9077 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9077] = 30
                                mem[_9077 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9227 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9227 + idx + 68] = mem[_9077 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9227 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9227 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10197 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10197] = 30
                                mem[_10197 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10377 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10377 + idx + 68] = mem[_10197 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10377 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10377 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12759 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12759] = 30
                                mem[_12759 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12933 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12933 + idx + 68] = mem[_12759 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12933 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12933 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8147 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8147] = 30
                                mem[_8147 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8235 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8235 + idx + 68] = mem[_8147 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8235 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8235 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8475 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8475] = 30
                                mem[_8475 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8535 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8535 + idx + 68] = mem[_8475 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8535 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8535 + -mem[64] + 100
                            _8205 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8205] = 26
                            mem[_8205 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8715 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8715] = 30
                                mem[_8715 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9141 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9141] = 30
                                mem[_9141 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9294 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9294 + idx + 68] = mem[_9141 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9294 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9294 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11234 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11234] = 30
                                mem[_11234 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11441 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11441 + idx + 68] = mem[_11234 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11441 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11441 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9228 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9228] = 30
                            mem[_9228 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9408 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9408 + idx + 68] = mem[_9228 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9408 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9408 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10379 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10379] = 30
                            mem[_10379 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10530 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10530 + idx + 68] = mem[_10379 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10530 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10530 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12935 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12935] = 30
                            mem[_12935 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13071 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13071 + idx + 68] = mem[_12935 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13071 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13071 + -mem[64] + 100
                else:
                    if not arg2 / 100:
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8043 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8043] = 26
                                mem[_8043 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8688 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8688] = 30
                                    mem[_8688 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9048] = 30
                                    mem[_9048 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9149 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9149 + idx + 68] = mem[_9048 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9149 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9149 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11107 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11107] = 30
                                    mem[_11107 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11245 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11245 + idx + 68] = mem[_11107 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11245 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11245 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9083 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9083] = 30
                                mem[_9083 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9233 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9233 + idx + 68] = mem[_9083 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9233 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9233 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10206 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10206] = 30
                                mem[_10206 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10386 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10386 + idx + 68] = mem[_10206 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10386 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10386 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12777 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12777] = 30
                                mem[_12777 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12942 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12942 + idx + 68] = mem[_12777 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12942 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12942 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8153] = 30
                                mem[_8153 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8238 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8238 + idx + 68] = mem[_8153 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8238 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8238 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8478 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8478] = 30
                                mem[_8478 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8538 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8538 + idx + 68] = mem[_8478 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8538 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8538 + -mem[64] + 100
                            _8208 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8208] = 26
                            mem[_8208 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8718 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8718] = 30
                                mem[_8718 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9150 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9150] = 30
                                mem[_9150 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9306 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9306 + idx + 68] = mem[_9150 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9306 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9306 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11246 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11246] = 30
                                mem[_11246 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11456 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11456 + idx + 68] = mem[_11246 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11456 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11456 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9234 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9234] = 30
                            mem[_9234 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9414 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9414 + idx + 68] = mem[_9234 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9414 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9414 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10388 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10388] = 30
                            mem[_10388 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10539 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10539 + idx + 68] = mem[_10388 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10539 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10539 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12944 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12944] = 30
                            mem[_12944 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13083 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13083 + idx + 68] = mem[_12944 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13083 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13083 + -mem[64] + 100
                    else:
                        if arg2 / 100 and 0 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 0 / arg2 / 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8039 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8039] = 26
                                mem[_8039 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8687 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8687] = 30
                                    mem[_8687 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9047 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9047] = 30
                                    mem[_9047 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9146 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9146 + idx + 68] = mem[_9047 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9146 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9146 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11105 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11105] = 30
                                    mem[_11105 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11241 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11241 + idx + 68] = mem[_11105 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11241 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11241 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9081 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9081] = 30
                                mem[_9081 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9231 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9231 + idx + 68] = mem[_9081 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9231 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9231 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10203 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10203] = 30
                                mem[_10203 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10383 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10383 + idx + 68] = mem[_10203 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10383 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10383 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12771 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12771] = 30
                                mem[_12771 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12939 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12939 + idx + 68] = mem[_12771 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12939 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12939 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8151 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8151] = 30
                                mem[_8151 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8237 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8237 + idx + 68] = mem[_8151 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8237 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8237 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8477 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8477] = 30
                                mem[_8477 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8537 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8537 + idx + 68] = mem[_8477 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8537 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8537 + -mem[64] + 100
                            _8207 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8207] = 26
                            mem[_8207 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8717 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8717] = 30
                                mem[_8717 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9147 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9147] = 30
                                mem[_9147 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9302 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9302 + idx + 68] = mem[_9147 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9302 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9302 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11242 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11242] = 30
                                mem[_11242 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11451 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11451 + idx + 68] = mem[_11242 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11451 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11451 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9232 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9232] = 30
                            mem[_9232 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9412 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9412 + idx + 68] = mem[_9232 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9412 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9412 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10385 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10385] = 30
                            mem[_10385 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10536 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10536 + idx + 68] = mem[_10385 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10536 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10536 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12941] = 30
                            mem[_12941 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13079 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13079 + idx + 68] = mem[_12941 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13079 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13079 + -mem[64] + 100
            if t < stor6 / 100000000 * 10^18:
                if not arg2:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
            else:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg2:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and t / s > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * t / s / arg2 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg2 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 * t / s < 0:
                        revert with 'NH{q', 17
                    if arg2 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg2 * t / s:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg2 * t / s
                    if stor1[address(arg1)] > (-1 * arg2 * t / s) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] + (arg2 * t / s) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg1)] += arg2 * t / s
        else:
            mem[0] = arg1
            mem[32] = 4
            if stor4[address(arg1)]:
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if not arg2 / 100:
                    mem[64] = 224
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    idx = 0
                    s = 100000000 * 10^18
                    t = stor6
                    while idx < stor5.length:
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        if stor1[stor5[idx]] > t:
                            _8075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8075] = 26
                            mem[_8075 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8696 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8696] = 30
                                mem[_8696 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9056 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9056] = 30
                                mem[_9056 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9173 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9173 + idx + 68] = mem[_9056 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9173 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9173 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += arg2
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _12231 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12231] = 30
                                mem[_12231 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12402 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12402 + idx + 68] = mem[_12231 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12402 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12402 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9099 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9099] = 30
                            mem[_9099 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9249 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9249 + idx + 68] = mem[_9099 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9249 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9249 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10230] = 30
                            mem[_10230 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10410 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10410 + idx + 68] = mem[_10230 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10410 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10410 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _13727 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13727] = 30
                            mem[_13727 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13858 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13858 + idx + 68] = mem[_13727 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13858 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13858 + -mem[64] + 100
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        if stor2[stor5[idx]] <= s:
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            _8169 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8169] = 30
                            mem[_8169 + 32] = 'SafeMath: subtraction overflow'
                            if stor1[stor5[idx]] > t:
                                _8246 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8246 + idx + 68] = mem[_8169 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8246 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8246 + -mem[64] + 100
                            if t < stor1[stor5[idx]]:
                                revert with 'NH{q', 17
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            _8486 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8486] = 30
                            mem[_8486 + 32] = 'SafeMath: subtraction overflow'
                            if stor2[stor5[idx]] <= s:
                                if s < stor2[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s - stor2[stor5[idx]]
                                t = t - stor1[stor5[idx]]
                                continue 
                            _8546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_8546 + idx + 68] = mem[_8486 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_8546 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8546 + -mem[64] + 100
                        _8216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8216] = 26
                        mem[_8216 + 32] = 'SafeMath: division by zero'
                        if not arg2:
                            _8726 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8726] = 30
                            mem[_8726 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _9174 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9174] = 30
                            mem[_9174 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _9338 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9338 + idx + 68] = mem[_9174 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9338 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9338 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            _12404 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12404] = 30
                            mem[_12404 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _12718 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12718 + idx + 68] = mem[_12404 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12718 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12718 + -mem[64] + 100
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9250] = 30
                        mem[_9250 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            _9430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9430 + idx + 68] = mem[_9250 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9430 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9430 + -mem[64] + 100
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _10412 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10412] = 30
                        mem[_10412 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            _10563 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10563 + idx + 68] = mem[_10412 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10563 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10563 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor2[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += arg2
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                        _13860 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13860] = 30
                        mem[_13860 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _14053 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14053 + idx + 68] = mem[_13860 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14053 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _14053 + -mem[64] + 100
                else:
                    if arg2 / 100 and 0 > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if 0 / arg2 / 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[64] = 224
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    idx = 0
                    s = 100000000 * 10^18
                    t = stor6
                    while idx < stor5.length:
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        if stor1[stor5[idx]] > t:
                            _8071 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8071] = 26
                            mem[_8071 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8695 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8695] = 30
                                mem[_8695 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9055 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9055] = 30
                                mem[_9055 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9170 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9170 + idx + 68] = mem[_9055 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9170 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9170 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += arg2
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _12228 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12228] = 30
                                mem[_12228 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12398 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12398 + idx + 68] = mem[_12228 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12398 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12398 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9097 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9097] = 30
                            mem[_9097 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9247 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9247 + idx + 68] = mem[_9097 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9247 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9247 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10227 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10227] = 30
                            mem[_10227 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10407 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10407 + idx + 68] = mem[_10227 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10407 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10407 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _13721 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13721] = 30
                            mem[_13721 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13855 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13855 + idx + 68] = mem[_13721 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13855 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13855 + -mem[64] + 100
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        if stor2[stor5[idx]] <= s:
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            _8167 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8167] = 30
                            mem[_8167 + 32] = 'SafeMath: subtraction overflow'
                            if stor1[stor5[idx]] > t:
                                _8245 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8245 + idx + 68] = mem[_8167 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8245 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8245 + -mem[64] + 100
                            if t < stor1[stor5[idx]]:
                                revert with 'NH{q', 17
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            _8485 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8485] = 30
                            mem[_8485 + 32] = 'SafeMath: subtraction overflow'
                            if stor2[stor5[idx]] <= s:
                                if s < stor2[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s - stor2[stor5[idx]]
                                t = t - stor1[stor5[idx]]
                                continue 
                            _8545 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_8545 + idx + 68] = mem[_8485 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_8545 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8545 + -mem[64] + 100
                        _8215 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8215] = 26
                        mem[_8215 + 32] = 'SafeMath: division by zero'
                        if not arg2:
                            _8725 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8725] = 30
                            mem[_8725 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _9171 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9171] = 30
                            mem[_9171 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _9334 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9334 + idx + 68] = mem[_9171 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9334 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9334 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            _12400 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12400] = 30
                            mem[_12400 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _12716 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12716 + idx + 68] = mem[_12400 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12716 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12716 + -mem[64] + 100
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9248] = 30
                        mem[_9248 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            _9428 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9428 + idx + 68] = mem[_9248 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9428 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9428 + -mem[64] + 100
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _10409 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10409] = 30
                        mem[_10409 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            _10560 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10560 + idx + 68] = mem[_10409 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10560 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10560 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor2[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += arg2
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                        _13857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13857] = 30
                        mem[_13857 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _14051 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14051 + idx + 68] = mem[_13857 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14051 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _14051 + -mem[64] + 100
                if t < stor6 / 100000000 * 10^18:
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += arg2
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor2[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += arg2
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                else:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not s:
                        revert with 'NH{q', 18
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += arg2
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and t / s > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * t / s / arg2 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg2 * t / s > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * t / s:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * t / s
                        if stor2[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += arg2
                        if stor1[address(arg1)] > (-1 * arg2 * t / s) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * t / s) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += arg2 * t / s
            else:
                mem[0] = msg.sender
                mem[32] = 4
                if stor4[address(msg.sender)]:
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if not arg2 / 100:
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8051 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8051] = 26
                                mem[_8051 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8690 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8690] = 30
                                    mem[_8690 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9050 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9050] = 30
                                    mem[_9050 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9155 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9155 + idx + 68] = mem[_9050 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9155 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9155 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11111 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11111] = 30
                                    mem[_11111 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11253 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11253 + idx + 68] = mem[_11111 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11253 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11253 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9087 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9087] = 30
                                mem[_9087 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9237 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9237 + idx + 68] = mem[_9087 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9237 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9237 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10212 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10212] = 30
                                mem[_10212 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10392 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10392 + idx + 68] = mem[_10212 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10392 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10392 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12789 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12789] = 30
                                mem[_12789 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12948 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12948 + idx + 68] = mem[_12789 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12948 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12948 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8157 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8157] = 30
                                mem[_8157 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8240 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8240 + idx + 68] = mem[_8157 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8240 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8240 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8480 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8480] = 30
                                mem[_8480 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8540 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8540 + idx + 68] = mem[_8480 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8540 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8540 + -mem[64] + 100
                            _8210 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8210] = 26
                            mem[_8210 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8720 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8720] = 30
                                mem[_8720 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9156 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9156] = 30
                                mem[_9156 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9314 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9314 + idx + 68] = mem[_9156 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9314 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9314 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11254 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11254] = 30
                                mem[_11254 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11466 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11466 + idx + 68] = mem[_11254 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11466 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11466 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9238 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9238] = 30
                            mem[_9238 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9418 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9418 + idx + 68] = mem[_9238 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9418 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9418 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10394 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10394] = 30
                            mem[_10394 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10545 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10545 + idx + 68] = mem[_10394 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10545 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10545 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12950 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12950] = 30
                            mem[_12950 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13091 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13091 + idx + 68] = mem[_12950 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13091 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13091 + -mem[64] + 100
                    else:
                        if arg2 / 100 and 0 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 0 / arg2 / 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8047 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8047] = 26
                                mem[_8047 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8689 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8689] = 30
                                    mem[_8689 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9049 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9049] = 30
                                    mem[_9049 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9152 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9152 + idx + 68] = mem[_9049 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9152 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9152 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11109 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11109] = 30
                                    mem[_11109 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11249 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11249 + idx + 68] = mem[_11109 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11249 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11249 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9085 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9085] = 30
                                mem[_9085 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9235 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9235 + idx + 68] = mem[_9085 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9235 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9235 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10209 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10209] = 30
                                mem[_10209 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10389 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10389 + idx + 68] = mem[_10209 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10389 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10389 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12783 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12783] = 30
                                mem[_12783 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12945 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12945 + idx + 68] = mem[_12783 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12945 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12945 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8155 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8155] = 30
                                mem[_8155 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8239 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8239 + idx + 68] = mem[_8155 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8239 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8239 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8479 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8479] = 30
                                mem[_8479 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8539 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8539 + idx + 68] = mem[_8479 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8539 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8539 + -mem[64] + 100
                            _8209 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8209] = 26
                            mem[_8209 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8719 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8719] = 30
                                mem[_8719 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9153] = 30
                                mem[_9153 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9310 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9310 + idx + 68] = mem[_9153 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9310 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9310 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11250 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11250] = 30
                                mem[_11250 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11461 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11461 + idx + 68] = mem[_11250 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11461 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11461 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9236 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9236] = 30
                            mem[_9236 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9416 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9416 + idx + 68] = mem[_9236 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9416 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9416 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10391 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10391] = 30
                            mem[_10391 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10542 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10542 + idx + 68] = mem[_10391 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10542 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10542 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12947 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12947] = 30
                            mem[_12947 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13087 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13087 + idx + 68] = mem[_12947 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13087 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13087 + -mem[64] + 100
                else:
                    mem[0] = arg1
                    mem[32] = 4
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if stor4[address(arg1)]:
                        if not arg2 / 100:
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8059 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8059] = 26
                                    mem[_8059 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8692 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8692] = 30
                                        mem[_8692 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9052 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9052] = 30
                                        mem[_9052 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9161 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9161 + idx + 68] = mem[_9052 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9161 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9161 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11115 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11115] = 30
                                        mem[_11115 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11261 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11261 + idx + 68] = mem[_11115 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11261 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11261 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9091 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9091] = 30
                                    mem[_9091 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9241 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9241 + idx + 68] = mem[_9091 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9241 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9241 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10218 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10218] = 30
                                    mem[_10218 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10398 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10398 + idx + 68] = mem[_10218 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10398 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10398 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12801 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12801] = 30
                                    mem[_12801 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12954 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12954 + idx + 68] = mem[_12801 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12954 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12954 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8161 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8161] = 30
                                    mem[_8161 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8242 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8242 + idx + 68] = mem[_8161 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8242 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8242 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8482 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8482] = 30
                                    mem[_8482 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8542 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8542 + idx + 68] = mem[_8482 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8542 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8542 + -mem[64] + 100
                                _8212 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8212] = 26
                                mem[_8212 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8722 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8722] = 30
                                    mem[_8722 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9162 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9162] = 30
                                    mem[_9162 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9322 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9322 + idx + 68] = mem[_9162 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9322 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9322 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11262 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11262] = 30
                                    mem[_11262 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11476 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11476 + idx + 68] = mem[_11262 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11476 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11476 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9242 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9242] = 30
                                mem[_9242 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9422 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9422 + idx + 68] = mem[_9242 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9422 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9422 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10400 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10400] = 30
                                mem[_10400 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10551 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10551 + idx + 68] = mem[_10400 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10551 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10551 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12956 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12956] = 30
                                mem[_12956 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13099 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13099 + idx + 68] = mem[_12956 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13099 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13099 + -mem[64] + 100
                        else:
                            if arg2 / 100 and 0 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if not arg2 / 100:
                                revert with 'NH{q', 18
                            if 0 / arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8055 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8055] = 26
                                    mem[_8055 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8691 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8691] = 30
                                        mem[_8691 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9051 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9051] = 30
                                        mem[_9051 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9158 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9158 + idx + 68] = mem[_9051 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9158 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9158 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11113 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11113] = 30
                                        mem[_11113 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11257 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11257 + idx + 68] = mem[_11113 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11257 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11257 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9089 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9089] = 30
                                    mem[_9089 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9239 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9239 + idx + 68] = mem[_9089 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9239 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9239 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10215 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10215] = 30
                                    mem[_10215 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10395 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10395 + idx + 68] = mem[_10215 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10395 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10395 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12795 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12795] = 30
                                    mem[_12795 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12951 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12951 + idx + 68] = mem[_12795 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12951 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12951 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8159 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8159] = 30
                                    mem[_8159 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8241 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8241 + idx + 68] = mem[_8159 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8241 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8241 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8481 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8481] = 30
                                    mem[_8481 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8541 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8541 + idx + 68] = mem[_8481 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8541 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8541 + -mem[64] + 100
                                _8211 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8211] = 26
                                mem[_8211 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8721 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8721] = 30
                                    mem[_8721 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9159 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9159] = 30
                                    mem[_9159 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9318 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9318 + idx + 68] = mem[_9159 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9318 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9318 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11258 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11258] = 30
                                    mem[_11258 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11471 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11471 + idx + 68] = mem[_11258 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11471 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11471 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9240 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9240] = 30
                                mem[_9240 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9420 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9420 + idx + 68] = mem[_9240 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9420 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9420 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10397 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10397] = 30
                                mem[_10397 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10548 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10548 + idx + 68] = mem[_10397 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10548 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10548 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12953 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12953] = 30
                                mem[_12953 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13095 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13095 + idx + 68] = mem[_12953 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13095 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13095 + -mem[64] + 100
                    else:
                        if not arg2 / 100:
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8067 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8067] = 26
                                    mem[_8067 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8694 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8694] = 30
                                        mem[_8694 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9054 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9054] = 30
                                        mem[_9054 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9167 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9167 + idx + 68] = mem[_9054 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9167 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9167 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11119 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11119] = 30
                                        mem[_11119 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11269 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11269 + idx + 68] = mem[_11119 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11269 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11269 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9095 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9095] = 30
                                    mem[_9095 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9245 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9245 + idx + 68] = mem[_9095 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9245 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9245 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10224 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10224] = 30
                                    mem[_10224 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10404 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10404 + idx + 68] = mem[_10224 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10404 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10404 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12813 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12813] = 30
                                    mem[_12813 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12960 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12960 + idx + 68] = mem[_12813 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12960 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12960 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8165 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8165] = 30
                                    mem[_8165 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8244 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8244 + idx + 68] = mem[_8165 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8244 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8244 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8484 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8484] = 30
                                    mem[_8484 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8544 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8544 + idx + 68] = mem[_8484 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8544 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8544 + -mem[64] + 100
                                _8214 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8214] = 26
                                mem[_8214 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8724 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8724] = 30
                                    mem[_8724 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9168 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9168] = 30
                                    mem[_9168 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9330 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9330 + idx + 68] = mem[_9168 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9330 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9330 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11270 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11270] = 30
                                    mem[_11270 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11486 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11486 + idx + 68] = mem[_11270 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11486 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11486 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9246 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9246] = 30
                                mem[_9246 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9426 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9426 + idx + 68] = mem[_9246 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9426 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9426 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10406 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10406] = 30
                                mem[_10406 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10557 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10557 + idx + 68] = mem[_10406 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10557 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10557 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12962 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12962] = 30
                                mem[_12962 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13107 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13107 + idx + 68] = mem[_12962 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13107 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13107 + -mem[64] + 100
                        else:
                            if arg2 / 100 and 0 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if not arg2 / 100:
                                revert with 'NH{q', 18
                            if 0 / arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8063 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8063] = 26
                                    mem[_8063 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8693 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8693] = 30
                                        mem[_8693 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9053 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9053] = 30
                                        mem[_9053 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9164 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9164 + idx + 68] = mem[_9053 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9164 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9164 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11117 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11117] = 30
                                        mem[_11117 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11265 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11265 + idx + 68] = mem[_11117 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11265 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11265 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9093 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9093] = 30
                                    mem[_9093 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9243 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9243 + idx + 68] = mem[_9093 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9243 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9243 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10221 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10221] = 30
                                    mem[_10221 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10401 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10401 + idx + 68] = mem[_10221 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10401 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10401 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12807 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12807] = 30
                                    mem[_12807 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12957 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12957 + idx + 68] = mem[_12807 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12957 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12957 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8163 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8163] = 30
                                    mem[_8163 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8243 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8243 + idx + 68] = mem[_8163 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8243 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8243 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8483 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8483] = 30
                                    mem[_8483 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8543 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8543 + idx + 68] = mem[_8483 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8543 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8543 + -mem[64] + 100
                                _8213 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8213] = 26
                                mem[_8213 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8723 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8723] = 30
                                    mem[_8723 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9165 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9165] = 30
                                    mem[_9165 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9326 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9326 + idx + 68] = mem[_9165 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9326 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9326 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11266 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11266] = 30
                                    mem[_11266 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11481 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11481 + idx + 68] = mem[_11266 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11481 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11481 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9244 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9244] = 30
                                mem[_9244 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9424 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9424 + idx + 68] = mem[_9244 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9424 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9424 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10403 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10403] = 30
                                mem[_10403 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10554 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10554 + idx + 68] = mem[_10403 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10554 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10554 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12959 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12959] = 30
                                mem[_12959 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13103 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13103 + idx + 68] = mem[_12959 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13103 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13103 + -mem[64] + 100
                if t < stor6 / 100000000 * 10^18:
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                else:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not s:
                        revert with 'NH{q', 18
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and t / s > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * t / s / arg2 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg2 * t / s > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * t / s:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * t / s
                        if stor1[address(arg1)] > (-1 * arg2 * t / s) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * t / s) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += arg2 * t / s
    else:
        mem[0] = arg1
        mem[32] = 4
        if not stor4[address(arg1)]:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not arg2 / 100:
                mem[64] = 224
                mem[160] = 30
                mem[192] = 'SafeMath: subtraction overflow'
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0:
                    revert with 'NH{q', 17
                idx = 0
                s = 100000000 * 10^18
                t = stor6
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _8139 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8139] = 26
                        mem[_8139 + 32] = 'SafeMath: division by zero'
                        if not arg2:
                            _8712 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8712] = 30
                            mem[_8712 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 2
                            _9072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9072] = 30
                            mem[_9072 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 > stor2[address(msg.sender)]:
                                _9221 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9221 + idx + 68] = mem[_9072 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9221 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9221 + -mem[64] + 100
                            if stor2[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            stor2[address(msg.sender)] -= arg2
                            mem[0] = msg.sender
                            mem[32] = 1
                            _9974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9974] = 30
                            mem[_9974 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _10186 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10186 + idx + 68] = mem[_9974 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10186 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10186 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            _12464 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12464] = 30
                            mem[_12464 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _12741 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12741 + idx + 68] = mem[_12464 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12741 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12741 + -mem[64] + 100
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9131 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9131] = 30
                        mem[_9131 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            _9281 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9281 + idx + 68] = mem[_9131 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9281 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9281 + -mem[64] + 100
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _10278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10278] = 30
                        mem[_10278 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 > stor2[address(msg.sender)]:
                            _10459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10459 + idx + 68] = mem[_10278 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10459 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10459 + -mem[64] + 100
                        if stor2[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        stor2[address(msg.sender)] -= arg2
                        mem[0] = msg.sender
                        mem[32] = 1
                        _11576 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11576] = 30
                        mem[_11576 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            _11902 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11902 + idx + 68] = mem[_11576 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11902 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11902 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                        _13925 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13925] = 30
                        mem[_13925 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _14062 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14062 + idx + 68] = mem[_13925 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14062 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _14062 + -mem[64] + 100
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _8201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8201] = 30
                        mem[_8201 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _8262 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_8262 + idx + 68] = mem[_8201 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_8262 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8262 + -mem[64] + 100
                        if t < stor1[stor5[idx]]:
                            revert with 'NH{q', 17
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _8502 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8502] = 30
                        mem[_8502 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            if s < stor2[stor5[idx]]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _8562 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_8562 + idx + 68] = mem[_8502 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_8562 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8562 + -mem[64] + 100
                    _8232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8232] = 26
                    mem[_8232 + 32] = 'SafeMath: division by zero'
                    if not arg2:
                        _8742 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8742] = 30
                        mem[_8742 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _9222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9222] = 30
                        mem[_9222 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 > stor2[address(msg.sender)]:
                            _9402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9402 + idx + 68] = mem[_9222 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9402 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9402 + -mem[64] + 100
                        if stor2[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        stor2[address(msg.sender)] -= arg2
                        mem[0] = msg.sender
                        mem[32] = 1
                        _10188 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10188] = 30
                        mem[_10188 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _10370 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10370 + idx + 68] = mem[_10188 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10370 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10370 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        _12742 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12742] = 30
                        mem[_12742 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _12926 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12926 + idx + 68] = mem[_12742 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12926 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12926 + -mem[64] + 100
                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _9282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9282] = 30
                    mem[_9282 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                        _9462 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_9462 + idx + 68] = mem[_9282 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_9462 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9462 + -mem[64] + 100
                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _10462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10462] = 30
                    mem[_10462 + 32] = 'SafeMath: subtraction overflow'
                    if arg2 > stor2[address(msg.sender)]:
                        _10612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10612 + idx + 68] = mem[_10462 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10612 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10612 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] -= arg2
                    mem[0] = msg.sender
                    mem[32] = 1
                    _11904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11904] = 30
                    mem[_11904 + 32] = 'SafeMath: subtraction overflow'
                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                        _12149 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12149 + idx + 68] = mem[_11904 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12149 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12149 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 1
                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                    _14064 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14064] = 30
                    mem[_14064 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -1:
                            revert with 'NH{q', 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    _14297 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_14297 + idx + 68] = mem[_14064 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_14297 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _14297 + -mem[64] + 100
            else:
                if arg2 / 100 and 0 > -1 / arg2 / 100:
                    revert with 'NH{q', 17
                if not arg2 / 100:
                    revert with 'NH{q', 18
                if 0 / arg2 / 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[64] = 224
                mem[160] = 30
                mem[192] = 'SafeMath: subtraction overflow'
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0:
                    revert with 'NH{q', 17
                idx = 0
                s = 100000000 * 10^18
                t = stor6
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _8135 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8135] = 26
                        mem[_8135 + 32] = 'SafeMath: division by zero'
                        if not arg2:
                            _8711 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8711] = 30
                            mem[_8711 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 2
                            _9071 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9071] = 30
                            mem[_9071 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 > stor2[address(msg.sender)]:
                                _9218 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9218 + idx + 68] = mem[_9071 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9218 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9218 + -mem[64] + 100
                            if stor2[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            stor2[address(msg.sender)] -= arg2
                            mem[0] = msg.sender
                            mem[32] = 1
                            _9968 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9968] = 30
                            mem[_9968 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _10182 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10182 + idx + 68] = mem[_9968 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10182 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10182 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            _12461 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12461] = 30
                            mem[_12461 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _12737 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12737 + idx + 68] = mem[_12461 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12737 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _12737 + -mem[64] + 100
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9129 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9129] = 30
                        mem[_9129 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            _9279 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9279 + idx + 68] = mem[_9129 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9279 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9279 + -mem[64] + 100
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _10275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10275] = 30
                        mem[_10275 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 > stor2[address(msg.sender)]:
                            _10455 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10455 + idx + 68] = mem[_10275 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10455 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10455 + -mem[64] + 100
                        if stor2[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        stor2[address(msg.sender)] -= arg2
                        mem[0] = msg.sender
                        mem[32] = 1
                        _11569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11569] = 30
                        mem[_11569 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            _11897 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11897 + idx + 68] = mem[_11569 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11897 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11897 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                        _13919 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13919] = 30
                        mem[_13919 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _14059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14059 + idx + 68] = mem[_13919 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14059 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _14059 + -mem[64] + 100
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _8199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8199] = 30
                        mem[_8199 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _8261 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_8261 + idx + 68] = mem[_8199 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_8261 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8261 + -mem[64] + 100
                        if t < stor1[stor5[idx]]:
                            revert with 'NH{q', 17
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _8501 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8501] = 30
                        mem[_8501 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            if s < stor2[stor5[idx]]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _8561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_8561 + idx + 68] = mem[_8501 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_8561 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8561 + -mem[64] + 100
                    _8231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8231] = 26
                    mem[_8231 + 32] = 'SafeMath: division by zero'
                    if not arg2:
                        _8741 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8741] = 30
                        mem[_8741 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _9219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9219] = 30
                        mem[_9219 + 32] = 'SafeMath: subtraction overflow'
                        if arg2 > stor2[address(msg.sender)]:
                            _9398 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_9398 + idx + 68] = mem[_9219 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_9398 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9398 + -mem[64] + 100
                        if stor2[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        stor2[address(msg.sender)] -= arg2
                        mem[0] = msg.sender
                        mem[32] = 1
                        _10184 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10184] = 30
                        mem[_10184 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _10366 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10366 + idx + 68] = mem[_10184 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10366 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10366 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        _12738 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12738] = 30
                        mem[_12738 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if stor6 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -1:
                                revert with 'NH{q', 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        _12921 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12921 + idx + 68] = mem[_12738 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12921 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12921 + -mem[64] + 100
                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _9280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9280] = 30
                    mem[_9280 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                        _9460 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_9460 + idx + 68] = mem[_9280 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_9460 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9460 + -mem[64] + 100
                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _10458 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10458] = 30
                    mem[_10458 + 32] = 'SafeMath: subtraction overflow'
                    if arg2 > stor2[address(msg.sender)]:
                        _10608 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10608 + idx + 68] = mem[_10458 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10608 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10608 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] -= arg2
                    mem[0] = msg.sender
                    mem[32] = 1
                    _11899 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11899] = 30
                    mem[_11899 + 32] = 'SafeMath: subtraction overflow'
                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                        _12147 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12147 + idx + 68] = mem[_11899 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12147 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _12147 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 1
                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                    _14061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14061] = 30
                    mem[_14061 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -1:
                            revert with 'NH{q', 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    _14293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_14293 + idx + 68] = mem[_14061 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_14293 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _14293 + -mem[64] + 100
            if t < stor6 / 100000000 * 10^18:
                if not arg2:
                    if arg2 > stor2[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] -= arg2
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                        revert with 'NH{q', 17
                    if arg2 > stor2[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] -= arg2
                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
            else:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg2:
                    if arg2 > stor2[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] -= arg2
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and t / s > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * t / s / arg2 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg2 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 * t / s < 0:
                        revert with 'NH{q', 17
                    if arg2 > stor2[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] -= arg2
                    if arg2 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg2 * t / s:
                        revert with 'NH{q', 17
                    stor1[address(msg.sender)] += -1 * arg2 * t / s
                    if stor1[address(arg1)] > (-1 * arg2 * t / s) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(arg1)] + (arg2 * t / s) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg1)] += arg2 * t / s
        else:
            if stor4[address(msg.sender)]:
                mem[0] = msg.sender
                mem[32] = 4
                if stor4[address(msg.sender)]:
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if not arg2 / 100:
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8083 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8083] = 26
                                mem[_8083 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8698 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8698] = 30
                                    mem[_8698 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9058 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9058] = 30
                                    mem[_9058 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9179 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9179 + idx + 68] = mem[_9058 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9179 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9179 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11127 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11127] = 30
                                    mem[_11127 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11281 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11281 + idx + 68] = mem[_11127 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11281 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11281 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9103 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9103] = 30
                                mem[_9103 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9253 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9253 + idx + 68] = mem[_9103 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9253 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9253 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10236 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10236] = 30
                                mem[_10236 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10416 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10416 + idx + 68] = mem[_10236 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10416 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10416 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12837 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12837] = 30
                                mem[_12837 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12974 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12974 + idx + 68] = mem[_12837 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12974 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12974 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8173 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8173] = 30
                                mem[_8173 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8248 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8248 + idx + 68] = mem[_8173 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8248 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8248 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8488 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8488] = 30
                                mem[_8488 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8548 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8548 + idx + 68] = mem[_8488 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8548 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8548 + -mem[64] + 100
                            _8218 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8218] = 26
                            mem[_8218 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8728 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8728] = 30
                                mem[_8728 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9180 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9180] = 30
                                mem[_9180 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9346 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9346 + idx + 68] = mem[_9180 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9346 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9346 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11282 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11282] = 30
                                mem[_11282 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11504 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11504 + idx + 68] = mem[_11282 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11504 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11504 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9254 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9254] = 30
                            mem[_9254 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9434 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9434 + idx + 68] = mem[_9254 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9434 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9434 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10418] = 30
                            mem[_10418 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10569 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10569 + idx + 68] = mem[_10418 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10569 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10569 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12976 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12976] = 30
                            mem[_12976 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13119 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13119 + idx + 68] = mem[_12976 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13119 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13119 + -mem[64] + 100
                    else:
                        if arg2 / 100 and 0 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 0 / arg2 / 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8079 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8079] = 26
                                mem[_8079 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8697 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8697] = 30
                                    mem[_8697 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9057 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9057] = 30
                                    mem[_9057 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9176 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9176 + idx + 68] = mem[_9057 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9176 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9176 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11125 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11125] = 30
                                    mem[_11125 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11277 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11277 + idx + 68] = mem[_11125 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11277 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11277 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9101 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9101] = 30
                                mem[_9101 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9251 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9251 + idx + 68] = mem[_9101 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9251 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9251 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10233 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10233] = 30
                                mem[_10233 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10413 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10413 + idx + 68] = mem[_10233 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10413 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10413 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12831 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12831] = 30
                                mem[_12831 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12971 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12971 + idx + 68] = mem[_12831 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12971 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12971 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8171 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8171] = 30
                                mem[_8171 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8247 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8247 + idx + 68] = mem[_8171 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8247 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8247 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8487 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8487] = 30
                                mem[_8487 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8547 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8547 + idx + 68] = mem[_8487 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8547 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8547 + -mem[64] + 100
                            _8217 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8217] = 26
                            mem[_8217 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8727 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8727] = 30
                                mem[_8727 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9177 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9177] = 30
                                mem[_9177 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9342 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9342 + idx + 68] = mem[_9177 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9342 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9342 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _11278 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11278] = 30
                                mem[_11278 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _11499 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11499 + idx + 68] = mem[_11278 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11499 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _11499 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9252 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9252] = 30
                            mem[_9252 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9432 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9432 + idx + 68] = mem[_9252 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9432 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9432 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10415 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10415] = 30
                            mem[_10415 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10566 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10566 + idx + 68] = mem[_10415 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10566 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10566 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _12973 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12973] = 30
                            mem[_12973 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _13115 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13115 + idx + 68] = mem[_12973 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13115 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13115 + -mem[64] + 100
                else:
                    mem[0] = arg1
                    mem[32] = 4
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if stor4[address(arg1)]:
                        if not arg2 / 100:
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8091 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8091] = 26
                                    mem[_8091 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8700 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8700] = 30
                                        mem[_8700 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9060 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9060] = 30
                                        mem[_9060 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9185 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9185 + idx + 68] = mem[_9060 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9185 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9185 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11131 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11131] = 30
                                        mem[_11131 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11289 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11289 + idx + 68] = mem[_11131 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11289 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11289 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9107 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9107] = 30
                                    mem[_9107 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9257 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9257 + idx + 68] = mem[_9107 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9257 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9257 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10242 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10242] = 30
                                    mem[_10242 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10422 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10422 + idx + 68] = mem[_10242 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10422 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10422 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12849 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12849] = 30
                                    mem[_12849 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12980 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12980 + idx + 68] = mem[_12849 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12980 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12980 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8177 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8177] = 30
                                    mem[_8177 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8250 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8250 + idx + 68] = mem[_8177 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8250 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8250 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8490 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8490] = 30
                                    mem[_8490 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8550 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8550 + idx + 68] = mem[_8490 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8550 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8550 + -mem[64] + 100
                                _8220 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8220] = 26
                                mem[_8220 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8730 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8730] = 30
                                    mem[_8730 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9186 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9186] = 30
                                    mem[_9186 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9354 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9354 + idx + 68] = mem[_9186 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9354 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9354 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11290 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11290] = 30
                                    mem[_11290 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11514 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11514 + idx + 68] = mem[_11290 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11514 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11514 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9258 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9258] = 30
                                mem[_9258 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9438 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9438 + idx + 68] = mem[_9258 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9438 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9438 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10424] = 30
                                mem[_10424 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10575 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10575 + idx + 68] = mem[_10424 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10575 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10575 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12982 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12982] = 30
                                mem[_12982 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13127 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13127 + idx + 68] = mem[_12982 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13127 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13127 + -mem[64] + 100
                        else:
                            if arg2 / 100 and 0 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if not arg2 / 100:
                                revert with 'NH{q', 18
                            if 0 / arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8087 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8087] = 26
                                    mem[_8087 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8699 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8699] = 30
                                        mem[_8699 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9059 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9059] = 30
                                        mem[_9059 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9182 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9182 + idx + 68] = mem[_9059 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9182 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9182 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11129 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11129] = 30
                                        mem[_11129 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11285 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11285 + idx + 68] = mem[_11129 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11285 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11285 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9105 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9105] = 30
                                    mem[_9105 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9255 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9255 + idx + 68] = mem[_9105 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9255 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9255 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10239 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10239] = 30
                                    mem[_10239 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10419 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10419 + idx + 68] = mem[_10239 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10419 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10419 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12843 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12843] = 30
                                    mem[_12843 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12977 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12977 + idx + 68] = mem[_12843 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12977 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12977 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8175 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8175] = 30
                                    mem[_8175 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8249 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8249 + idx + 68] = mem[_8175 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8249 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8249 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8489 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8489] = 30
                                    mem[_8489 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8549 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8549 + idx + 68] = mem[_8489 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8549 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8549 + -mem[64] + 100
                                _8219 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8219] = 26
                                mem[_8219 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8729 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8729] = 30
                                    mem[_8729 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9183] = 30
                                    mem[_9183 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9350 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9350 + idx + 68] = mem[_9183 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9350 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9350 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11286 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11286] = 30
                                    mem[_11286 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11509 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11509 + idx + 68] = mem[_11286 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11509 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11509 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9256 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9256] = 30
                                mem[_9256 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9436 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9436 + idx + 68] = mem[_9256 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9436 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9436 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10421 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10421] = 30
                                mem[_10421 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10572 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10572 + idx + 68] = mem[_10421 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10572 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10572 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12979 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12979] = 30
                                mem[_12979 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13123 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13123 + idx + 68] = mem[_12979 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13123 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13123 + -mem[64] + 100
                    else:
                        if not arg2 / 100:
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8099 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8099] = 26
                                    mem[_8099 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8702 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8702] = 30
                                        mem[_8702 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9062 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9062] = 30
                                        mem[_9062 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9191 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9191 + idx + 68] = mem[_9062 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9191 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9191 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11135 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11135] = 30
                                        mem[_11135 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11297 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11297 + idx + 68] = mem[_11135 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11297 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11297 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9111 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9111] = 30
                                    mem[_9111 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9261 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9261 + idx + 68] = mem[_9111 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9261 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9261 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10248 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10248] = 30
                                    mem[_10248 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10428 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10428 + idx + 68] = mem[_10248 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10428 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10428 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12861 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12861] = 30
                                    mem[_12861 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12986 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12986 + idx + 68] = mem[_12861 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12986 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12986 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8181 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8181] = 30
                                    mem[_8181 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8252 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8252 + idx + 68] = mem[_8181 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8252 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8252 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8492 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8492] = 30
                                    mem[_8492 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8552 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8552 + idx + 68] = mem[_8492 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8552 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8552 + -mem[64] + 100
                                _8222 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8222] = 26
                                mem[_8222 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8732 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8732] = 30
                                    mem[_8732 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9192 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9192] = 30
                                    mem[_9192 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9362 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9362 + idx + 68] = mem[_9192 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9362 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9362 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11298] = 30
                                    mem[_11298 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11524 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11524 + idx + 68] = mem[_11298 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11524 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11524 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9262 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9262] = 30
                                mem[_9262 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9442 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9442 + idx + 68] = mem[_9262 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9442 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9442 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10430 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10430] = 30
                                mem[_10430 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10581 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10581 + idx + 68] = mem[_10430 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10581 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10581 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12988 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12988] = 30
                                mem[_12988 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13135 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13135 + idx + 68] = mem[_12988 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13135 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13135 + -mem[64] + 100
                        else:
                            if arg2 / 100 and 0 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if not arg2 / 100:
                                revert with 'NH{q', 18
                            if 0 / arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8095 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8095] = 26
                                    mem[_8095 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8701 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8701] = 30
                                        mem[_8701 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9061 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9061] = 30
                                        mem[_9061 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9188 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9188 + idx + 68] = mem[_9061 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9188 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9188 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11133 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11133] = 30
                                        mem[_11133 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11293 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11293 + idx + 68] = mem[_11133 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11293 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11293 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9109 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9109] = 30
                                    mem[_9109 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9259 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9259 + idx + 68] = mem[_9109 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9259 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9259 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10245 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10245] = 30
                                    mem[_10245 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10425 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10425 + idx + 68] = mem[_10245 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10425 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10425 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12855 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12855] = 30
                                    mem[_12855 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12983 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12983 + idx + 68] = mem[_12855 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12983 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12983 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8179 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8179] = 30
                                    mem[_8179 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8251 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8251 + idx + 68] = mem[_8179 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8251 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8251 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8491 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8491] = 30
                                    mem[_8491 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8551 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8551 + idx + 68] = mem[_8491 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8551 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8551 + -mem[64] + 100
                                _8221 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8221] = 26
                                mem[_8221 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8731 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8731] = 30
                                    mem[_8731 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9189 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9189] = 30
                                    mem[_9189 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9358 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9358 + idx + 68] = mem[_9189 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9358 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9358 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11294 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11294] = 30
                                    mem[_11294 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11519 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11519 + idx + 68] = mem[_11294 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11519 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11519 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9260 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9260] = 30
                                mem[_9260 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9440 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9440 + idx + 68] = mem[_9260 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9440 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9440 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10427 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10427] = 30
                                mem[_10427 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10578 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10578 + idx + 68] = mem[_10427 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10578 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10578 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12985 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12985] = 30
                                mem[_12985 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13131 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13131 + idx + 68] = mem[_12985 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13131 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13131 + -mem[64] + 100
                if t < stor6 / 100000000 * 10^18:
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                            revert with 'NH{q', 17
                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                else:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not s:
                        revert with 'NH{q', 18
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and t / s > -1 / arg2:
                            revert with 'NH{q', 17
                        if not arg2:
                            revert with 'NH{q', 18
                        if arg2 * t / s / arg2 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg2 * t / s > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * t / s:
                            revert with 'NH{q', 17
                        stor1[address(msg.sender)] += -1 * arg2 * t / s
                        if stor1[address(arg1)] > (-1 * arg2 * t / s) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(arg1)] + (arg2 * t / s) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += arg2 * t / s
            else:
                mem[0] = arg1
                mem[32] = 4
                if stor4[address(arg1)]:
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if not arg2 / 100:
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8131 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8131] = 26
                                mem[_8131 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8710 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8710] = 30
                                    mem[_8710 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9070 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9070] = 30
                                    mem[_9070 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9215 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9215 + idx + 68] = mem[_9070 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9215 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9215 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor2[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(arg1)] += arg2
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _12273 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12273] = 30
                                    mem[_12273 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12458 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12458 + idx + 68] = mem[_12273 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12458 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12458 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9127 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9127] = 30
                                mem[_9127 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9277 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9277 + idx + 68] = mem[_9127 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9277 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9277 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10272 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10272] = 30
                                mem[_10272 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10452 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10452 + idx + 68] = mem[_10272 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10452 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10452 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor2[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += arg2
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _13763 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13763] = 30
                                mem[_13763 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13912 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13912 + idx + 68] = mem[_13763 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13912 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13912 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8197 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8197] = 30
                                mem[_8197 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8260 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8260 + idx + 68] = mem[_8197 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8260 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8260 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8500 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8500] = 30
                                mem[_8500 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8560 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8560 + idx + 68] = mem[_8500 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8560 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8560 + -mem[64] + 100
                            _8230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8230] = 26
                            mem[_8230 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8740 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8740] = 30
                                mem[_8740 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9216 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9216] = 30
                                mem[_9216 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9394 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9394 + idx + 68] = mem[_9216 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9394 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9394 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += arg2
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _12460 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12460] = 30
                                mem[_12460 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12734 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12734 + idx + 68] = mem[_12460 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12734 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12734 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9278 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9278] = 30
                            mem[_9278 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9458 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9458 + idx + 68] = mem[_9278 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9458 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9458 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10454 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10454] = 30
                            mem[_10454 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10605 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10605 + idx + 68] = mem[_10454 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10605 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10605 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _13914 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13914] = 30
                            mem[_13914 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _14057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14057 + idx + 68] = mem[_13914 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14057 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _14057 + -mem[64] + 100
                    else:
                        if arg2 / 100 and 0 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 0 / arg2 / 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[64] = 224
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 'NH{q', 17
                        idx = 0
                        s = 100000000 * 10^18
                        t = stor6
                        while idx < stor5.length:
                            mem[0] = stor5[idx]
                            mem[32] = 1
                            if stor1[stor5[idx]] > t:
                                _8127 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8127] = 26
                                mem[_8127 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8709 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8709] = 30
                                    mem[_8709 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9069 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9069] = 30
                                    mem[_9069 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9212 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9212 + idx + 68] = mem[_9069 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9212 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9212 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor2[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(arg1)] += arg2
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _12270 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12270] = 30
                                    mem[_12270 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12454 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12454 + idx + 68] = mem[_12270 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12454 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12454 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9125 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9125] = 30
                                mem[_9125 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9275 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9275 + idx + 68] = mem[_9125 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9275 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9275 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10269 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10269] = 30
                                mem[_10269 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10449 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10449 + idx + 68] = mem[_10269 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10449 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10449 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor2[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += arg2
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _13757 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13757] = 30
                                mem[_13757 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13909 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13909 + idx + 68] = mem[_13757 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13909 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13909 + -mem[64] + 100
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = stor5[idx]
                            mem[32] = 2
                            if stor2[stor5[idx]] <= s:
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                _8195 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8195] = 30
                                mem[_8195 + 32] = 'SafeMath: subtraction overflow'
                                if stor1[stor5[idx]] > t:
                                    _8259 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8259 + idx + 68] = mem[_8195 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8259 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8259 + -mem[64] + 100
                                if t < stor1[stor5[idx]]:
                                    revert with 'NH{q', 17
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                _8499 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8499] = 30
                                mem[_8499 + 32] = 'SafeMath: subtraction overflow'
                                if stor2[stor5[idx]] <= s:
                                    if s < stor2[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s - stor2[stor5[idx]]
                                    t = t - stor1[stor5[idx]]
                                    continue 
                                _8559 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_8559 + idx + 68] = mem[_8499 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8559 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8559 + -mem[64] + 100
                            _8229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8229] = 26
                            mem[_8229 + 32] = 'SafeMath: division by zero'
                            if not arg2:
                                _8739 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8739] = 30
                                mem[_8739 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _9213 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9213] = 30
                                mem[_9213 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _9390 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9390 + idx + 68] = mem[_9213 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9390 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9390 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += arg2
                                if stor1[address(arg1)] > -1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                _12456 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12456] = 30
                                mem[_12456 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _12732 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12732 + idx + 68] = mem[_12456 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12732 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _12732 + -mem[64] + 100
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9276] = 30
                            mem[_9276 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                _9456 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_9456 + idx + 68] = mem[_9276 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9456 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9456 + -mem[64] + 100
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _10451 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10451] = 30
                            mem[_10451 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                _10602 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_10602 + idx + 68] = mem[_10451 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10602 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10602 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = arg1
                            mem[32] = 1
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                            _13911 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13911] = 30
                            mem[_13911 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor6:
                                if stor6 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -1:
                                    revert with 'NH{q', 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            _14055 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14055 + idx + 68] = mem[_13911 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14055 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _14055 + -mem[64] + 100
                    if t < stor6 / 100000000 * 10^18:
                        if not arg2:
                            if 0 > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                    else:
                        if s <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not s:
                            revert with 'NH{q', 18
                        if not arg2:
                            if 0 > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 and t / s > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * t / s / arg2 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 * t / s < 0:
                                revert with 'NH{q', 17
                            if arg2 * t / s > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < arg2 * t / s:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * t / s
                            if stor2[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if stor2[address(arg1)] + arg2 < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] += arg2
                            if stor1[address(arg1)] > (-1 * arg2 * t / s) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * t / s) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg1)] += arg2 * t / s
                else:
                    mem[0] = msg.sender
                    mem[32] = 4
                    if stor4[address(msg.sender)]:
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        if not arg2 / 100:
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8107 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8107] = 26
                                    mem[_8107 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8704 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8704] = 30
                                        mem[_8704 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9064 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9064] = 30
                                        mem[_9064 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9197 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9197 + idx + 68] = mem[_9064 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9197 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9197 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11139 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11139] = 30
                                        mem[_11139 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11305 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11305 + idx + 68] = mem[_11139 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11305 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11305 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9115 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9115] = 30
                                    mem[_9115 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9265 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9265 + idx + 68] = mem[_9115 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9265 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9265 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10254 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10254] = 30
                                    mem[_10254 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10434 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10434 + idx + 68] = mem[_10254 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10434 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10434 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12873 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12873] = 30
                                    mem[_12873 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12992 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12992 + idx + 68] = mem[_12873 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12992 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12992 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8185 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8185] = 30
                                    mem[_8185 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8254 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8254 + idx + 68] = mem[_8185 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8254 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8254 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8494 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8494] = 30
                                    mem[_8494 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8554 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8554 + idx + 68] = mem[_8494 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8554 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8554 + -mem[64] + 100
                                _8224 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8224] = 26
                                mem[_8224 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8734 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8734] = 30
                                    mem[_8734 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9198 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9198] = 30
                                    mem[_9198 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9370 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9370 + idx + 68] = mem[_9198 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9370 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9370 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11306 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11306] = 30
                                    mem[_11306 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11534 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11534 + idx + 68] = mem[_11306 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11534 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11534 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9266 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9266] = 30
                                mem[_9266 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9446 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9446 + idx + 68] = mem[_9266 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9446 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9446 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10436 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10436] = 30
                                mem[_10436 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10587 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10587 + idx + 68] = mem[_10436 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10587 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10587 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12994 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12994] = 30
                                mem[_12994 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13143 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13143 + idx + 68] = mem[_12994 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13143 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13143 + -mem[64] + 100
                        else:
                            if arg2 / 100 and 0 > -1 / arg2 / 100:
                                revert with 'NH{q', 17
                            if not arg2 / 100:
                                revert with 'NH{q', 18
                            if 0 / arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[64] = 224
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            idx = 0
                            s = 100000000 * 10^18
                            t = stor6
                            while idx < stor5.length:
                                mem[0] = stor5[idx]
                                mem[32] = 1
                                if stor1[stor5[idx]] > t:
                                    _8103 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8103] = 26
                                    mem[_8103 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8703 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8703] = 30
                                        mem[_8703 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9063 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9063] = 30
                                        mem[_9063 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9194 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9194 + idx + 68] = mem[_9063 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9194 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9194 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11137 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11137] = 30
                                        mem[_11137 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11301 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11301 + idx + 68] = mem[_11137 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11301 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11301 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9113 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9113] = 30
                                    mem[_9113 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9263 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9263 + idx + 68] = mem[_9113 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9263 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9263 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10251 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10251] = 30
                                    mem[_10251 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10431 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10431 + idx + 68] = mem[_10251 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10431 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10431 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12867 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12867] = 30
                                    mem[_12867 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _12989 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12989 + idx + 68] = mem[_12867 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12989 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _12989 + -mem[64] + 100
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = stor5[idx]
                                mem[32] = 2
                                if stor2[stor5[idx]] <= s:
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    _8183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8183] = 30
                                    mem[_8183 + 32] = 'SafeMath: subtraction overflow'
                                    if stor1[stor5[idx]] > t:
                                        _8253 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8253 + idx + 68] = mem[_8183 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8253 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8253 + -mem[64] + 100
                                    if t < stor1[stor5[idx]]:
                                        revert with 'NH{q', 17
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    _8493 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8493] = 30
                                    mem[_8493 + 32] = 'SafeMath: subtraction overflow'
                                    if stor2[stor5[idx]] <= s:
                                        if s < stor2[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s - stor2[stor5[idx]]
                                        t = t - stor1[stor5[idx]]
                                        continue 
                                    _8553 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_8553 + idx + 68] = mem[_8493 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8553 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8553 + -mem[64] + 100
                                _8223 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8223] = 26
                                mem[_8223 + 32] = 'SafeMath: division by zero'
                                if not arg2:
                                    _8733 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8733] = 30
                                    mem[_8733 + 32] = 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _9195 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9195] = 30
                                    mem[_9195 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor1[address(msg.sender)]:
                                        _9366 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9366 + idx + 68] = mem[_9195 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9366 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9366 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] > -1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    _11302 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11302] = 30
                                    mem[_11302 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _11529 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11529 + idx + 68] = mem[_11302 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11529 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _11529 + -mem[64] + 100
                                if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _9264 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9264] = 30
                                mem[_9264 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg2 * stor6 / 100000000 * 10^18:
                                    _9444 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_9444 + idx + 68] = mem[_9264 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9444 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9444 + -mem[64] + 100
                                if arg2 * stor6 / 100000000 * 10^18 < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _10433 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10433] = 30
                                mem[_10433 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                    _10584 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_10584 + idx + 68] = mem[_10433 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_10584 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _10584 + -mem[64] + 100
                                if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                    revert with 'NH{q', 17
                                stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                    revert with 'NH{q', 17
                                if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = arg1
                                mem[32] = 1
                                stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                _12991 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12991] = 30
                                mem[_12991 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor6:
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                _13139 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13139 + idx + 68] = mem[_12991 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13139 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13139 + -mem[64] + 100
                    else:
                        mem[0] = arg1
                        mem[32] = 4
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        if stor4[address(arg1)]:
                            if not arg2 / 100:
                                mem[64] = 224
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = 100000000 * 10^18
                                t = stor6
                                while idx < stor5.length:
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    if stor1[stor5[idx]] > t:
                                        _8115 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8115] = 26
                                        mem[_8115 + 32] = 'SafeMath: division by zero'
                                        if not arg2:
                                            _8706 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8706] = 30
                                            mem[_8706 + 32] = 'SafeMath: subtraction overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 1
                                            _9066 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9066] = 30
                                            mem[_9066 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor1[address(msg.sender)]:
                                                _9203 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_9203 + idx + 68] = mem[_9066 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_9203 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _9203 + -mem[64] + 100
                                            if stor1[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] > -1:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = arg1
                                            mem[32] = 1
                                            _11143 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11143] = 30
                                            mem[_11143 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 <= stor6:
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            _11313 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_11313 + idx + 68] = mem[_11143 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_11313 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _11313 + -mem[64] + 100
                                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _9119 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9119] = 30
                                        mem[_9119 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                                            _9269 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9269 + idx + 68] = mem[_9119 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9269 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9269 + -mem[64] + 100
                                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                                            revert with 'NH{q', 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _10260 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10260] = 30
                                        mem[_10260 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                            _10440 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_10440 + idx + 68] = mem[_10260 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_10440 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _10440 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                            revert with 'NH{q', 17
                                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                        _12885 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12885] = 30
                                        mem[_12885 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _12998 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_12998 + idx + 68] = mem[_12885 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_12998 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _12998 + -mem[64] + 100
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    if stor2[stor5[idx]] <= s:
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 1
                                        _8189 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8189] = 30
                                        mem[_8189 + 32] = 'SafeMath: subtraction overflow'
                                        if stor1[stor5[idx]] > t:
                                            _8256 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_8256 + idx + 68] = mem[_8189 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_8256 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _8256 + -mem[64] + 100
                                        if t < stor1[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 2
                                        _8496 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8496] = 30
                                        mem[_8496 + 32] = 'SafeMath: subtraction overflow'
                                        if stor2[stor5[idx]] <= s:
                                            if s < stor2[stor5[idx]]:
                                                revert with 'NH{q', 17
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s - stor2[stor5[idx]]
                                            t = t - stor1[stor5[idx]]
                                            continue 
                                        _8556 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8556 + idx + 68] = mem[_8496 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8556 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8556 + -mem[64] + 100
                                    _8226 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8226] = 26
                                    mem[_8226 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8736 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8736] = 30
                                        mem[_8736 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9204 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9204] = 30
                                        mem[_9204 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9378 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9378 + idx + 68] = mem[_9204 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9378 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9378 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11314 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11314] = 30
                                        mem[_11314 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11544 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11544 + idx + 68] = mem[_11314 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11544 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11544 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9270 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9270] = 30
                                    mem[_9270 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9450 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9450 + idx + 68] = mem[_9270 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9450 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9450 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10442 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10442] = 30
                                    mem[_10442 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10593 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10593 + idx + 68] = mem[_10442 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10593 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10593 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _13000 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_13000] = 30
                                    mem[_13000 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _13151 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13151 + idx + 68] = mem[_13000 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13151 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _13151 + -mem[64] + 100
                            else:
                                if arg2 / 100 and 0 > -1 / arg2 / 100:
                                    revert with 'NH{q', 17
                                if not arg2 / 100:
                                    revert with 'NH{q', 18
                                if 0 / arg2 / 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[64] = 224
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = 100000000 * 10^18
                                t = stor6
                                while idx < stor5.length:
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    if stor1[stor5[idx]] > t:
                                        _8111 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8111] = 26
                                        mem[_8111 + 32] = 'SafeMath: division by zero'
                                        if not arg2:
                                            _8705 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8705] = 30
                                            mem[_8705 + 32] = 'SafeMath: subtraction overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 1
                                            _9065 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9065] = 30
                                            mem[_9065 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor1[address(msg.sender)]:
                                                _9200 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_9200 + idx + 68] = mem[_9065 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_9200 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _9200 + -mem[64] + 100
                                            if stor1[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] > -1:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = arg1
                                            mem[32] = 1
                                            _11141 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11141] = 30
                                            mem[_11141 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 <= stor6:
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            _11309 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_11309 + idx + 68] = mem[_11141 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_11309 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _11309 + -mem[64] + 100
                                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _9117 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9117] = 30
                                        mem[_9117 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                                            _9267 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9267 + idx + 68] = mem[_9117 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9267 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9267 + -mem[64] + 100
                                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                                            revert with 'NH{q', 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _10257 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10257] = 30
                                        mem[_10257 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                            _10437 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_10437 + idx + 68] = mem[_10257 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_10437 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _10437 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                            revert with 'NH{q', 17
                                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                        _12879 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12879] = 30
                                        mem[_12879 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _12995 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_12995 + idx + 68] = mem[_12879 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_12995 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _12995 + -mem[64] + 100
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    if stor2[stor5[idx]] <= s:
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 1
                                        _8187 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8187] = 30
                                        mem[_8187 + 32] = 'SafeMath: subtraction overflow'
                                        if stor1[stor5[idx]] > t:
                                            _8255 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_8255 + idx + 68] = mem[_8187 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_8255 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _8255 + -mem[64] + 100
                                        if t < stor1[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 2
                                        _8495 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8495] = 30
                                        mem[_8495 + 32] = 'SafeMath: subtraction overflow'
                                        if stor2[stor5[idx]] <= s:
                                            if s < stor2[stor5[idx]]:
                                                revert with 'NH{q', 17
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s - stor2[stor5[idx]]
                                            t = t - stor1[stor5[idx]]
                                            continue 
                                        _8555 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8555 + idx + 68] = mem[_8495 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8555 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8555 + -mem[64] + 100
                                    _8225 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8225] = 26
                                    mem[_8225 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8735 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8735] = 30
                                        mem[_8735 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9201 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9201] = 30
                                        mem[_9201 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9374 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9374 + idx + 68] = mem[_9201 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9374 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9374 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11310 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11310] = 30
                                        mem[_11310 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11539 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11539 + idx + 68] = mem[_11310 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11539 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11539 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9268 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9268] = 30
                                    mem[_9268 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9448 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9448 + idx + 68] = mem[_9268 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9448 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9448 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10439 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10439] = 30
                                    mem[_10439 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10590 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10590 + idx + 68] = mem[_10439 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10590 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10590 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _12997 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12997] = 30
                                    mem[_12997 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _13147 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13147 + idx + 68] = mem[_12997 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13147 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _13147 + -mem[64] + 100
                        else:
                            if not arg2 / 100:
                                mem[64] = 224
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = 100000000 * 10^18
                                t = stor6
                                while idx < stor5.length:
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    if stor1[stor5[idx]] > t:
                                        _8123 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8123] = 26
                                        mem[_8123 + 32] = 'SafeMath: division by zero'
                                        if not arg2:
                                            _8708 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8708] = 30
                                            mem[_8708 + 32] = 'SafeMath: subtraction overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 1
                                            _9068 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9068] = 30
                                            mem[_9068 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor1[address(msg.sender)]:
                                                _9209 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_9209 + idx + 68] = mem[_9068 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_9209 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _9209 + -mem[64] + 100
                                            if stor1[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] > -1:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = arg1
                                            mem[32] = 1
                                            _11147 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11147] = 30
                                            mem[_11147 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 <= stor6:
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            _11321 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_11321 + idx + 68] = mem[_11147 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_11321 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _11321 + -mem[64] + 100
                                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _9123 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9123] = 30
                                        mem[_9123 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                                            _9273 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9273 + idx + 68] = mem[_9123 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9273 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9273 + -mem[64] + 100
                                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                                            revert with 'NH{q', 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _10266 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10266] = 30
                                        mem[_10266 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                            _10446 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_10446 + idx + 68] = mem[_10266 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_10446 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _10446 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                            revert with 'NH{q', 17
                                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                        _12897 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12897] = 30
                                        mem[_12897 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _13004 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_13004 + idx + 68] = mem[_12897 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13004 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _13004 + -mem[64] + 100
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    if stor2[stor5[idx]] <= s:
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 1
                                        _8193 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8193] = 30
                                        mem[_8193 + 32] = 'SafeMath: subtraction overflow'
                                        if stor1[stor5[idx]] > t:
                                            _8258 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_8258 + idx + 68] = mem[_8193 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_8258 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _8258 + -mem[64] + 100
                                        if t < stor1[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 2
                                        _8498 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8498] = 30
                                        mem[_8498 + 32] = 'SafeMath: subtraction overflow'
                                        if stor2[stor5[idx]] <= s:
                                            if s < stor2[stor5[idx]]:
                                                revert with 'NH{q', 17
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s - stor2[stor5[idx]]
                                            t = t - stor1[stor5[idx]]
                                            continue 
                                        _8558 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8558 + idx + 68] = mem[_8498 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8558 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8558 + -mem[64] + 100
                                    _8228 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8228] = 26
                                    mem[_8228 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8738 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8738] = 30
                                        mem[_8738 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9210 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9210] = 30
                                        mem[_9210 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9386 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9386 + idx + 68] = mem[_9210 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9386 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9386 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11322 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11322] = 30
                                        mem[_11322 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11554 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11554 + idx + 68] = mem[_11322 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11554 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11554 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9274 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9274] = 30
                                    mem[_9274 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9454 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9454 + idx + 68] = mem[_9274 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9454 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9454 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10448 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10448] = 30
                                    mem[_10448 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10599 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10599 + idx + 68] = mem[_10448 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10599 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10599 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _13006 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_13006] = 30
                                    mem[_13006 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _13159 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13159 + idx + 68] = mem[_13006 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13159 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _13159 + -mem[64] + 100
                            else:
                                if arg2 / 100 and 0 > -1 / arg2 / 100:
                                    revert with 'NH{q', 17
                                if not arg2 / 100:
                                    revert with 'NH{q', 18
                                if 0 / arg2 / 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[64] = 224
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = 100000000 * 10^18
                                t = stor6
                                while idx < stor5.length:
                                    mem[0] = stor5[idx]
                                    mem[32] = 1
                                    if stor1[stor5[idx]] > t:
                                        _8119 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8119] = 26
                                        mem[_8119 + 32] = 'SafeMath: division by zero'
                                        if not arg2:
                                            _8707 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8707] = 30
                                            mem[_8707 + 32] = 'SafeMath: subtraction overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 1
                                            _9067 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_9067] = 30
                                            mem[_9067 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor1[address(msg.sender)]:
                                                _9206 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_9206 + idx + 68] = mem[_9067 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_9206 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _9206 + -mem[64] + 100
                                            if stor1[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] > -1:
                                                revert with 'NH{q', 17
                                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = arg1
                                            mem[32] = 1
                                            _11145 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11145] = 30
                                            mem[_11145 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 <= stor6:
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            _11317 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_11317 + idx + 68] = mem[_11145 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_11317 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _11317 + -mem[64] + 100
                                        if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _9121 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9121] = 30
                                        mem[_9121 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2 * stor6 / 100000000 * 10^18:
                                            _9271 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9271 + idx + 68] = mem[_9121 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9271 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9271 + -mem[64] + 100
                                        if arg2 * stor6 / 100000000 * 10^18 < 0:
                                            revert with 'NH{q', 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _10263 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_10263] = 30
                                        mem[_10263 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                            _10443 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_10443 + idx + 68] = mem[_10263 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_10443 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _10443 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                            revert with 'NH{q', 17
                                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                        if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                        _12891 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12891] = 30
                                        mem[_12891 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _13001 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_13001 + idx + 68] = mem[_12891 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13001 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _13001 + -mem[64] + 100
                                    if idx >= stor5.length:
                                        revert with 'NH{q', 50
                                    mem[0] = stor5[idx]
                                    mem[32] = 2
                                    if stor2[stor5[idx]] <= s:
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 1
                                        _8191 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8191] = 30
                                        mem[_8191 + 32] = 'SafeMath: subtraction overflow'
                                        if stor1[stor5[idx]] > t:
                                            _8257 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_8257 + idx + 68] = mem[_8191 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_8257 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _8257 + -mem[64] + 100
                                        if t < stor1[stor5[idx]]:
                                            revert with 'NH{q', 17
                                        if idx >= stor5.length:
                                            revert with 'NH{q', 50
                                        mem[0] = stor5[idx]
                                        mem[32] = 2
                                        _8497 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8497] = 30
                                        mem[_8497 + 32] = 'SafeMath: subtraction overflow'
                                        if stor2[stor5[idx]] <= s:
                                            if s < stor2[stor5[idx]]:
                                                revert with 'NH{q', 17
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s - stor2[stor5[idx]]
                                            t = t - stor1[stor5[idx]]
                                            continue 
                                        _8557 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_8557 + idx + 68] = mem[_8497 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8557 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8557 + -mem[64] + 100
                                    _8227 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8227] = 26
                                    mem[_8227 + 32] = 'SafeMath: division by zero'
                                    if not arg2:
                                        _8737 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8737] = 30
                                        mem[_8737 + 32] = 'SafeMath: subtraction overflow'
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        _9207 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_9207] = 30
                                        mem[_9207 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor1[address(msg.sender)]:
                                            _9382 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_9382 + idx + 68] = mem[_9207 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_9382 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _9382 + -mem[64] + 100
                                        if stor1[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] > -1:
                                            revert with 'NH{q', 17
                                        if stor1[address(arg1)] < stor1[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = arg1
                                        mem[32] = 1
                                        _11318 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11318] = 30
                                        mem[_11318 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 <= stor6:
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        _11549 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11549 + idx + 68] = mem[_11318 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11549 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _11549 + -mem[64] + 100
                                    if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _9272 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9272] = 30
                                    mem[_9272 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 * stor6 / 100000000 * 10^18:
                                        _9452 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_9452 + idx + 68] = mem[_9272 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_9452 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _9452 + -mem[64] + 100
                                    if arg2 * stor6 / 100000000 * 10^18 < 0:
                                        revert with 'NH{q', 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    _10445 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10445] = 30
                                    mem[_10445 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                        _10596 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_10596 + idx + 68] = mem[_10445 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_10596 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _10596 + -mem[64] + 100
                                    if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                        revert with 'NH{q', 17
                                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                                    if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                        revert with 'NH{q', 17
                                    if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = arg1
                                    mem[32] = 1
                                    stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                                    _13003 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_13003] = 30
                                    mem[_13003 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor6:
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    _13155 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13155 + idx + 68] = mem[_13003 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13155 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _13155 + -mem[64] + 100
                    if t < stor6 / 100000000 * 10^18:
                        if not arg2:
                            if 0 > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 and stor6 / 100000000 * 10^18 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * stor6 / 100000000 * 10^18 / arg2 != stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2 * stor6 / 100000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 * stor6 / 100000000 * 10^18 < 0:
                                revert with 'NH{q', 17
                            if arg2 * stor6 / 100000000 * 10^18 > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < arg2 * stor6 / 100000000 * 10^18:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * stor6 / 100000000 * 10^18
                            if stor1[address(arg1)] > (-1 * arg2 * stor6 / 100000000 * 10^18) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * stor6 / 100000000 * 10^18) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg1)] += arg2 * stor6 / 100000000 * 10^18
                    else:
                        if s <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not s:
                            revert with 'NH{q', 18
                        if not arg2:
                            if 0 > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] > -1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 and t / s > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * t / s / arg2 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 * t / s < 0:
                                revert with 'NH{q', 17
                            if arg2 * t / s > stor1[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(msg.sender)] < arg2 * t / s:
                                revert with 'NH{q', 17
                            stor1[address(msg.sender)] += -1 * arg2 * t / s
                            if stor1[address(arg1)] > (-1 * arg2 * t / s) - 1:
                                revert with 'NH{q', 17
                            if stor1[address(arg1)] + (arg2 * t / s) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg1)] += arg2 * t / s
    if 0 > stor6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor6 < 0:
        revert with 'NH{q', 17
    if totalFees > -1:
        revert with 'NH{q', 17
    if totalFees < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}

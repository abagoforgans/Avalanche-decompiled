contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
address _owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of address stor9;
array of struct stor10;
array of struct stor11;
uint8 decimals;
address sub_be1c6373Address;
uint256 totalSupply;
uint256 stor19;
uint256 sub_148c39a8;
uint256 sub_81d0c63b;
uint256 sub_f8ceab82;
uint256 sub_997e70d9;
uint256 stor27;
uint256 stor28;

function sub_0d6acccd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function sub_148c39a8(?) payable {
    return sub_148c39a8
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_35f3956d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function sub_4413274d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_5fccf1a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_62b477cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)])
}

function sub_81d0c63b(?) payable {
    return sub_81d0c63b
}

function sub_997e70d9(?) payable {
    return sub_997e70d9
}

function _owner() payable {
    return _owner
}

function sub_bd5af3a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function sub_be1c6373(?) payable {
    return sub_be1c6373Address
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function sub_d4c9dac7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f877aae1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function sub_f8ceab82(?) payable {
    return sub_f8ceab82
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function sub_f0ed9076(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be1c6373Address = address(arg1)
}

function sub_8eaf116e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
        emit 0xb7118354: address(arg1)
}

function sub_d33a6721(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        emit 0x3e0c1f76: address(arg1)
}

function sub_da4978fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7[address(arg1)]:
        stor7[address(arg1)] = 1
        emit 0x670ac935: address(arg1)
}

function sub_e4e83488(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        stor5[address(arg1)] = 1
        emit 0x779544c2: address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function updateFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 100
    require arg2 < 100
    if arg1 and 100 > -1 / arg1:
        revert with 'NH{q', 17
    sub_f8ceab82 = 100 * arg1
    if arg2 and 100 > -1 / arg2:
        revert with 'NH{q', 17
    sub_997e70d9 = 100 * arg2
    stor27 = sub_f8ceab82
    stor28 = sub_997e70d9
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Inspirest: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Inspirest: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    41,
                    0x65496e737069726573743a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[169 len 23] >> 72,
                    0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'Inspirest: approve from the zero address'
    if not arg1:
        revert with 0, 'Inspirest: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Inspirest: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Inspirest: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor8[address(arg1)]:
        revert with 0, 'Account is already included'
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor9.length < 1:
            revert with 'NH{q', 17
        if stor9.length - 1 >= stor9.length:
            revert with 'NH{q', 50
        if idx >= stor9.length:
            revert with 'NH{q', 50
        stor9[idx] = stor9[stor9.length]
        stor2[address(arg1)] = 0
        stor8[address(arg1)] = 0
        if not stor9.length:
            revert with 'NH{q', 49
        stor9[stor9.length] = 0
        stor9.length--
}

function name() payable {
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function Symbol() payable {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor19:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor19
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 1
        if stor1[stor9[idx]] > t:
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
            if stor19 / totalSupply > 0:
                if not stor19 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor19 / totalSupply)
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
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 2
        if stor2[stor9[idx]] > s:
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
            if stor19 / totalSupply > 0:
                if not stor19 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor19 / totalSupply)
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
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 1
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 30
        mem[_95 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor9[idx]] > t:
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
        if t < stor1[stor9[idx]]:
            revert with 'NH{q', 17
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 2
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 30
        mem[_116 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor9[idx]] <= s:
            if s < stor2[stor9[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor9[idx]]
            t = t - stor1[stor9[idx]]
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
    if t >= stor19 / totalSupply:
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
    if stor19 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor19 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor19 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor19:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor19
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 1
        if stor1[stor9[idx]] > t:
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
            if stor19 / totalSupply > 0:
                if not stor19 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor19 / totalSupply)
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
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 2
        if stor2[stor9[idx]] > s:
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
            if stor19 / totalSupply > 0:
                if not stor19 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor19 / totalSupply)
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
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 1
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 30
        mem[_100 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor9[idx]] > t:
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
        if t < stor1[stor9[idx]]:
            revert with 'NH{q', 17
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 2
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor9[idx]] <= s:
            if s < stor2[stor9[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor9[idx]]
            t = t - stor1[stor9[idx]]
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
    if t >= stor19 / totalSupply:
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
    if stor19 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor19 / totalSupply:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor19 / totalSupply)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor19:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor19
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 1
            if stor1[stor9[idx]] > t:
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
                if stor19 / totalSupply > 0:
                    if not stor19 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor19 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = stor9[idx]
            mem[32] = 2
            if stor2[stor9[idx]] > s:
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
                if stor19 / totalSupply > 0:
                    if not stor19 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor19 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = stor9[idx]
            mem[32] = 1
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor9[idx]] > t:
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
            if t < stor1[stor9[idx]]:
                revert with 'NH{q', 17
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = stor9[idx]
            mem[32] = 2
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor9[idx]] <= s:
                if s < stor2[stor9[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor2[stor9[idx]]
                t = t - stor1[stor9[idx]]
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
        if t >= stor19 / totalSupply:
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
            if stor19 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor19 / totalSupply:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / stor19 / totalSupply
    stor8[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}



}

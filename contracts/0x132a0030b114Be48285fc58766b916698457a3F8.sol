contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Avatar finance', 0

const decimals = 18

const symbol = 'AVTR', 0


address owner;
address stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
array of address stor7;
uint256 totalSupply;
uint256 stor9;
uint256 totalRocoFee;
uint256 rocoFeeValue;

function totalSupply() payable {
    return totalSupply
}

function getRocoFeeValue() payable {
    return rocoFeeValue
}

function owner() payable {
    return owner
}

function totalRocoFee() payable {
    return totalRocoFee
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
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

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    stor2 = arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock.'
    if block.timestamp <= stor2:
        revert with 0, 'Contract is locked.'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function setRocoFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roco Fee won't be greater than 1%'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rocoFeeValue = arg1
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roco Err: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roco Err: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 40, 0x65524f434f204572723a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[168 len 24] >> 64, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'Roco Err: approve from the zero address'
    if not arg1:
        revert with 0, 'Roco Err: approve to the zero address'
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
        revert with 0, 'SM: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roco Err: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roco Err: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor7.length < 1:
            revert with 'NH{q', 17
        if stor7.length - 1 >= stor7.length:
            revert with 'NH{q', 50
        if idx >= stor7.length:
            revert with 'NH{q', 50
        stor7[idx] = stor7[stor7.length]
        stor4[address(arg1)] = 0
        stor6[address(arg1)] = 0
        if not stor7.length:
            revert with 'NH{q', 49
        stor7[stor7.length] = 0
        stor7.length--
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections!'
    idx = 0
    s = totalSupply
    t = stor9
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 3
        if stor3[stor7[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 20
            mem[_92 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_96 + idx + 68] = mem[_92 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 88] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 20
            mem[_112 + 32] = 'SM: division by zero'
            if stor9 / totalSupply > 0:
                if not stor9 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor9 / totalSupply)
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_119 + idx + 68] = mem[_112 + idx + 32]
                idx = idx + 32
                continue 
            mem[_119 + 88] = 0
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 4
        if stor4[stor7[idx]] > s:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 20
            mem[_97 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _99 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_99 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_99 + 88] = 0
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 20
            mem[_120 + 32] = 'SM: division by zero'
            if stor9 / totalSupply > 0:
                if not stor9 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor9 / totalSupply)
            _123 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_123 + idx + 68] = mem[_120 + idx + 32]
                idx = idx + 32
                continue 
            mem[_123 + 88] = 0
            revert with memory
              from mem[64]
               len _123 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 3
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 24
        mem[_95 + 32] = 'SM: subtraction overflow'
        if stor3[stor7[idx]] > t:
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_98 + idx + 68] = mem[_95 + idx + 32]
                idx = idx + 32
                continue 
            mem[_98 + 92] = 0
            revert with memory
              from mem[64]
               len _98 + -mem[64] + 100
        if t < stor3[stor7[idx]]:
            revert with 'NH{q', 17
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 4
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 24
        mem[_116 + 32] = 'SM: subtraction overflow'
        if stor4[stor7[idx]] <= s:
            if s < stor4[stor7[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor4[stor7[idx]]
            t = t - stor3[stor7[idx]]
            continue 
        _121 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 24
        idx = 0
        while idx < 24:
            mem[_121 + idx + 68] = mem[_116 + idx + 32]
            idx = idx + 32
            continue 
        mem[_121 + 92] = 0
        revert with memory
          from mem[64]
           len _121 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SM: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor9 / totalSupply:
        if s <= 0:
            revert with 0, 'SM: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SM: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (arg1 / t / s)
    if totalSupply <= 0:
        revert with 0, 'SM: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor9 / totalSupply <= 0:
        revert with 0, 'SM: division by zero', 0
    if not stor9 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor9 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections!'
    idx = 0
    s = totalSupply
    t = stor9
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 3
        if stor3[stor7[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 20
            mem[_97 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_101 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 88] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 20
            mem[_117 + 32] = 'SM: division by zero'
            if stor9 / totalSupply > 0:
                if not stor9 / totalSupply:
                    revert with 'NH{q', 18
                return (stor3[address(arg1)] / stor9 / totalSupply)
            _124 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_124 + idx + 68] = mem[_117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_124 + 88] = 0
            revert with memory
              from mem[64]
               len _124 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 4
        if stor4[stor7[idx]] > s:
            _102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_102] = 20
            mem[_102 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_104 + idx + 68] = mem[_102 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_104 + 88] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_125] = 20
            mem[_125 + 32] = 'SM: division by zero'
            if stor9 / totalSupply > 0:
                if not stor9 / totalSupply:
                    revert with 'NH{q', 18
                return (stor3[address(arg1)] / stor9 / totalSupply)
            _128 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_128 + idx + 68] = mem[_125 + idx + 32]
                idx = idx + 32
                continue 
            mem[_128 + 88] = 0
            revert with memory
              from mem[64]
               len _128 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 3
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 24
        mem[_100 + 32] = 'SM: subtraction overflow'
        if stor3[stor7[idx]] > t:
            _103 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_103 + idx + 68] = mem[_100 + idx + 32]
                idx = idx + 32
                continue 
            mem[_103 + 92] = 0
            revert with memory
              from mem[64]
               len _103 + -mem[64] + 100
        if t < stor3[stor7[idx]]:
            revert with 'NH{q', 17
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 4
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 24
        mem[_121 + 32] = 'SM: subtraction overflow'
        if stor4[stor7[idx]] <= s:
            if s < stor4[stor7[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor4[stor7[idx]]
            t = t - stor3[stor7[idx]]
            continue 
        _126 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 24
        idx = 0
        while idx < 24:
            mem[_126 + idx + 68] = mem[_121 + idx + 32]
            idx = idx + 32
            continue 
        mem[_126 + 92] = 0
        revert with memory
          from mem[64]
           len _126 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SM: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor9 / totalSupply:
        if s <= 0:
            revert with 0, 'SM: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SM: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (stor3[address(arg1)] / t / s)
    if totalSupply <= 0:
        revert with 0, 'SM: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor9 / totalSupply <= 0:
        revert with 0, 'SM: division by zero', 0
    if not stor9 / totalSupply:
        revert with 'NH{q', 18
    return (stor3[address(arg1)] / stor9 / totalSupply)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections!'
        idx = 0
        s = totalSupply
        t = stor9
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 3
            if stor3[stor7[idx]] > t:
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 20
                mem[_105 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _109 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_109 + idx + 68] = mem[_105 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_109 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _109 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 20
                mem[_125 + 32] = 'SM: division by zero'
                if stor9 / totalSupply > 0:
                    if not stor9 / totalSupply:
                        revert with 'NH{q', 18
                    stor4[address(arg1)] = stor3[address(arg1)] / stor9 / totalSupply
                    stor6[address(arg1)] = 1
                    stor7.length++
                    stor7[stor7.length] = arg1
                _132 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_132 + idx + 68] = mem[_125 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_132 + 88] = 0
                revert with memory
                  from mem[64]
                   len _132 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            if stor4[stor7[idx]] > s:
                _110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_110] = 20
                mem[_110 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_112 + idx + 68] = mem[_110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_112 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _112 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 20
                mem[_133 + 32] = 'SM: division by zero'
                if stor9 / totalSupply > 0:
                    if not stor9 / totalSupply:
                        revert with 'NH{q', 18
                    stor4[address(arg1)] = stor3[address(arg1)] / stor9 / totalSupply
                    stor6[address(arg1)] = 1
                    stor7.length++
                    stor7[stor7.length] = arg1
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_136 + idx + 68] = mem[_133 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 88] = 0
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 3
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 24
            mem[_108 + 32] = 'SM: subtraction overflow'
            if stor3[stor7[idx]] > t:
                _111 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_111 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_111 + 92] = 0
                revert with memory
                  from mem[64]
                   len _111 + -mem[64] + 100
            if t < stor3[stor7[idx]]:
                revert with 'NH{q', 17
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 24
            mem[_129 + 32] = 'SM: subtraction overflow'
            if stor4[stor7[idx]] <= s:
                if s < stor4[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor4[stor7[idx]]
                t = t - stor3[stor7[idx]]
                continue 
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_134 + idx + 68] = mem[_129 + idx + 32]
                idx = idx + 32
                continue 
            mem[_134 + 92] = 0
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor9 / totalSupply:
            if s <= 0:
                revert with 0, 'SM: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SM: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SM: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor9 / totalSupply <= 0:
                revert with 0, 'SM: division by zero', 0
            if not stor9 / totalSupply:
                revert with 'NH{q', 18
            stor4[address(arg1)] = stor3[address(arg1)] / stor9 / totalSupply
    stor6[address(arg1)] = 1
    stor7.length++
    stor7[stor7.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply!'
    if arg2:
        if not arg1:
            mem[96] = 20
            mem[128] = 'SM: division by zero'
            mem[160] = 20
            mem[192] = 'SM: division by zero'
            mem[64] = 288
            mem[224] = 24
            mem[256] = 'SM: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SM: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor9
            while idx < stor7.length:
                mem[0] = stor7[idx]
                mem[32] = 3
                if stor3[stor7[idx]] > t:
                    _641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_641] = 20
                    mem[_641 + 32] = 'SM: division by zero'
                    if totalSupply <= 0:
                        _665 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 20
                        idx = 0
                        while idx < 20:
                            mem[_665 + idx + 68] = mem[_641 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_665 + 88] = 0
                        revert with memory
                          from mem[64]
                           len _665 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor9 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                        revert with 0, 'SM: multiplication overflow'
                    _850 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_850] = 24
                    mem[_850 + 32] = 'SM: subtraction overflow'
                    if 0 <= arg1 * stor9 / totalSupply:
                        if arg1 * stor9 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor9 / totalSupply)
                    _866 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_866 + idx + 68] = mem[_850 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_866 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _866 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 4
                if stor4[stor7[idx]] > s:
                    _666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_666] = 20
                    mem[_666 + 32] = 'SM: division by zero'
                    if totalSupply <= 0:
                        _676 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 20
                        idx = 0
                        while idx < 20:
                            mem[_676 + idx + 68] = mem[_666 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_676 + 88] = 0
                        revert with memory
                          from mem[64]
                           len _676 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor9 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                        revert with 0, 'SM: multiplication overflow'
                    _867 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_867] = 24
                    mem[_867 + 32] = 'SM: subtraction overflow'
                    if 0 <= arg1 * stor9 / totalSupply:
                        if arg1 * stor9 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor9 / totalSupply)
                    _891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_891 + idx + 68] = mem[_867 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_891 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _891 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 3
                _657 = mem[64]
                mem[64] = mem[64] + 64
                mem[_657] = 24
                mem[_657 + 32] = 'SM: subtraction overflow'
                if stor3[stor7[idx]] > t:
                    _672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_672 + idx + 68] = mem[_657 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_672 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _672 + -mem[64] + 100
                if t < stor3[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 4
                _740 = mem[64]
                mem[64] = mem[64] + 64
                mem[_740] = 24
                mem[_740 + 32] = 'SM: subtraction overflow'
                if stor4[stor7[idx]] <= s:
                    if s < stor4[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor4[stor7[idx]]
                    t = t - stor3[stor7[idx]]
                    continue 
                _752 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_752 + idx + 68] = mem[_740 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_752 + 92] = 0
                revert with memory
                  from mem[64]
                   len _752 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SM: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor9 / totalSupply:
                if s <= 0:
                    revert with 0, 'SM: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SM: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SM: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SM: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                return 0
            if arg1 and stor9 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            if 0 > arg1 * stor9 / totalSupply:
                revert with 0, 'SM: subtraction overflow', 0
            if arg1 * stor9 / totalSupply < 0:
                revert with 'NH{q', 17
            return (arg1 * stor9 / totalSupply)
        if arg1 and rocoFeeValue > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * rocoFeeValue / arg1 != rocoFeeValue:
            revert with 0, 'SM: multiplication overflow'
        mem[96] = 20
        mem[128] = 'SM: division by zero'
        mem[160] = 20
        mem[192] = 'SM: division by zero'
        mem[64] = 288
        mem[224] = 24
        mem[256] = 'SM: subtraction overflow'
        if arg1 * rocoFeeValue / 100 / 100 > arg1:
            revert with 0, 'SM: subtraction overflow', 0
        if arg1 < arg1 * rocoFeeValue / 100 / 100:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor9
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 3
            if stor3[stor7[idx]] > t:
                _636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_636] = 20
                mem[_636 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _663 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_663 + idx + 68] = mem[_636 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_663 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _663 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * rocoFeeValue / 100 / 100:
                        return 0
                    if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                        revert with 0, 'SM: multiplication overflow'
                    _848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_848] = 24
                    mem[_848 + 32] = 'SM: subtraction overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= 0:
                        if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply)
                    _862 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_862 + idx + 68] = mem[_848 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_862 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _862 + -mem[64] + 100
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                if not arg1 * rocoFeeValue / 100 / 100:
                    _847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_847] = 24
                    mem[_847 + 32] = 'SM: subtraction overflow'
                    if 0 <= arg1 * stor9 / totalSupply:
                        if arg1 * stor9 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor9 / totalSupply)
                    _861 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_861 + idx + 68] = mem[_847 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_861 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _861 + -mem[64] + 100
                if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _985 = mem[64]
                mem[64] = mem[64] + 64
                mem[_985] = 24
                mem[_985 + 32] = 'SM: subtraction overflow'
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= arg1 * stor9 / totalSupply:
                    if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor9 / totalSupply) - (arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply))
                _1011 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_1011 + idx + 68] = mem[_985 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1011 + 92] = 0
                revert with memory
                  from mem[64]
                   len _1011 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            if stor4[stor7[idx]] <= s:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 3
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 24
                mem[_655 + 32] = 'SM: subtraction overflow'
                if stor3[stor7[idx]] > t:
                    _671 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_671 + idx + 68] = mem[_655 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_671 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _671 + -mem[64] + 100
                if t < stor3[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 4
                _739 = mem[64]
                mem[64] = mem[64] + 64
                mem[_739] = 24
                mem[_739 + 32] = 'SM: subtraction overflow'
                if stor4[stor7[idx]] <= s:
                    if s < stor4[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor4[stor7[idx]]
                    t = t - stor3[stor7[idx]]
                    continue 
                _751 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_751 + idx + 68] = mem[_739 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_751 + 92] = 0
                revert with memory
                  from mem[64]
                   len _751 + -mem[64] + 100
            _664 = mem[64]
            mem[64] = mem[64] + 64
            mem[_664] = 20
            mem[_664 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _675 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_675 + idx + 68] = mem[_664 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_675 + 88] = 0
                revert with memory
                  from mem[64]
                   len _675 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * rocoFeeValue / 100 / 100:
                    return 0
                if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _864 = mem[64]
                mem[64] = mem[64] + 64
                mem[_864] = 24
                mem[_864 + 32] = 'SM: subtraction overflow'
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= 0:
                    if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply)
                _890 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_890 + idx + 68] = mem[_864 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_890 + 92] = 0
                revert with memory
                  from mem[64]
                   len _890 + -mem[64] + 100
            if arg1 and stor9 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            if not arg1 * rocoFeeValue / 100 / 100:
                _863 = mem[64]
                mem[64] = mem[64] + 64
                mem[_863] = 24
                mem[_863 + 32] = 'SM: subtraction overflow'
                if 0 <= arg1 * stor9 / totalSupply:
                    if arg1 * stor9 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor9 / totalSupply)
                _889 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_889 + idx + 68] = mem[_863 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_889 + 92] = 0
                revert with memory
                  from mem[64]
                   len _889 + -mem[64] + 100
            if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            _1014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1014] = 24
            mem[_1014 + 32] = 'SM: subtraction overflow'
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= arg1 * stor9 / totalSupply:
                if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor9 / totalSupply) - (arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply))
            _1033 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_1033 + idx + 68] = mem[_1014 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1033 + 92] = 0
            revert with memory
              from mem[64]
               len _1033 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor9 / totalSupply:
            if s <= 0:
                revert with 0, 'SM: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * rocoFeeValue / 100 / 100:
                    return 0
                if arg1 * rocoFeeValue / 100 / 100 and t / s > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * t / s / arg1 * rocoFeeValue / 100 / 100 != t / s:
                    revert with 0, 'SM: multiplication overflow'
                if arg1 * rocoFeeValue / 100 / 100 * t / s > 0:
                    revert with 0, 'SM: subtraction overflow', 0
                if 0 < arg1 * rocoFeeValue / 100 / 100 * t / s:
                    revert with 'NH{q', 17
                return (-1 * arg1 * rocoFeeValue / 100 / 100 * t / s)
            if arg1 and t / s > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SM: multiplication overflow'
            if not arg1 * rocoFeeValue / 100 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SM: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                return (arg1 * t / s)
            if arg1 * rocoFeeValue / 100 / 100 and t / s > -1 / arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * rocoFeeValue / 100 / 100 * t / s / arg1 * rocoFeeValue / 100 / 100 != t / s:
                revert with 0, 'SM: multiplication overflow'
            if arg1 * rocoFeeValue / 100 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SM: subtraction overflow', 0
            if arg1 * t / s < arg1 * rocoFeeValue / 100 / 100 * t / s:
                revert with 'NH{q', 17
            return ((arg1 * t / s) - (arg1 * rocoFeeValue / 100 / 100 * t / s))
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            if not arg1 * rocoFeeValue / 100 / 100:
                return 0
            if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > 0:
                revert with 0, 'SM: subtraction overflow', 0
            if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                revert with 'NH{q', 17
            return (-1 * arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply)
        if arg1 and stor9 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
            revert with 0, 'SM: multiplication overflow'
        if not arg1 * rocoFeeValue / 100 / 100:
            if 0 > arg1 * stor9 / totalSupply:
                revert with 0, 'SM: subtraction overflow', 0
            if arg1 * stor9 / totalSupply < 0:
                revert with 'NH{q', 17
            return (arg1 * stor9 / totalSupply)
        if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
            revert with 'NH{q', 17
        if not arg1 * rocoFeeValue / 100 / 100:
            revert with 'NH{q', 18
        if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
            revert with 0, 'SM: multiplication overflow'
        if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > arg1 * stor9 / totalSupply:
            revert with 0, 'SM: subtraction overflow', 0
        if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
            revert with 'NH{q', 17
        return ((arg1 * stor9 / totalSupply) - (arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply))
    if not arg1:
        mem[96] = 20
        mem[128] = 'SM: division by zero'
        mem[160] = 20
        mem[192] = 'SM: division by zero'
        mem[64] = 288
        mem[224] = 24
        mem[256] = 'SM: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SM: subtraction overflow', 0
        if arg1 < 0:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor9
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 3
            if stor3[stor7[idx]] > t:
                _651 = mem[64]
                mem[64] = mem[64] + 64
                mem[_651] = 20
                mem[_651 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _669 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_669 + idx + 68] = mem[_651 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_669 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _669 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_855] = 24
                mem[_855 + 32] = 'SM: subtraction overflow'
                if 0 <= arg1 * stor9 / totalSupply:
                    if arg1 * stor9 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor9 / totalSupply)
                _874 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_874 + idx + 68] = mem[_855 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_874 + 92] = 0
                revert with memory
                  from mem[64]
                   len _874 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            if stor4[stor7[idx]] > s:
                _670 = mem[64]
                mem[64] = mem[64] + 64
                mem[_670] = 20
                mem[_670 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _678 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_678 + idx + 68] = mem[_670 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_678 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _678 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_875] = 24
                mem[_875 + 32] = 'SM: subtraction overflow'
                if 0 <= arg1 * stor9 / totalSupply:
                    if arg1 * stor9 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor9 / totalSupply)
                _894 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_894 + idx + 68] = mem[_875 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_894 + 92] = 0
                revert with memory
                  from mem[64]
                   len _894 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 3
            _661 = mem[64]
            mem[64] = mem[64] + 64
            mem[_661] = 24
            mem[_661 + 32] = 'SM: subtraction overflow'
            if stor3[stor7[idx]] > t:
                _674 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_674 + idx + 68] = mem[_661 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_674 + 92] = 0
                revert with memory
                  from mem[64]
                   len _674 + -mem[64] + 100
            if t < stor3[stor7[idx]]:
                revert with 'NH{q', 17
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            _742 = mem[64]
            mem[64] = mem[64] + 64
            mem[_742] = 24
            mem[_742 + 32] = 'SM: subtraction overflow'
            if stor4[stor7[idx]] <= s:
                if s < stor4[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor4[stor7[idx]]
                t = t - stor3[stor7[idx]]
                continue 
            _754 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_754 + idx + 68] = mem[_742 + idx + 32]
                idx = idx + 32
                continue 
            mem[_754 + 92] = 0
            revert with memory
              from mem[64]
               len _754 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor9 / totalSupply:
            if s <= 0:
                revert with 0, 'SM: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                return 0
            if arg1 and t / s > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SM: multiplication overflow'
            if 0 > arg1 * t / s:
                revert with 0, 'SM: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 'NH{q', 17
            return (arg1 * t / s)
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            return 0
        if arg1 and stor9 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
            revert with 0, 'SM: multiplication overflow'
        if 0 > arg1 * stor9 / totalSupply:
            revert with 0, 'SM: subtraction overflow', 0
        if arg1 * stor9 / totalSupply < 0:
            revert with 'NH{q', 17
    else:
        if arg1 and rocoFeeValue > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * rocoFeeValue / arg1 != rocoFeeValue:
            revert with 0, 'SM: multiplication overflow'
        mem[96] = 20
        mem[128] = 'SM: division by zero'
        mem[160] = 20
        mem[192] = 'SM: division by zero'
        mem[64] = 288
        mem[224] = 24
        mem[256] = 'SM: subtraction overflow'
        if arg1 * rocoFeeValue / 100 / 100 > arg1:
            revert with 0, 'SM: subtraction overflow', 0
        if arg1 < arg1 * rocoFeeValue / 100 / 100:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor9
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 3
            if stor3[stor7[idx]] > t:
                _646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_646] = 20
                mem[_646 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _667 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_667 + idx + 68] = mem[_646 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_667 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _667 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * rocoFeeValue / 100 / 100:
                        return 0
                    if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                        revert with 0, 'SM: multiplication overflow'
                    _853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_853] = 24
                    mem[_853 + 32] = 'SM: subtraction overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= 0:
                        if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _870 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_870 + idx + 68] = mem[_853 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_870 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _870 + -mem[64] + 100
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                if not arg1 * rocoFeeValue / 100 / 100:
                    _852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_852] = 24
                    mem[_852 + 32] = 'SM: subtraction overflow'
                    if 0 <= arg1 * stor9 / totalSupply:
                        if arg1 * stor9 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor9 / totalSupply)
                    _869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_869 + idx + 68] = mem[_852 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_869 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _869 + -mem[64] + 100
                if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _997 = mem[64]
                mem[64] = mem[64] + 64
                mem[_997] = 24
                mem[_997 + 32] = 'SM: subtraction overflow'
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= arg1 * stor9 / totalSupply:
                    if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor9 / totalSupply)
                _1019 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_1019 + idx + 68] = mem[_997 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1019 + 92] = 0
                revert with memory
                  from mem[64]
                   len _1019 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            if stor4[stor7[idx]] <= s:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 3
                _659 = mem[64]
                mem[64] = mem[64] + 64
                mem[_659] = 24
                mem[_659 + 32] = 'SM: subtraction overflow'
                if stor3[stor7[idx]] > t:
                    _673 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_673 + idx + 68] = mem[_659 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_673 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _673 + -mem[64] + 100
                if t < stor3[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 4
                _741 = mem[64]
                mem[64] = mem[64] + 64
                mem[_741] = 24
                mem[_741 + 32] = 'SM: subtraction overflow'
                if stor4[stor7[idx]] <= s:
                    if s < stor4[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor4[stor7[idx]]
                    t = t - stor3[stor7[idx]]
                    continue 
                _753 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_753 + idx + 68] = mem[_741 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_753 + 92] = 0
                revert with memory
                  from mem[64]
                   len _753 + -mem[64] + 100
            _668 = mem[64]
            mem[64] = mem[64] + 64
            mem[_668] = 20
            mem[_668 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _677 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_677 + idx + 68] = mem[_668 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_677 + 88] = 0
                revert with memory
                  from mem[64]
                   len _677 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * rocoFeeValue / 100 / 100:
                    return 0
                if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _872 = mem[64]
                mem[64] = mem[64] + 64
                mem[_872] = 24
                mem[_872 + 32] = 'SM: subtraction overflow'
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= 0:
                    if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    else:
                        return 0
                _893 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_893 + idx + 68] = mem[_872 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_893 + 92] = 0
                revert with memory
                  from mem[64]
                   len _893 + -mem[64] + 100
            if arg1 and stor9 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            if not arg1 * rocoFeeValue / 100 / 100:
                _871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_871] = 24
                mem[_871 + 32] = 'SM: subtraction overflow'
                if 0 <= arg1 * stor9 / totalSupply:
                    if arg1 * stor9 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor9 / totalSupply)
                _892 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_892 + idx + 68] = mem[_871 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_892 + 92] = 0
                revert with memory
                  from mem[64]
                   len _892 + -mem[64] + 100
            if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            _1022 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1022] = 24
            mem[_1022 + 32] = 'SM: subtraction overflow'
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply <= arg1 * stor9 / totalSupply:
                if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                return (arg1 * stor9 / totalSupply)
            _1037 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_1037 + idx + 68] = mem[_1022 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1037 + 92] = 0
            revert with memory
              from mem[64]
               len _1037 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor9 / totalSupply:
            if s <= 0:
                revert with 0, 'SM: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * rocoFeeValue / 100 / 100:
                    if arg1 * rocoFeeValue / 100 / 100 and t / s > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * t / s / arg1 * rocoFeeValue / 100 / 100 != t / s:
                        revert with 0, 'SM: multiplication overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * t / s > 0:
                        revert with 0, 'SM: subtraction overflow', 0
                    if 0 < arg1 * rocoFeeValue / 100 / 100 * t / s:
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
                revert with 0, 'SM: multiplication overflow'
            if not arg1 * rocoFeeValue / 100 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SM: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * rocoFeeValue / 100 / 100 and t / s > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * t / s / arg1 * rocoFeeValue / 100 / 100 != t / s:
                    revert with 0, 'SM: multiplication overflow'
                if arg1 * rocoFeeValue / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SM: subtraction overflow', 0
                if arg1 * t / s < arg1 * rocoFeeValue / 100 / 100 * t / s:
                    revert with 'NH{q', 17
            return (arg1 * t / s)
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            if arg1 * rocoFeeValue / 100 / 100:
                if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > 0:
                    revert with 0, 'SM: subtraction overflow', 0
                if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                else:
                    return 0
            else:
                return 0
        if arg1 and stor9 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
            revert with 0, 'SM: multiplication overflow'
        if not arg1 * rocoFeeValue / 100 / 100:
            if 0 > arg1 * stor9 / totalSupply:
                revert with 0, 'SM: subtraction overflow', 0
            if arg1 * stor9 / totalSupply < 0:
                revert with 'NH{q', 17
        else:
            if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > arg1 * stor9 / totalSupply:
                revert with 0, 'SM: subtraction overflow', 0
            if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                revert with 'NH{q', 17
    return (arg1 * stor9 / totalSupply)
}

function reflect(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 6
    if stor6[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if not arg1:
        mem[96] = 20
        mem[128] = 'SM: division by zero'
        mem[160] = 20
        mem[192] = 'SM: division by zero'
        mem[64] = 288
        mem[224] = 24
        mem[256] = 'SM: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SM: subtraction overflow', 0
        if arg1 < 0:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor9
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 3
            if stor3[stor7[idx]] > t:
                _662 = mem[64]
                mem[64] = mem[64] + 64
                mem[_662] = 20
                mem[_662 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_672 + idx + 68] = mem[_662 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_672 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _672 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    _735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_735] = 24
                    mem[_735 + 32] = 'SM: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _765 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_765] = 24
                    mem[_765 + 32] = 'SM: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _775 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 24
                        idx = 0
                        while idx < 24:
                            mem[_775 + idx + 68] = mem[_765 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_775 + 92] = 0
                        revert with memory
                          from mem[64]
                           len _775 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_838] = 24
                    mem[_838 + 32] = 'SM: subtraction overflow'
                    if 0 <= stor9:
                        if stor9 < 0:
                            revert with 'NH{q', 17
                        if totalRocoFee > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalRocoFee + arg1 < totalRocoFee:
                            revert with 0, 'SM: addition overflow'
                        totalRocoFee += arg1
                    _857 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_857 + idx + 68] = mem[_838 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_857 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _857 + -mem[64] + 100
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _769 = mem[64]
                mem[64] = mem[64] + 64
                mem[_769] = 24
                mem[_769 + 32] = 'SM: subtraction overflow'
                if 0 > arg1 * stor9 / totalSupply:
                    _781 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_781 + idx + 68] = mem[_769 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_781 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _781 + -mem[64] + 100
                if arg1 * stor9 / totalSupply < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _867 = mem[64]
                mem[64] = mem[64] + 64
                mem[_867] = 24
                mem[_867 + 32] = 'SM: subtraction overflow'
                if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                    _888 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_888 + idx + 68] = mem[_867 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_888 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _888 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
                _993 = mem[64]
                mem[64] = mem[64] + 64
                mem[_993] = 24
                mem[_993 + 32] = 'SM: subtraction overflow'
                if arg1 * stor9 / totalSupply <= stor9:
                    if stor9 < arg1 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    stor9 += -1 * arg1 * stor9 / totalSupply
                    if totalRocoFee > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalRocoFee + arg1 < totalRocoFee:
                        revert with 0, 'SM: addition overflow'
                    totalRocoFee += arg1
                _1025 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_1025 + idx + 68] = mem[_993 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1025 + 92] = 0
                revert with memory
                  from mem[64]
                   len _1025 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            if stor4[stor7[idx]] <= s:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 3
                _668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_668] = 24
                mem[_668 + 32] = 'SM: subtraction overflow'
                if stor3[stor7[idx]] > t:
                    _675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_675 + idx + 68] = mem[_668 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_675 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _675 + -mem[64] + 100
                if t < stor3[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 4
                _709 = mem[64]
                mem[64] = mem[64] + 64
                mem[_709] = 24
                mem[_709 + 32] = 'SM: subtraction overflow'
                if stor4[stor7[idx]] <= s:
                    if s < stor4[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor4[stor7[idx]]
                    t = t - stor3[stor7[idx]]
                    continue 
                _715 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_715 + idx + 68] = mem[_709 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_715 + 92] = 0
                revert with memory
                  from mem[64]
                   len _715 + -mem[64] + 100
            _673 = mem[64]
            mem[64] = mem[64] + 64
            mem[_673] = 20
            mem[_673 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _677 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_677 + idx + 68] = mem[_673 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_677 + 88] = 0
                revert with memory
                  from mem[64]
                   len _677 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                _737 = mem[64]
                mem[64] = mem[64] + 64
                mem[_737] = 24
                mem[_737 + 32] = 'SM: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 3
                _776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_776] = 24
                mem[_776 + 32] = 'SM: subtraction overflow'
                if 0 > stor3[address(msg.sender)]:
                    _790 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_790 + idx + 68] = mem[_776 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_790 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _790 + -mem[64] + 100
                if stor3[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _859 = mem[64]
                mem[64] = mem[64] + 64
                mem[_859] = 24
                mem[_859 + 32] = 'SM: subtraction overflow'
                if 0 <= stor9:
                    if stor9 < 0:
                        revert with 'NH{q', 17
                    if totalRocoFee > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalRocoFee + arg1 < totalRocoFee:
                        revert with 0, 'SM: addition overflow'
                    totalRocoFee += arg1
                _881 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_881 + idx + 68] = mem[_859 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_881 + 92] = 0
                revert with memory
                  from mem[64]
                   len _881 + -mem[64] + 100
            if arg1 and stor9 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            _782 = mem[64]
            mem[64] = mem[64] + 64
            mem[_782] = 24
            mem[_782 + 32] = 'SM: subtraction overflow'
            if 0 > arg1 * stor9 / totalSupply:
                _795 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_795 + idx + 68] = mem[_782 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_795 + 92] = 0
                revert with memory
                  from mem[64]
                   len _795 + -mem[64] + 100
            if arg1 * stor9 / totalSupply < 0:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 3
            _891 = mem[64]
            mem[64] = mem[64] + 64
            mem[_891] = 24
            mem[_891 + 32] = 'SM: subtraction overflow'
            if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                _906 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_906 + idx + 68] = mem[_891 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_906 + 92] = 0
                revert with memory
                  from mem[64]
                   len _906 + -mem[64] + 100
            if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 3
            stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
            _1027 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1027] = 24
            mem[_1027 + 32] = 'SM: subtraction overflow'
            if arg1 * stor9 / totalSupply <= stor9:
                if stor9 < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                stor9 += -1 * arg1 * stor9 / totalSupply
                if totalRocoFee > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalRocoFee + arg1 < totalRocoFee:
                    revert with 0, 'SM: addition overflow'
                totalRocoFee += arg1
            _1045 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_1045 + idx + 68] = mem[_1027 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1045 + 92] = 0
            revert with memory
              from mem[64]
               len _1045 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor9 / totalSupply:
            if s <= 0:
                revert with 0, 'SM: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SM: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SM: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if arg1 * t / s > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < arg1 * t / s:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < arg1 * t / s:
                    revert with 'NH{q', 17
                stor9 += -1 * arg1 * t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SM: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                if 0 > arg1 * stor9 / totalSupply:
                    revert with 0, 'SM: subtraction overflow', 0
                if arg1 * stor9 / totalSupply < 0:
                    revert with 'NH{q', 17
                if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
                if arg1 * stor9 / totalSupply > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                stor9 += -1 * arg1 * stor9 / totalSupply
    else:
        if arg1 and rocoFeeValue > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * rocoFeeValue / arg1 != rocoFeeValue:
            revert with 0, 'SM: multiplication overflow'
        mem[96] = 20
        mem[128] = 'SM: division by zero'
        mem[160] = 20
        mem[192] = 'SM: division by zero'
        mem[64] = 288
        mem[224] = 24
        mem[256] = 'SM: subtraction overflow'
        if arg1 * rocoFeeValue / 100 / 100 > arg1:
            revert with 0, 'SM: subtraction overflow', 0
        if arg1 < arg1 * rocoFeeValue / 100 / 100:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor9
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 3
            if stor3[stor7[idx]] > t:
                _657 = mem[64]
                mem[64] = mem[64] + 64
                mem[_657] = 20
                mem[_657 + 32] = 'SM: division by zero'
                if totalSupply <= 0:
                    _670 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[_670 + idx + 68] = mem[_657 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_670 + 88] = 0
                    revert with memory
                      from mem[64]
                       len _670 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * rocoFeeValue / 100 / 100:
                        _734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_734] = 24
                        mem[_734 + 32] = 'SM: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_763] = 24
                        mem[_763 + 32] = 'SM: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _772 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 24
                            idx = 0
                            while idx < 24:
                                mem[_772 + idx + 68] = mem[_763 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_772 + 92] = 0
                            revert with memory
                              from mem[64]
                               len _772 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_832] = 24
                        mem[_832 + 32] = 'SM: subtraction overflow'
                        if 0 <= stor9:
                            if stor9 < 0:
                                revert with 'NH{q', 17
                            if totalRocoFee > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalRocoFee + arg1 < totalRocoFee:
                                revert with 0, 'SM: addition overflow'
                            totalRocoFee += arg1
                        _852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 24
                        idx = 0
                        while idx < 24:
                            mem[_852 + idx + 68] = mem[_832 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_852 + 92] = 0
                        revert with memory
                          from mem[64]
                           len _852 + -mem[64] + 100
                    if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                        revert with 0, 'SM: multiplication overflow'
                    _767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_767] = 24
                    mem[_767 + 32] = 'SM: subtraction overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > 0:
                        _778 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 24
                        idx = 0
                        while idx < 24:
                            mem[_778 + idx + 68] = mem[_767 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_778 + 92] = 0
                        revert with memory
                          from mem[64]
                           len _778 + -mem[64] + 100
                    if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _863 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_863] = 24
                    mem[_863 + 32] = 'SM: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 24
                        idx = 0
                        while idx < 24:
                            mem[_883 + idx + 68] = mem[_863 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_883 + 92] = 0
                        revert with memory
                          from mem[64]
                           len _883 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _986 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_986] = 24
                    mem[_986 + 32] = 'SM: subtraction overflow'
                    if 0 <= stor9:
                        if stor9 < 0:
                            revert with 'NH{q', 17
                        if totalRocoFee > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalRocoFee + arg1 < totalRocoFee:
                            revert with 0, 'SM: addition overflow'
                        totalRocoFee += arg1
                    _1018 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_1018 + idx + 68] = mem[_986 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1018 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _1018 + -mem[64] + 100
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                if not arg1 * rocoFeeValue / 100 / 100:
                    _766 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_766] = 24
                    mem[_766 + 32] = 'SM: subtraction overflow'
                    if 0 > arg1 * stor9 / totalSupply:
                        _777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 24
                        idx = 0
                        while idx < 24:
                            mem[_777 + idx + 68] = mem[_766 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_777 + 92] = 0
                        revert with memory
                          from mem[64]
                           len _777 + -mem[64] + 100
                    if arg1 * stor9 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_862] = 24
                    mem[_862 + 32] = 'SM: subtraction overflow'
                    if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                        _882 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 24
                        idx = 0
                        while idx < 24:
                            mem[_882 + idx + 68] = mem[_862 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_882 + 92] = 0
                        revert with memory
                          from mem[64]
                           len _882 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
                    _985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_985] = 24
                    mem[_985 + 32] = 'SM: subtraction overflow'
                    if arg1 * stor9 / totalSupply <= stor9:
                        if stor9 < arg1 * stor9 / totalSupply:
                            revert with 'NH{q', 17
                        stor9 += -1 * arg1 * stor9 / totalSupply
                        if totalRocoFee > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalRocoFee + arg1 < totalRocoFee:
                            revert with 0, 'SM: addition overflow'
                        totalRocoFee += arg1
                    _1017 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_1017 + idx + 68] = mem[_985 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1017 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _1017 + -mem[64] + 100
                if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _874 = mem[64]
                mem[64] = mem[64] + 64
                mem[_874] = 24
                mem[_874 + 32] = 'SM: subtraction overflow'
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > arg1 * stor9 / totalSupply:
                    _892 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_892 + idx + 68] = mem[_874 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_892 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _892 + -mem[64] + 100
                if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _1032 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1032] = 24
                mem[_1032 + 32] = 'SM: subtraction overflow'
                if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                    _1047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_1047 + idx + 68] = mem[_1032 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1047 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _1047 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
                _1144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1144] = 24
                mem[_1144 + 32] = 'SM: subtraction overflow'
                if arg1 * stor9 / totalSupply <= stor9:
                    if stor9 < arg1 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    stor9 += -1 * arg1 * stor9 / totalSupply
                    if totalRocoFee > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalRocoFee + arg1 < totalRocoFee:
                        revert with 0, 'SM: addition overflow'
                    totalRocoFee += arg1
                _1165 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_1165 + idx + 68] = mem[_1144 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1165 + 92] = 0
                revert with memory
                  from mem[64]
                   len _1165 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 4
            if stor4[stor7[idx]] <= s:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 3
                _666 = mem[64]
                mem[64] = mem[64] + 64
                mem[_666] = 24
                mem[_666 + 32] = 'SM: subtraction overflow'
                if stor3[stor7[idx]] > t:
                    _674 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_674 + idx + 68] = mem[_666 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_674 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _674 + -mem[64] + 100
                if t < stor3[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 4
                _708 = mem[64]
                mem[64] = mem[64] + 64
                mem[_708] = 24
                mem[_708 + 32] = 'SM: subtraction overflow'
                if stor4[stor7[idx]] <= s:
                    if s < stor4[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor4[stor7[idx]]
                    t = t - stor3[stor7[idx]]
                    continue 
                _714 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_714 + idx + 68] = mem[_708 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_714 + 92] = 0
                revert with memory
                  from mem[64]
                   len _714 + -mem[64] + 100
            _671 = mem[64]
            mem[64] = mem[64] + 64
            mem[_671] = 20
            mem[_671 + 32] = 'SM: division by zero'
            if totalSupply <= 0:
                _676 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_676 + idx + 68] = mem[_671 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_676 + 88] = 0
                revert with memory
                  from mem[64]
                   len _676 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * rocoFeeValue / 100 / 100:
                    _736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_736] = 24
                    mem[_736 + 32] = 'SM: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_773] = 24
                    mem[_773 + 32] = 'SM: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _786 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 24
                        idx = 0
                        while idx < 24:
                            mem[_786 + idx + 68] = mem[_773 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_786 + 92] = 0
                        revert with memory
                          from mem[64]
                           len _786 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _855 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_855] = 24
                    mem[_855 + 32] = 'SM: subtraction overflow'
                    if 0 <= stor9:
                        if stor9 < 0:
                            revert with 'NH{q', 17
                        if totalRocoFee > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalRocoFee + arg1 < totalRocoFee:
                            revert with 0, 'SM: addition overflow'
                        totalRocoFee += arg1
                    _877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_877 + idx + 68] = mem[_855 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_877 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _877 + -mem[64] + 100
                if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * rocoFeeValue / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                _780 = mem[64]
                mem[64] = mem[64] + 64
                mem[_780] = 24
                mem[_780 + 32] = 'SM: subtraction overflow'
                if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > 0:
                    _793 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_793 + idx + 68] = mem[_780 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_793 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _793 + -mem[64] + 100
                if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _887 = mem[64]
                mem[64] = mem[64] + 64
                mem[_887] = 24
                mem[_887 + 32] = 'SM: subtraction overflow'
                if 0 > stor3[address(msg.sender)]:
                    _902 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_902 + idx + 68] = mem[_887 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_902 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _902 + -mem[64] + 100
                if stor3[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _1022 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1022] = 24
                mem[_1022 + 32] = 'SM: subtraction overflow'
                if 0 <= stor9:
                    if stor9 < 0:
                        revert with 'NH{q', 17
                    if totalRocoFee > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalRocoFee + arg1 < totalRocoFee:
                        revert with 0, 'SM: addition overflow'
                    totalRocoFee += arg1
                _1043 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_1043 + idx + 68] = mem[_1022 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1043 + 92] = 0
                revert with memory
                  from mem[64]
                   len _1043 + -mem[64] + 100
            if arg1 and stor9 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            if not arg1 * rocoFeeValue / 100 / 100:
                _779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_779] = 24
                mem[_779 + 32] = 'SM: subtraction overflow'
                if 0 > arg1 * stor9 / totalSupply:
                    _792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_792 + idx + 68] = mem[_779 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_792 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _792 + -mem[64] + 100
                if arg1 * stor9 / totalSupply < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_886] = 24
                mem[_886 + 32] = 'SM: subtraction overflow'
                if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                    _901 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[_901 + idx + 68] = mem[_886 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_901 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _901 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
                _1021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1021] = 24
                mem[_1021 + 32] = 'SM: subtraction overflow'
                if arg1 * stor9 / totalSupply <= stor9:
                    if stor9 < arg1 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                    stor9 += -1 * arg1 * stor9 / totalSupply
                    if totalRocoFee > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalRocoFee + arg1 < totalRocoFee:
                        revert with 0, 'SM: addition overflow'
                    totalRocoFee += arg1
                _1042 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_1042 + idx + 68] = mem[_1021 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1042 + 92] = 0
                revert with memory
                  from mem[64]
                   len _1042 + -mem[64] + 100
            if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * rocoFeeValue / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                revert with 0, 'SM: multiplication overflow'
            _896 = mem[64]
            mem[64] = mem[64] + 64
            mem[_896] = 24
            mem[_896 + 32] = 'SM: subtraction overflow'
            if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > arg1 * stor9 / totalSupply:
                _911 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_911 + idx + 68] = mem[_896 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_911 + 92] = 0
                revert with memory
                  from mem[64]
                   len _911 + -mem[64] + 100
            if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 3
            _1053 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1053] = 24
            mem[_1053 + 32] = 'SM: subtraction overflow'
            if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                _1068 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[_1068 + idx + 68] = mem[_1053 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1068 + 92] = 0
                revert with memory
                  from mem[64]
                   len _1068 + -mem[64] + 100
            if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 3
            stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
            _1168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1168] = 24
            mem[_1168 + 32] = 'SM: subtraction overflow'
            if arg1 * stor9 / totalSupply <= stor9:
                if stor9 < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                stor9 += -1 * arg1 * stor9 / totalSupply
                if totalRocoFee > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalRocoFee + arg1 < totalRocoFee:
                    revert with 0, 'SM: addition overflow'
                totalRocoFee += arg1
            _1175 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[_1175 + idx + 68] = mem[_1168 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1175 + 92] = 0
            revert with memory
              from mem[64]
               len _1175 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SM: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor9 / totalSupply:
            if s <= 0:
                revert with 0, 'SM: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * rocoFeeValue / 100 / 100:
                    if arg1 * rocoFeeValue / 100 / 100 and t / s > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * t / s / arg1 * rocoFeeValue / 100 / 100 != t / s:
                        revert with 0, 'SM: multiplication overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * t / s > 0:
                        revert with 0, 'SM: subtraction overflow', 0
                    if 0 < arg1 * rocoFeeValue / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SM: multiplication overflow'
                if not arg1 * rocoFeeValue / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SM: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * rocoFeeValue / 100 / 100 and t / s > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * t / s / arg1 * rocoFeeValue / 100 / 100 != t / s:
                        revert with 0, 'SM: multiplication overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SM: subtraction overflow', 0
                    if arg1 * t / s < arg1 * rocoFeeValue / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                if arg1 * t / s > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < arg1 * t / s:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < arg1 * t / s:
                    revert with 'NH{q', 17
                stor9 += -1 * arg1 * t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SM: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * rocoFeeValue / 100 / 100:
                    if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                        revert with 0, 'SM: multiplication overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > 0:
                        revert with 0, 'SM: subtraction overflow', 0
                    if 0 < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if 0 > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 and stor9 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor9 / totalSupply / arg1 != stor9 / totalSupply:
                    revert with 0, 'SM: multiplication overflow'
                if not arg1 * rocoFeeValue / 100 / 100:
                    if 0 > arg1 * stor9 / totalSupply:
                        revert with 0, 'SM: subtraction overflow', 0
                    if arg1 * stor9 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * rocoFeeValue / 100 / 100 and stor9 / totalSupply > -1 / arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * rocoFeeValue / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply / arg1 * rocoFeeValue / 100 / 100 != stor9 / totalSupply:
                        revert with 0, 'SM: multiplication overflow'
                    if arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply > arg1 * stor9 / totalSupply:
                        revert with 0, 'SM: subtraction overflow', 0
                    if arg1 * stor9 / totalSupply < arg1 * rocoFeeValue / 100 / 100 * stor9 / totalSupply:
                        revert with 'NH{q', 17
                if arg1 * stor9 / totalSupply > stor3[address(msg.sender)]:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor3[address(msg.sender)] < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += -1 * arg1 * stor9 / totalSupply
                if arg1 * stor9 / totalSupply > stor9:
                    revert with 0, 'SM: subtraction overflow', 0
                if stor9 < arg1 * stor9 / totalSupply:
                    revert with 'NH{q', 17
                stor9 += -1 * arg1 * stor9 / totalSupply
    if totalRocoFee > -arg1 - 1:
        revert with 'NH{q', 17
    if totalRocoFee + arg1 < totalRocoFee:
        revert with 0, 'SM: addition overflow'
    totalRocoFee += arg1
}



}

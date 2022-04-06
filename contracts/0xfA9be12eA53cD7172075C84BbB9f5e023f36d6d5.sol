contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'AvaxShiba'

const decimals = 9

const symbol = ''


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of address stor5;
uint256 totalSupply;
uint256 stor7;
uint256 totalFees;
uint256 totalBurn;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function totalBurn() payable {
    return totalBurn
}

function owner() payable {
    return owner
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != arg1:
            idx = idx + 1
            continue 
        require stor5.length - 1 < stor5.length
        require idx < stor5.length
        stor5[idx] = stor5[stor5.length]
        stor2[address(arg1)] = 0
        stor4[address(arg1)] = 0
        require stor5.length
        stor5[stor5.length] = 0
        stor5.length--
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6e42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function tokenFromMagnetion(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c206d61676e6574696f6e,
                    mem[205 len 23]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
            else:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (arg1 / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _198 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
            else:
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (arg1 / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _161 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _217 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _217 + 68] = mem[idx + _200 + 32]
            idx = idx + 32
            continue 
        mem[_217 + 68] = mem[_217 + 70 len 30]
        revert with memory
          from mem[64]
           len _217 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor7 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor7 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor7 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c206d61676e6574696f6e,
                    mem[205 len 23]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[address(arg1)] / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[address(arg1)] / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor7 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor1[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor7 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor1[address(arg1)] / stor7 / totalSupply)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 == 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f57652063616e206e6f74206578636c75646520556e697377617020726f75746572,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)]:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c206d61676e6574696f6e,
                        mem[205 len 23]
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_168] = 26
                mem[_168 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _168 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_210] = 26
                    mem[_210 + 32] = 'SafeMath: division by zero'
                    if stor7 / totalSupply:
                        stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                        stor4[address(arg1)] = 1
                        stor5.length++
                        stor36B6[stor5.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _210 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 26
                mem[_178 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _178 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_232] = 26
                    mem[_232 + 32] = 'SafeMath: division by zero'
                    if stor7 / totalSupply:
                        stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                        stor4[address(arg1)] = 1
                        stor5.length++
                        stor36B6[stor5.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _232 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 30
            mem[_173 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _180 + 68] = mem[idx + _173 + 32]
                    idx = idx + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_212] = 30
            mem[_212 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _229 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _229 + 68] = mem[idx + _212 + 32]
                idx = idx + 32
                continue 
            mem[_229 + 68] = mem[_229 + 70 len 30]
            revert with memory
              from mem[64]
               len _229 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor7 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero'
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not stor7 / totalSupply:
                revert with 0, 'SafeMath: division by zero'
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
    stor4[address(arg1)] = 1
    stor5.length++
    stor36B6[stor5.length] = arg1
}

function magnetionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _2754 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2754] = 26
                        mem[_2754 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2754 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3479 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3479] = 30
                        mem[_3479 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3543 + 68] = mem[idx + _3479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3543 + 68] = mem[_3543 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3543 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _2820 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2820] = 26
                        mem[_2820 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2820 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3546] = 30
                        mem[_3546 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3690 + 68] = mem[idx + _3546 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3690 + 68] = mem[_3690 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3690 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2788] = 30
                    mem[_2788 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2854 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2854 + 68] = mem[idx + _2788 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2854 + 68] = mem[_2854 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2854 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3097] = 30
                    mem[_3097 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3205 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3205 + 68] = mem[idx + _3097 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3205 + 68] = mem[_3205 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3205 + -mem[64] + 100
                _2628 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2628] = 26
                mem[_2628 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor7 / totalSupply:
                    _2894 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2894] = 26
                    mem[_2894 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _2895 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2895] = 26
                mem[_2895 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if 100 * arg1 / arg1 != 100:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 100 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2749 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2749] = 26
                    mem[_2749 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2749 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 100 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3476 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3476] = 30
                        mem[_3476 + 32] = 'SafeMath: subtraction overflow'
                        _3779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3779] = 30
                        mem[_3779 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= 0:
                            return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
                        _4021 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4021 + 68] = mem[idx + _3779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4021 + 68] = mem[_4021 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4021 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3475 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3475] = 30
                        mem[_3475 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3538 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3538 + 68] = mem[idx + _3475 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3538 + 68] = mem[_3538 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3538 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3498 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3498] = 30
                    mem[_3498 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3605 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3605 + 68] = mem[idx + _3498 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3605 + 68] = mem[_3605 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3605 + -mem[64] + 100
                    _3884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3884] = 30
                    mem[_3884 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                    _4141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4141 + 68] = mem[idx + _3884 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4141 + 68] = mem[_4141 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4141 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2785 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2785] = 30
                    mem[_2785 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2850 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2850 + 68] = mem[idx + _2785 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2850 + 68] = mem[_2850 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2850 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3090 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3090] = 30
                    mem[_3090 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3197 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3197 + 68] = mem[idx + _3090 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3197 + 68] = mem[_3197 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3197 + -mem[64] + 100
                _2815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2815] = 26
                mem[_2815 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2815 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3542 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3542] = 30
                    mem[_3542 + 32] = 'SafeMath: subtraction overflow'
                    _4028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4028] = 30
                    mem[_4028 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= 0:
                        return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
                    _4270 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4270 + 68] = mem[idx + _4028 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4270 + 68] = mem[_4270 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4270 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3541] = 30
                    mem[_3541 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3683 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3683 + 68] = mem[idx + _3541 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3683 + 68] = mem[_3683 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3683 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3608 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3608] = 30
                mem[_3608 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _3780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3780 + 68] = mem[idx + _3608 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3780 + 68] = mem[_3780 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3780 + -mem[64] + 100
                _4144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4144] = 30
                mem[_4144 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                _4403 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4403 + 68] = mem[idx + _4144 + 32]
                    idx = idx + 32
                    continue 
                mem[_4403 + 68] = mem[_4403 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4403 + -mem[64] + 100
            _2621 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2621] = 26
            mem[_2621 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2887 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2887] = 26
                mem[_2887 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 100 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 100 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 100 * arg1 / 100 / 100))
            _2888 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2888] = 26
            mem[_2888 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 100 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
        if 100 * arg1 / arg1 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 100 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (100 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2744 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2744] = 26
                    mem[_2744 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2744 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 100 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3474 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3474] = 30
                        mem[_3474 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                            _3529 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3529 + 68] = mem[idx + _3474 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3529 + 68] = mem[_3529 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3529 + -mem[64] + 100
                        _3767 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3767] = 30
                        mem[_3767 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
                        _4004 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4004 + 68] = mem[idx + _3767 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4004 + 68] = mem[_4004 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4004 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3473] = 30
                        mem[_3473 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3526 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3526 + 68] = mem[idx + _3473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3526 + 68] = mem[_3526 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3526 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3496] = 30
                    mem[_3496 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3595 + 68] = mem[idx + _3496 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3595 + 68] = mem[_3595 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3595 + -mem[64] + 100
                    _3870 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3870] = 30
                    mem[_3870 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                    _4129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4129 + 68] = mem[idx + _3870 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4129 + 68] = mem[_4129 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4129 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2782] = 30
                    mem[_2782 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2846 + 68] = mem[idx + _2782 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2846 + 68] = mem[_2846 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2846 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3083] = 30
                    mem[_3083 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3189 + 68] = mem[idx + _3083 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3189 + 68] = mem[_3189 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3189 + -mem[64] + 100
                _2810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2810] = 26
                mem[_2810 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2810 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3533] = 30
                    mem[_3533 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                        _3674 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3674 + 68] = mem[idx + _3533 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3674 + 68] = mem[_3674 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3674 + -mem[64] + 100
                    _4011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4011] = 30
                    mem[_4011 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
                    _4255 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4255 + 68] = mem[idx + _4011 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4255 + 68] = mem[_4255 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4255 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3532] = 30
                    mem[_3532 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3671 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3671 + 68] = mem[idx + _3532 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3671 + 68] = mem[_3671 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3671 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3598 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3598] = 30
                mem[_3598 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3770 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3770 + 68] = mem[idx + _3598 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3770 + 68] = mem[_3770 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3770 + -mem[64] + 100
                _4132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4132] = 30
                mem[_4132 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                _4389 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4389 + 68] = mem[idx + _4132 + 32]
                    idx = idx + 32
                    continue 
                mem[_4389 + 68] = mem[_4389 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4389 + -mem[64] + 100
            _2614 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2614] = 26
            mem[_2614 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2880] = 26
                mem[_2880 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 100 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * 100 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 100 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * 100 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 100 * arg1 / 100 / 100))
            _2881 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2881] = 26
            mem[_2881 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 100 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
        if 100 * arg1 / arg1 != 100:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        mem[352] = 30
        mem[384] = 'SafeMath: subtraction overflow'
        if 100 * arg1 / 100 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        if 100 * arg1 / 100 / 100 > arg1 - (100 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _2739 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2739] = 26
                mem[_2739 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2739 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3472 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3472] = 30
                        mem[_3472 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                            _3519 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3519 + 68] = mem[idx + _3472 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3519 + 68] = mem[_3519 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3519 + -mem[64] + 100
                        _3752 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3752] = 30
                        mem[_3752 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
                        _3986 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3986 + 68] = mem[idx + _3752 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3986 + 68] = mem[_3986 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3986 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3492] = 30
                    mem[_3492 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                        _3588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3588 + 68] = mem[idx + _3492 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3588 + 68] = mem[_3588 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3588 + -mem[64] + 100
                    _3848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3848] = 30
                    mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                        return ((-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                    _4111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4111 + 68] = mem[idx + _3848 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4111 + 68] = mem[_4111 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4111 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3471] = 30
                    mem[_3471 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3516 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3516 + 68] = mem[idx + _3471 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3516 + 68] = mem[_3516 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3516 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3491] = 30
                    mem[_3491 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3585 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3585 + 68] = mem[idx + _3491 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3585 + 68] = mem[_3585 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3585 + -mem[64] + 100
                    _3844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3844] = 30
                    mem[_3844 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                    _4108 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4108 + 68] = mem[idx + _3844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4108 + 68] = mem[_4108 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4108 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3515 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3515] = 30
                mem[_3515 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3651 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3651 + 68] = mem[idx + _3515 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3651 + 68] = mem[_3651 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3651 + -mem[64] + 100
                _3981 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3981] = 30
                mem[_3981 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                _4227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4227 + 68] = mem[idx + _3981 + 32]
                    idx = idx + 32
                    continue 
                mem[_4227 + 68] = mem[_4227 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4227 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2779] = 30
                mem[_2779 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2842 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2842 + 68] = mem[idx + _2779 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2842 + 68] = mem[_2842 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2842 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _3076 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3076] = 30
                mem[_3076 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _3181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3181 + 68] = mem[idx + _3076 + 32]
                    idx = idx + 32
                    continue 
                mem[_3181 + 68] = mem[_3181 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3181 + -mem[64] + 100
            _2805 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2805] = 26
            mem[_2805 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _2805 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 100 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3525 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3525] = 30
                    mem[_3525 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                        _3661 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3661 + 68] = mem[idx + _3525 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3661 + 68] = mem[_3661 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3661 + -mem[64] + 100
                    _3994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3994] = 30
                    mem[_3994 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
                    _4236 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4236 + 68] = mem[idx + _3994 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4236 + 68] = mem[_4236 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4236 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3592 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3592] = 30
                mem[_3592 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                    _3758 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3758 + 68] = mem[idx + _3592 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3758 + 68] = mem[_3758 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3758 + -mem[64] + 100
                _4119 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4119] = 30
                mem[_4119 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                    return ((-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                _4373 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4373 + 68] = mem[idx + _4119 + 32]
                    idx = idx + 32
                    continue 
                mem[_4373 + 68] = mem[_4373 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4373 + -mem[64] + 100
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                _3524 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3524] = 30
                mem[_3524 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7 / totalSupply * arg1:
                    return (stor7 / totalSupply * arg1)
                _3658 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3658 + 68] = mem[idx + _3524 + 32]
                    idx = idx + 32
                    continue 
                mem[_3658 + 68] = mem[_3658 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3658 + -mem[64] + 100
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                _3591 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3591] = 30
                mem[_3591 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3755 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3755 + 68] = mem[idx + _3591 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3755 + 68] = mem[_3755 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3755 + -mem[64] + 100
                _4115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4115] = 30
                mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
                _4370 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4370 + 68] = mem[idx + _4115 + 32]
                    idx = idx + 32
                    continue 
                mem[_4370 + 68] = mem[_4370 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4370 + -mem[64] + 100
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3657 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3657] = 30
            mem[_3657 + 32] = 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                _3852 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3852 + 68] = mem[idx + _3657 + 32]
                    idx = idx + 32
                    continue 
                mem[_3852 + 68] = mem[_3852 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3852 + -mem[64] + 100
            _4231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4231] = 30
            mem[_4231 + 32] = 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
            _4491 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4491 + 68] = mem[idx + _4231 + 32]
                idx = idx + 32
                continue 
            mem[_4491 + 68] = mem[_4491 + 70 len 30]
            revert with memory
              from mem[64]
               len _4491 + -mem[64] + 100
        _2607 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2607] = 26
        mem[_2607 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor7 / totalSupply:
            _2873 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2873] = 26
            mem[_2873 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 100 * arg1 / 100 / 100:
                    return 0
                if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    if t / s * 100 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * 100 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 100 * arg1 / 100 / 100)
                if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 100 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 100 * arg1 / 100 / 100 > -1 * t / s * 100 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * t / s * 100 * arg1 / 100 / 100) - (t / s * 100 * arg1 / 100 / 100))
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * 100 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 100 * arg1 / 100 / 100))
            if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if t / s * 100 * arg1 / 100 / 100 > (t / s * arg1) - (t / s * 100 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((t / s * arg1) - (t / s * 100 * arg1 / 100 / 100) - (t / s * 100 * arg1 / 100 / 100))
        _2874 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2874] = 26
        mem[_2874 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not 100 * arg1 / 100 / 100:
                return 0
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100)
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * stor7 / totalSupply * 100 * arg1 / 100 / 100) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 100 * arg1 / 100 / 100:
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor7 / totalSupply * arg1)
        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 100 * arg1 / 100 / 100:
            if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100) - (stor7 / totalSupply * 100 * arg1 / 100 / 100))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2774 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2774] = 26
                    mem[_2774 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2774 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3490 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3490] = 30
                    mem[_3490 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3575 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3575 + 68] = mem[idx + _3490 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3575 + 68] = mem[_3575 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3575 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _2840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2840] = 26
                    mem[_2840 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2840 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3578] = 30
                    mem[_3578 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3740 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3740 + 68] = mem[idx + _3578 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3740 + 68] = mem[_3740 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3740 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2800] = 30
                mem[_2800 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2870 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2870 + 68] = mem[idx + _2800 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2870 + 68] = mem[_2870 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2870 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _3125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3125] = 30
                mem[_3125 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _3237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3237 + 68] = mem[idx + _3125 + 32]
                    idx = idx + 32
                    continue 
                mem[_3237 + 68] = mem[_3237 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3237 + -mem[64] + 100
            _2654 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2654] = 26
            mem[_2654 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2922 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2922] = 26
                mem[_2922 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2923 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2923] = 26
            mem[_2923 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 100 * arg1 / arg1 != 100:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 100 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2769] = 26
                    mem[_2769 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2769 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 100 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3487 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3487] = 30
                        mem[_3487 + 32] = 'SafeMath: subtraction overflow'
                        _3822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3822] = 30
                        mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= 0:
                            return 0
                        _4084 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4084 + 68] = mem[idx + _3822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4084 + 68] = mem[_4084 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4084 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3486] = 30
                        mem[_3486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3570 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3570 + 68] = mem[idx + _3486 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3570 + 68] = mem[_3570 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3570 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3510] = 30
                    mem[_3510 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3637 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3637 + 68] = mem[idx + _3510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3637 + 68] = mem[_3637 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3637 + -mem[64] + 100
                    _3954 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3954] = 30
                    mem[_3954 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4199 + 68] = mem[idx + _3954 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4199 + 68] = mem[_4199 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4199 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2797] = 30
                    mem[_2797 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2866 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2866 + 68] = mem[idx + _2797 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2866 + 68] = mem[_2866 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2866 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3118] = 30
                    mem[_3118 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3229 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3229 + 68] = mem[idx + _3118 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3229 + 68] = mem[_3229 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3229 + -mem[64] + 100
                _2835 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2835] = 26
                mem[_2835 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2835 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3574 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3574] = 30
                    mem[_3574 + 32] = 'SafeMath: subtraction overflow'
                    _4091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4091] = 30
                    mem[_4091 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= 0:
                        return 0
                    _4338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4338 + 68] = mem[idx + _4091 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4338 + 68] = mem[_4338 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4338 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3573 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3573] = 30
                    mem[_3573 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3733 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3733 + 68] = mem[idx + _3573 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3733 + 68] = mem[_3733 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3733 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3640] = 30
                mem[_3640 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _3823 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3823 + 68] = mem[idx + _3640 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3823 + 68] = mem[_3823 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3823 + -mem[64] + 100
                _4202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4202] = 30
                mem[_4202 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return (stor7 / totalSupply * arg1)
                _4464 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4464 + 68] = mem[idx + _4202 + 32]
                    idx = idx + 32
                    continue 
                mem[_4464 + 68] = mem[_4464 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4464 + -mem[64] + 100
            _2647 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2647] = 26
            mem[_2647 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2915] = 26
                mem[_2915 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 100 * arg1 / 100 / 100:
                        if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 100 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2916 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2916] = 26
            mem[_2916 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 100 * arg1 / 100 / 100:
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        if 100 * arg1 / arg1 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 100 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (100 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2764] = 26
                    mem[_2764 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2764 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 100 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3485] = 30
                        mem[_3485 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                            _3561 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3561 + 68] = mem[idx + _3485 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3561 + 68] = mem[_3561 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3561 + -mem[64] + 100
                        _3810 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3810] = 30
                        mem[_3810 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                            return 0
                        _4067 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4067 + 68] = mem[idx + _3810 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4067 + 68] = mem[_4067 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4067 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3484 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3484] = 30
                        mem[_3484 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3558 + 68] = mem[idx + _3484 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3558 + 68] = mem[_3558 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3558 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3508 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3508] = 30
                    mem[_3508 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3627 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3627 + 68] = mem[idx + _3508 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3627 + 68] = mem[_3627 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3627 + -mem[64] + 100
                    _3940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3940] = 30
                    mem[_3940 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4187 + 68] = mem[idx + _3940 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4187 + 68] = mem[_4187 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4187 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2794] = 30
                    mem[_2794 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2862 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2862 + 68] = mem[idx + _2794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2862 + 68] = mem[_2862 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2862 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3111 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3111] = 30
                    mem[_3111 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3221 + 68] = mem[idx + _3111 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3221 + 68] = mem[_3221 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3221 + -mem[64] + 100
                _2830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2830] = 26
                mem[_2830 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2830 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3565 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3565] = 30
                    mem[_3565 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                        _3724 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3724 + 68] = mem[idx + _3565 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3724 + 68] = mem[_3724 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3724 + -mem[64] + 100
                    _4074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4074] = 30
                    mem[_4074 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                        return 0
                    _4323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4323 + 68] = mem[idx + _4074 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4323 + 68] = mem[_4323 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4323 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3564 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3564] = 30
                    mem[_3564 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3721 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3721 + 68] = mem[idx + _3564 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3721 + 68] = mem[_3721 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3721 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3630 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3630] = 30
                mem[_3630 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3813 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3813 + 68] = mem[idx + _3630 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3813 + 68] = mem[_3813 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3813 + -mem[64] + 100
                _4190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4190] = 30
                mem[_4190 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _4450 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4450 + 68] = mem[idx + _4190 + 32]
                    idx = idx + 32
                    continue 
                mem[_4450 + 68] = mem[_4450 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4450 + -mem[64] + 100
            _2640 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2640] = 26
            mem[_2640 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2908] = 26
                mem[_2908 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 100 * arg1 / 100 / 100:
                        if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 100 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 100 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 100 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2909 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2909] = 26
            mem[_2909 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 100 * arg1 / 100 / 100:
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 100 * arg1 / arg1 != 100:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 100 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 100 * arg1 / 100 / 100 > arg1 - (100 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2759] = 26
                    mem[_2759 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2759 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 100 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 100 * arg1 / 100 / 100:
                            _3483 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3483] = 30
                            mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                                _3551 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3551 + 68] = mem[idx + _3483 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3551 + 68] = mem[_3551 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3551 + -mem[64] + 100
                            _3795 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3795] = 30
                            mem[_3795 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                                return 0
                            _4049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4049 + 68] = mem[idx + _3795 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4049 + 68] = mem[_4049 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4049 + -mem[64] + 100
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3504] = 30
                        mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                            _3620 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3620 + 68] = mem[idx + _3504 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3620 + 68] = mem[_3620 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3620 + -mem[64] + 100
                        _3918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3918] = 30
                        mem[_3918 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                            return 0
                        _4169 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4169 + 68] = mem[idx + _3918 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4169 + 68] = mem[_4169 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4169 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3482] = 30
                        mem[_3482 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3548 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3548 + 68] = mem[idx + _3482 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3548 + 68] = mem[_3548 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3548 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3503] = 30
                        mem[_3503 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                            _3617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3617 + 68] = mem[idx + _3503 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3617 + 68] = mem[_3617 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3617 + -mem[64] + 100
                        _3914 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3914] = 30
                        mem[_3914 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                            return (stor7 / totalSupply * arg1)
                        _4166 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4166 + 68] = mem[idx + _3914 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4166 + 68] = mem[_4166 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4166 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3547] = 30
                    mem[_3547 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3701 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3701 + 68] = mem[idx + _3547 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3701 + 68] = mem[_3701 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3701 + -mem[64] + 100
                    _4044 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4044] = 30
                    mem[_4044 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4295 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4295 + 68] = mem[idx + _4044 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4295 + 68] = mem[_4295 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4295 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2791 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2791] = 30
                    mem[_2791 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2858 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2858 + 68] = mem[idx + _2791 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2858 + 68] = mem[_2858 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2858 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3104] = 30
                    mem[_3104 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3213 + 68] = mem[idx + _3104 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3213 + 68] = mem[_3213 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3213 + -mem[64] + 100
                _2825 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2825] = 26
                mem[_2825 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2825 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 100 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        _3557 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3557] = 30
                        mem[_3557 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                            _3711 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3711 + 68] = mem[idx + _3557 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3711 + 68] = mem[_3711 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3711 + -mem[64] + 100
                        _4057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4057] = 30
                        mem[_4057 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                            return 0
                        _4304 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4304 + 68] = mem[idx + _4057 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4304 + 68] = mem[_4304 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4304 + -mem[64] + 100
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3624] = 30
                    mem[_3624 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                        _3801 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3801 + 68] = mem[idx + _3624 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3801 + 68] = mem[_3801 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3801 + -mem[64] + 100
                    _4177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4177] = 30
                    mem[_4177 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                        return 0
                    _4434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4434 + 68] = mem[idx + _4177 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4434 + 68] = mem[_4434 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4434 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3556 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3556] = 30
                    mem[_3556 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3708 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3708 + 68] = mem[idx + _3556 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3708 + 68] = mem[_3708 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3708 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    _3623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3623] = 30
                    mem[_3623 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3798 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3798 + 68] = mem[idx + _3623 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3798 + 68] = mem[_3798 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3798 + -mem[64] + 100
                    _4173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4173] = 30
                    mem[_4173 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4431 + 68] = mem[idx + _4173 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4431 + 68] = mem[_4431 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4431 + -mem[64] + 100
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3707] = 30
                mem[_3707 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3922 + 68] = mem[idx + _3707 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3922 + 68] = mem[_3922 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3922 + -mem[64] + 100
                _4299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4299] = 30
                mem[_4299 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _4541 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4541 + 68] = mem[idx + _4299 + 32]
                    idx = idx + 32
                    continue 
                mem[_4541 + 68] = mem[_4541 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4541 + -mem[64] + 100
            _2633 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2633] = 26
            mem[_2633 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2901 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2901] = 26
                mem[_2901 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 100 * arg1 / 100 / 100:
                        if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 100 * arg1 / 100 / 100:
                            if t / s * 100 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * t / s * 100 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * 100 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 100 * arg1 / 100 / 100 > -1 * t / s * 100 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (t / s * arg1) - (t / s * 100 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 100 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * 100 * arg1 / 100 / 100 > (t / s * arg1) - (t / s * 100 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2902 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2902] = 26
            mem[_2902 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 100 * arg1 / 100 / 100:
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 100 * arg1 / 100 / 100:
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 100 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * 100 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                else:
                    return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 100 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 100 * arg1 / 100 / 100:
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 / 100 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 100 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 100 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (stor7 / totalSupply * arg1)
}



}

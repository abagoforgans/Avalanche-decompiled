contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Tup Finance'

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
                        _3018 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3018] = 26
                        mem[_3018 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3018 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3754 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3754] = 30
                        mem[_3754 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3832 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3832 + 68] = mem[idx + _3754 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3832 + 68] = mem[_3832 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3832 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _3084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3084] = 26
                        mem[_3084 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3084 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3835 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3835] = 30
                        mem[_3835 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _4002 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4002 + 68] = mem[idx + _3835 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4002 + 68] = mem[_4002 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4002 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3052 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3052] = 30
                    mem[_3052 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3118 + 68] = mem[idx + _3052 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3118 + 68] = mem[_3118 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3118 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3361] = 30
                    mem[_3361 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3469 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3469 + 68] = mem[idx + _3361 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3469 + 68] = mem[_3469 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3469 + -mem[64] + 100
                _2892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2892] = 26
                mem[_2892 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor7 / totalSupply:
                    _3158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3158] = 26
                    mem[_3158 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _3159 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3159] = 26
                mem[_3159 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if 200 * arg1 / arg1 != 200:
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
            if 200 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3013] = 26
                    mem[_3013 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3013 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 200 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3751] = 30
                        mem[_3751 + 32] = 'SafeMath: subtraction overflow'
                        _4100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4100] = 30
                        mem[_4100 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                            return (-1 * stor7 / totalSupply * 200 * arg1 / 100 / 100)
                        _4367 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4367 + 68] = mem[idx + _4100 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4367 + 68] = mem[_4367 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4367 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3750 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3750] = 30
                        mem[_3750 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3827 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3827 + 68] = mem[idx + _3750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3827 + 68] = mem[_3827 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3827 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3779] = 30
                    mem[_3779 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3907 + 68] = mem[idx + _3779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3907 + 68] = mem[_3907 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3907 + -mem[64] + 100
                    _4215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4215] = 30
                    mem[_4215 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
                    _4505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4505 + 68] = mem[idx + _4215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4505 + 68] = mem[_4505 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4505 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3049] = 30
                    mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3114 + 68] = mem[idx + _3049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3114 + 68] = mem[_3114 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3114 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3354] = 30
                    mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3461 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3461 + 68] = mem[idx + _3354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3461 + 68] = mem[_3461 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3461 + -mem[64] + 100
                _3079 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3079] = 26
                mem[_3079 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3079 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 200 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3831] = 30
                    mem[_3831 + 32] = 'SafeMath: subtraction overflow'
                    _4374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4374] = 30
                    mem[_4374 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                        return (-1 * stor7 / totalSupply * 200 * arg1 / 100 / 100)
                    _4649 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4649 + 68] = mem[idx + _4374 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4649 + 68] = mem[_4649 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4649 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    _3830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3830] = 30
                    mem[_3830 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3995 + 68] = mem[idx + _3830 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3995 + 68] = mem[_3995 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3995 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3910 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3910] = 30
                mem[_3910 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _4101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4101 + 68] = mem[idx + _3910 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4101 + 68] = mem[_4101 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4101 + -mem[64] + 100
                _4508 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4508] = 30
                mem[_4508 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
                _4803 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4803 + 68] = mem[idx + _4508 + 32]
                    idx = idx + 32
                    continue 
                mem[_4803 + 68] = mem[_4803 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4803 + -mem[64] + 100
            _2885 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2885] = 26
            mem[_2885 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3151] = 26
                mem[_3151 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 200 * arg1 / 100 / 100:
                        return 0
                    if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 200 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 200 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 200 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 200 * arg1 / 100 / 100))
            _3152 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3152] = 26
            mem[_3152 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 200 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * 200 * arg1 / 100 / 100)
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 200 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
        if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3008] = 26
                    mem[_3008 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3008 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3749 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3749] = 30
                        mem[_3749 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _3818 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3818 + 68] = mem[idx + _3749 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3818 + 68] = mem[_3818 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3818 + -mem[64] + 100
                        _4088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4088] = 30
                        mem[_4088 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                        _4350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4350 + 68] = mem[idx + _4088 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4350 + 68] = mem[_4350 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4350 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3748 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3748] = 30
                        mem[_3748 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3815 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3815 + 68] = mem[idx + _3748 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3815 + 68] = mem[_3815 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3815 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3777] = 30
                    mem[_3777 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3897 + 68] = mem[idx + _3777 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3897 + 68] = mem[_3897 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3897 + -mem[64] + 100
                    _4201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4201] = 30
                    mem[_4201 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                    _4493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4493 + 68] = mem[idx + _4201 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4493 + 68] = mem[_4493 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4493 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3046 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3046] = 30
                    mem[_3046 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3110 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3110 + 68] = mem[idx + _3046 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3110 + 68] = mem[_3110 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3110 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3347] = 30
                    mem[_3347 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3453 + 68] = mem[idx + _3347 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3453 + 68] = mem[_3453 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3453 + -mem[64] + 100
                _3074 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3074] = 26
                mem[_3074 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3074 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3822] = 30
                    mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _3986 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3986 + 68] = mem[idx + _3822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3986 + 68] = mem[_3986 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3986 + -mem[64] + 100
                    _4357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4357] = 30
                    mem[_4357 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                    _4634 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4634 + 68] = mem[idx + _4357 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4634 + 68] = mem[_4634 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4634 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3821] = 30
                    mem[_3821 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3983 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3983 + 68] = mem[idx + _3821 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3983 + 68] = mem[_3983 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3983 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3900] = 30
                mem[_3900 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4091 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4091 + 68] = mem[idx + _3900 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4091 + 68] = mem[_4091 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4091 + -mem[64] + 100
                _4496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4496] = 30
                mem[_4496 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                _4789 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4789 + 68] = mem[idx + _4496 + 32]
                    idx = idx + 32
                    continue 
                mem[_4789 + 68] = mem[_4789 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4789 + -mem[64] + 100
            _2878 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2878] = 26
            mem[_2878 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3144] = 26
                mem[_3144 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 500 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 500 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 500 * arg1 / 100 / 100))
            _3145 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3145] = 26
            mem[_3145 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
        if 200 * arg1 / arg1 != 200:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        mem[352] = 30
        mem[384] = 'SafeMath: subtraction overflow'
        if 500 * arg1 / 100 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        if 200 * arg1 / 100 / 100 > arg1 - (500 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _3003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3003] = 26
                mem[_3003 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3003 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        if not 200 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3745 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3745] = 30
                        mem[_3745 + 32] = 'SafeMath: subtraction overflow'
                        _4072 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4072] = 30
                        mem[_4072 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                            return (-1 * stor7 / totalSupply * 200 * arg1 / 100 / 100)
                        _4330 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4330 + 68] = mem[idx + _4072 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4330 + 68] = mem[_4330 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4330 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3744 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3744] = 30
                        mem[_3744 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _3807 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3807 + 68] = mem[idx + _3744 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3807 + 68] = mem[_3807 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3807 + -mem[64] + 100
                        _4069 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4069] = 30
                        mem[_4069 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                        _4327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4327 + 68] = mem[idx + _4069 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4327 + 68] = mem[_4327 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4327 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3771] = 30
                    mem[_3771 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _3889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3889 + 68] = mem[idx + _3771 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3889 + 68] = mem[_3889 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3889 + -mem[64] + 100
                    _4179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4179] = 30
                    mem[_4179 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return ((-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
                    _4472 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4472 + 68] = mem[idx + _4179 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4472 + 68] = mem[_4472 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4472 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if not 200 * arg1 / 100 / 100:
                        _3743 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3743] = 30
                        mem[_3743 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3804 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3804 + 68] = mem[idx + _3743 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3804 + 68] = mem[_3804 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3804 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3770 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3770] = 30
                    mem[_3770 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3886 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3886 + 68] = mem[idx + _3770 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3886 + 68] = mem[_3886 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3886 + -mem[64] + 100
                    _4175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4175] = 30
                    mem[_4175 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
                    _4469 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4469 + 68] = mem[idx + _4175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4469 + 68] = mem[_4469 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4469 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    _3769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3769] = 30
                    mem[_3769 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3883 + 68] = mem[idx + _3769 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3883 + 68] = mem[_3883 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3883 + -mem[64] + 100
                    _4172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4172] = 30
                    mem[_4172 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                    _4466 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4466 + 68] = mem[idx + _4172 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4466 + 68] = mem[_4466 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4466 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3803] = 30
                mem[_3803 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3963 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3963 + 68] = mem[idx + _3803 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3963 + 68] = mem[_3963 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3963 + -mem[64] + 100
                _4321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4321] = 30
                mem[_4321 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
                _4601 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4601 + 68] = mem[idx + _4321 + 32]
                    idx = idx + 32
                    continue 
                mem[_4601 + 68] = mem[_4601 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4601 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _3043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3043] = 30
                mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _3106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3106 + 68] = mem[idx + _3043 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3106 + 68] = mem[_3106 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3106 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _3340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3340] = 30
                mem[_3340 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _3445 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3445 + 68] = mem[idx + _3340 + 32]
                    idx = idx + 32
                    continue 
                mem[_3445 + 68] = mem[_3445 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3445 + -mem[64] + 100
            _3069 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3069] = 26
            mem[_3069 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3069 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    if not 200 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3814 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3814] = 30
                    mem[_3814 + 32] = 'SafeMath: subtraction overflow'
                    _4342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4342] = 30
                    mem[_4342 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                        return (-1 * stor7 / totalSupply * 200 * arg1 / 100 / 100)
                    _4615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4615 + 68] = mem[idx + _4342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4615 + 68] = mem[_4615 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4615 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    _3813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3813] = 30
                    mem[_3813 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _3973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3973 + 68] = mem[idx + _3813 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3973 + 68] = mem[_3973 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3973 + -mem[64] + 100
                    _4339 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4339] = 30
                    mem[_4339 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                    _4612 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4612 + 68] = mem[idx + _4339 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4612 + 68] = mem[_4612 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4612 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3894] = 30
                mem[_3894 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                    _4079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4079 + 68] = mem[idx + _3894 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4079 + 68] = mem[_4079 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4079 + -mem[64] + 100
                _4483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4483] = 30
                mem[_4483 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                    return ((-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
                _4773 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4773 + 68] = mem[idx + _4483 + 32]
                    idx = idx + 32
                    continue 
                mem[_4773 + 68] = mem[_4773 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4773 + -mem[64] + 100
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if not 200 * arg1 / 100 / 100:
                    _3812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3812] = 30
                    mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3970 + 68] = mem[idx + _3812 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3970 + 68] = mem[_3970 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3970 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3893] = 30
                mem[_3893 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _4076 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4076 + 68] = mem[idx + _3893 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4076 + 68] = mem[_4076 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4076 + -mem[64] + 100
                _4479 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4479] = 30
                mem[_4479 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
                _4770 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4770 + 68] = mem[idx + _4479 + 32]
                    idx = idx + 32
                    continue 
                mem[_4770 + 68] = mem[_4770 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4770 + -mem[64] + 100
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 200 * arg1 / 100 / 100:
                _3892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3892] = 30
                mem[_3892 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4073 + 68] = mem[idx + _3892 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4073 + 68] = mem[_4073 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4073 + -mem[64] + 100
                _4476 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4476] = 30
                mem[_4476 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                _4767 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4767 + 68] = mem[idx + _4476 + 32]
                    idx = idx + 32
                    continue 
                mem[_4767 + 68] = mem[_4767 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4767 + -mem[64] + 100
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3969 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3969] = 30
            mem[_3969 + 32] = 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                _4183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4183 + 68] = mem[idx + _3969 + 32]
                    idx = idx + 32
                    continue 
                mem[_4183 + 68] = mem[_4183 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4183 + -mem[64] + 100
            _4606 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4606] = 30
            mem[_4606 + 32] = 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
            _4914 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4914 + 68] = mem[idx + _4606 + 32]
                idx = idx + 32
                continue 
            mem[_4914 + 68] = mem[_4914 + 70 len 30]
            revert with memory
              from mem[64]
               len _4914 + -mem[64] + 100
        _2871 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2871] = 26
        mem[_2871 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor7 / totalSupply:
            _3137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3137] = 26
            mem[_3137 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    if not 200 * arg1 / 100 / 100:
                        return 0
                    if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 200 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 200 * arg1 / 100 / 100)
                if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    if t / s * 500 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 500 * arg1 / 100 / 100)
                if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 500 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 200 * arg1 / 100 / 100 > -1 * t / s * 500 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * t / s * 500 * arg1 / 100 / 100) - (t / s * 200 * arg1 / 100 / 100))
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if not 200 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 200 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 200 * arg1 / 100 / 100))
            if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 200 * arg1 / 100 / 100:
                if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 500 * arg1 / 100 / 100))
            if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if t / s * 200 * arg1 / 100 / 100 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((t / s * arg1) - (t / s * 500 * arg1 / 100 / 100) - (t / s * 200 * arg1 / 100 / 100))
        _3138 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3138] = 26
        mem[_3138 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not 500 * arg1 / 100 / 100:
                if not 200 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * 200 * arg1 / 100 / 100)
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 200 * arg1 / 100 / 100:
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 500 * arg1 / 100 / 100:
            if not 200 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 200 * arg1 / 100 / 100:
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100) - (stor7 / totalSupply * 200 * arg1 / 100 / 100))
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
                    _3038 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3038] = 26
                    mem[_3038 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3038 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3768] = 30
                    mem[_3768 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3869 + 68] = mem[idx + _3768 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3869 + 68] = mem[_3869 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3869 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _3104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3104] = 26
                    mem[_3104 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3104 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3872] = 30
                    mem[_3872 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4054 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4054 + 68] = mem[idx + _3872 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4054 + 68] = mem[_4054 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4054 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _3064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3064] = 30
                mem[_3064 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _3134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3134 + 68] = mem[idx + _3064 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3134 + 68] = mem[_3134 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3134 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _3389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3389] = 30
                mem[_3389 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _3501 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3501 + 68] = mem[idx + _3389 + 32]
                    idx = idx + 32
                    continue 
                mem[_3501 + 68] = mem[_3501 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3501 + -mem[64] + 100
            _2918 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2918] = 26
            mem[_2918 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3186] = 26
                mem[_3186 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3187] = 26
            mem[_3187 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 200 * arg1 / arg1 != 200:
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
            if 200 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3033] = 26
                    mem[_3033 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3033 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 200 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3765 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3765] = 30
                        mem[_3765 + 32] = 'SafeMath: subtraction overflow'
                        _4150 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4150] = 30
                        mem[_4150 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                            return 0
                        _4442 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4442 + 68] = mem[idx + _4150 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4442 + 68] = mem[_4442 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4442 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3764] = 30
                        mem[_3764 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3864 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3864 + 68] = mem[idx + _3764 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3864 + 68] = mem[_3864 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3864 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3794] = 30
                    mem[_3794 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3947 + 68] = mem[idx + _3794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3947 + 68] = mem[_3947 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3947 + -mem[64] + 100
                    _4288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4288] = 30
                    mem[_4288 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4569 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4569 + 68] = mem[idx + _4288 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4569 + 68] = mem[_4569 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4569 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3061] = 30
                    mem[_3061 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3130 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3130 + 68] = mem[idx + _3061 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3130 + 68] = mem[_3130 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3130 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3382] = 30
                    mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3493 + 68] = mem[idx + _3382 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3493 + 68] = mem[_3493 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3493 + -mem[64] + 100
                _3099 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3099] = 26
                mem[_3099 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3099 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 200 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3868] = 30
                    mem[_3868 + 32] = 'SafeMath: subtraction overflow'
                    _4449 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4449] = 30
                    mem[_4449 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                        return 0
                    _4726 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4726 + 68] = mem[idx + _4449 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4726 + 68] = mem[_4726 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4726 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    _3867 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3867] = 30
                    mem[_3867 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4047 + 68] = mem[idx + _3867 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4047 + 68] = mem[_4047 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4047 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3950 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3950] = 30
                mem[_3950 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _4151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4151 + 68] = mem[idx + _3950 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4151 + 68] = mem[_4151 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4151 + -mem[64] + 100
                _4572 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4572] = 30
                mem[_4572 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return (stor7 / totalSupply * arg1)
                _4876 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4876 + 68] = mem[idx + _4572 + 32]
                    idx = idx + 32
                    continue 
                mem[_4876 + 68] = mem[_4876 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4876 + -mem[64] + 100
            _2911 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2911] = 26
            mem[_2911 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3179] = 26
                mem[_3179 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 200 * arg1 / 100 / 100:
                        if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 200 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 200 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3180] = 26
            mem[_3180 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 200 * arg1 / 100 / 100:
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 200 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3028] = 26
                    mem[_3028 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3028 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3763] = 30
                        mem[_3763 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _3855 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3855 + 68] = mem[idx + _3763 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3855 + 68] = mem[_3855 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3855 + -mem[64] + 100
                        _4138 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4138] = 30
                        mem[_4138 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return 0
                        _4425 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4425 + 68] = mem[idx + _4138 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4425 + 68] = mem[_4425 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4425 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3762 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3762] = 30
                        mem[_3762 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3852 + 68] = mem[idx + _3762 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3852 + 68] = mem[_3852 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3852 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3792] = 30
                    mem[_3792 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3937 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3937 + 68] = mem[idx + _3792 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3937 + 68] = mem[_3937 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3937 + -mem[64] + 100
                    _4274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4274] = 30
                    mem[_4274 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4557 + 68] = mem[idx + _4274 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4557 + 68] = mem[_4557 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4557 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3058] = 30
                    mem[_3058 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3126 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3126 + 68] = mem[idx + _3058 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3126 + 68] = mem[_3126 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3126 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3375] = 30
                    mem[_3375 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3485 + 68] = mem[idx + _3375 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3485 + 68] = mem[_3485 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3485 + -mem[64] + 100
                _3094 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3094] = 26
                mem[_3094 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3094 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3859] = 30
                    mem[_3859 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _4038 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4038 + 68] = mem[idx + _3859 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4038 + 68] = mem[_4038 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4038 + -mem[64] + 100
                    _4432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4432] = 30
                    mem[_4432 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return 0
                    _4711 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4711 + 68] = mem[idx + _4432 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4711 + 68] = mem[_4711 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4711 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3858] = 30
                    mem[_3858 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4035 + 68] = mem[idx + _3858 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4035 + 68] = mem[_4035 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4035 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3940] = 30
                mem[_3940 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4141 + 68] = mem[idx + _3940 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4141 + 68] = mem[_4141 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4141 + -mem[64] + 100
                _4560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4560] = 30
                mem[_4560 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _4862 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4862 + 68] = mem[idx + _4560 + 32]
                    idx = idx + 32
                    continue 
                mem[_4862 + 68] = mem[_4862 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4862 + -mem[64] + 100
            _2904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2904] = 26
            mem[_2904 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3172] = 26
                mem[_3172 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 500 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3173] = 26
            mem[_3173 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 500 * arg1 / 100 / 100:
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 200 * arg1 / arg1 != 200:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 200 * arg1 / 100 / 100 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3023] = 26
                    mem[_3023 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3023 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            if not 200 * arg1 / 100 / 100:
                                return 0
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3759 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3759] = 30
                            mem[_3759 + 32] = 'SafeMath: subtraction overflow'
                            _4122 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4122] = 30
                            mem[_4122 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                                return 0
                            _4405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4405 + 68] = mem[idx + _4122 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4405 + 68] = mem[_4405 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4405 + -mem[64] + 100
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 200 * arg1 / 100 / 100:
                            _3758 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3758] = 30
                            mem[_3758 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                                _3844 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3844 + 68] = mem[idx + _3758 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3844 + 68] = mem[_3844 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3844 + -mem[64] + 100
                            _4119 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4119] = 30
                            mem[_4119 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                                return 0
                            _4402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4402 + 68] = mem[idx + _4119 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4402 + 68] = mem[_4402 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4402 + -mem[64] + 100
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3786 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3786] = 30
                        mem[_3786 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _3929 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3929 + 68] = mem[idx + _3786 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3929 + 68] = mem[_3929 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3929 + -mem[64] + 100
                        _4252 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4252] = 30
                        mem[_4252 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return 0
                        _4536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4536 + 68] = mem[idx + _4252 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4536 + 68] = mem[_4536 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4536 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if not 200 * arg1 / 100 / 100:
                            _3757 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3757] = 30
                            mem[_3757 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7 / totalSupply * arg1:
                                return (stor7 / totalSupply * arg1)
                            _3841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3841 + 68] = mem[idx + _3757 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3841 + 68] = mem[_3841 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3841 + -mem[64] + 100
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3785] = 30
                        mem[_3785 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7 / totalSupply * arg1:
                            _3926 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3926 + 68] = mem[idx + _3785 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3926 + 68] = mem[_3926 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3926 + -mem[64] + 100
                        _4248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4248] = 30
                        mem[_4248 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _4533 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4533 + 68] = mem[idx + _4248 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4533 + 68] = mem[_4533 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4533 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3784 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3784] = 30
                        mem[_3784 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                            _3923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3923 + 68] = mem[idx + _3784 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3923 + 68] = mem[_3923 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3923 + -mem[64] + 100
                        _4245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4245] = 30
                        mem[_4245 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                            return (stor7 / totalSupply * arg1)
                        _4530 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4530 + 68] = mem[idx + _4245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4530 + 68] = mem[_4530 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4530 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3840] = 30
                    mem[_3840 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _4015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4015 + 68] = mem[idx + _3840 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4015 + 68] = mem[_4015 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4015 + -mem[64] + 100
                    _4396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4396] = 30
                    mem[_4396 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4678 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4678 + 68] = mem[idx + _4396 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4678 + 68] = mem[_4678 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4678 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3055] = 30
                    mem[_3055 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3122 + 68] = mem[idx + _3055 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3122 + 68] = mem[_3122 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3122 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3368] = 30
                    mem[_3368 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3477 + 68] = mem[idx + _3368 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3477 + 68] = mem[_3477 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3477 + -mem[64] + 100
                _3089 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3089] = 26
                mem[_3089 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3089 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        if not 200 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3851] = 30
                        mem[_3851 + 32] = 'SafeMath: subtraction overflow'
                        _4417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4417] = 30
                        mem[_4417 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= 0:
                            return 0
                        _4692 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4692 + 68] = mem[idx + _4417 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4692 + 68] = mem[_4692 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4692 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3850] = 30
                        mem[_3850 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _4025 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4025 + 68] = mem[idx + _3850 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4025 + 68] = mem[_4025 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4025 + -mem[64] + 100
                        _4414 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4414] = 30
                        mem[_4414 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return 0
                        _4689 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4689 + 68] = mem[idx + _4414 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4689 + 68] = mem[_4689 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4689 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3934] = 30
                    mem[_3934 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _4129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4129 + 68] = mem[idx + _3934 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4129 + 68] = mem[_4129 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4129 + -mem[64] + 100
                    _4547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4547] = 30
                    mem[_4547 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return 0
                    _4846 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4846 + 68] = mem[idx + _4547 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4846 + 68] = mem[_4846 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4846 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if not 200 * arg1 / 100 / 100:
                        _3849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3849] = 30
                        mem[_3849 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _4022 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4022 + 68] = mem[idx + _3849 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4022 + 68] = mem[_4022 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4022 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3933] = 30
                    mem[_3933 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _4126 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4126 + 68] = mem[idx + _3933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4126 + 68] = mem[_4126 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4126 + -mem[64] + 100
                    _4543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4543] = 30
                    mem[_4543 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4843 + 68] = mem[idx + _4543 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4843 + 68] = mem[_4843 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4843 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    _3932 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3932] = 30
                    mem[_3932 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _4123 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4123 + 68] = mem[idx + _3932 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4123 + 68] = mem[_4123 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4123 + -mem[64] + 100
                    _4540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4540] = 30
                    mem[_4540 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4840 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4840 + 68] = mem[idx + _4540 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4840 + 68] = mem[_4840 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4840 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4021] = 30
                mem[_4021 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4256 + 68] = mem[idx + _4021 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4256 + 68] = mem[_4256 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4256 + -mem[64] + 100
                _4683 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4683] = 30
                mem[_4683 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _4976 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4976 + 68] = mem[idx + _4683 + 32]
                    idx = idx + 32
                    continue 
                mem[_4976 + 68] = mem[_4976 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4976 + -mem[64] + 100
            _2897 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2897] = 26
            mem[_2897 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3165] = 26
                mem[_3165 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        if 200 * arg1 / 100 / 100:
                            if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * 200 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 200 * arg1 / 100 / 100:
                            if t / s * 500 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * 500 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 200 * arg1 / 100 / 100 > -1 * t / s * 500 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if not 200 * arg1 / 100 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * 200 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * 200 * arg1 / 100 / 100 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3166] = 26
            mem[_3166 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    if 200 * arg1 / 100 / 100:
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if not 200 * arg1 / 100 / 100:
                    if 0 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (stor7 / totalSupply * arg1)
}

function deliver(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 4
    if stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e4578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
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
                    _2816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2816] = 26
                    mem[_2816 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2816 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        _3168 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3168] = 30
                        mem[_3168 + 32] = 'SafeMath: subtraction overflow'
                        _3323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3323] = 30
                        mem[_3323 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3816 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3816] = 30
                        mem[_3816 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3941 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3941 + 68] = mem[idx + _3816 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3941 + 68] = mem[_3941 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3941 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4211 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4211] = 30
                        mem[_4211 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4426 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4426 + 68] = mem[idx + _4211 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4426 + 68] = mem[_4426 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4426 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3182 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3182] = 30
                    mem[_3182 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3231 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3231 + 68] = mem[idx + _3182 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3231 + 68] = mem[_3231 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3231 + -mem[64] + 100
                    _3374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3374] = 30
                    mem[_3374 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3884] = 30
                    mem[_3884 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4021 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4021 + 68] = mem[idx + _3884 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4021 + 68] = mem[_4021 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4021 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4310 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4310] = 30
                    mem[_4310 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4543 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4543 + 68] = mem[idx + _4310 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4543 + 68] = mem[_4543 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4543 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2830] = 30
                    mem[_2830 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2864 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2864 + 68] = mem[idx + _2830 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2864 + 68] = mem[_2864 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2864 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3047 + 68] = mem[idx + _2991 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3047 + 68] = mem[_3047 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3047 + -mem[64] + 100
                _2850 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2850] = 26
                mem[_2850 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2850 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    _3197 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3197] = 30
                    mem[_3197 + 32] = 'SafeMath: subtraction overflow'
                    _3449 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3449] = 30
                    mem[_3449 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3945] = 30
                    mem[_3945 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4118 + 68] = mem[idx + _3945 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4118 + 68] = mem[_4118 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4118 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4431 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4431] = 30
                    mem[_4431 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4666 + 68] = mem[idx + _4431 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4666 + 68] = mem[_4666 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4666 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3234] = 30
                mem[_3234 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _3324 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3324 + 68] = mem[idx + _3234 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3324 + 68] = mem[_3324 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3324 + -mem[64] + 100
                _3522 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3522] = 30
                mem[_3522 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _4024 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4024] = 30
                mem[_4024 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                    _4214 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4214 + 68] = mem[idx + _4024 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4214 + 68] = mem[_4214 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4214 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                _4546 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4546] = 30
                mem[_4546 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 <= stor7:
                    stor7 += -1 * stor7 / totalSupply * arg1
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4793 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4793 + 68] = mem[idx + _4546 + 32]
                    idx = idx + 32
                    continue 
                mem[_4793 + 68] = mem[_4793 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4793 + -mem[64] + 100
            _2755 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2755] = 26
            mem[_2755 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2888] = 26
                mem[_2888 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * t / s * arg1
                    if t / s * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * t / s * arg1
            else:
                _2889 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2889] = 26
                mem[_2889 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    if stor7 / totalSupply * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * stor7 / totalSupply * arg1
        else:
            if 200 * arg1 / arg1 != 200:
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
            if 200 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2811] = 26
                    mem[_2811 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2811 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 200 * arg1 / 100 / 100:
                            _3167 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3167] = 30
                            mem[_3167 + 32] = 'SafeMath: subtraction overflow'
                            _3316 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3316] = 30
                            mem[_3316 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3813 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3813] = 30
                            mem[_3813 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3932 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3932 + 68] = mem[idx + _3813 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3932 + 68] = mem[_3932 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3932 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4198 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4198] = 30
                            mem[_4198 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if arg1 + totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4409 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4409 + 68] = mem[idx + _4198 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4409 + 68] = mem[_4409 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4409 + -mem[64] + 100
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3179 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3179] = 30
                        mem[_3179 + 32] = 'SafeMath: subtraction overflow'
                        _3370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3370] = 30
                        mem[_3370 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                            _3514 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3514 + 68] = mem[idx + _3370 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3514 + 68] = mem[_3514 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3514 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3879 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3879] = 30
                        mem[_3879 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _4012 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4012 + 68] = mem[idx + _3879 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4012 + 68] = mem[_4012 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4012 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4295 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4295] = 30
                        mem[_4295 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4527 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4527 + 68] = mem[idx + _4295 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4527 + 68] = mem[_4527 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4527 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3178] = 30
                        mem[_3178 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7 / totalSupply * arg1:
                            _3226 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3226 + 68] = mem[idx + _3178 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3226 + 68] = mem[_3226 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3226 + -mem[64] + 100
                        _3367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3367] = 30
                        mem[_3367 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3878 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3878] = 30
                        mem[_3878 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                            _4009 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4009 + 68] = mem[idx + _3878 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4009 + 68] = mem[_4009 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4009 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                        _4292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4292] = 30
                        mem[_4292 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 <= stor7:
                            stor7 += -1 * stor7 / totalSupply * arg1
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4524 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4524 + 68] = mem[idx + _4292 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4524 + 68] = mem[_4524 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4524 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3193 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3193] = 30
                    mem[_3193 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3269 + 68] = mem[idx + _3193 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3269 + 68] = mem[_3269 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3269 + -mem[64] + 100
                    _3435 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3435] = 30
                    mem[_3435 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3577 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3577 + 68] = mem[idx + _3435 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3577 + 68] = mem[_3577 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3577 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3931] = 30
                    mem[_3931 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4103 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4103 + 68] = mem[idx + _3931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4103 + 68] = mem[_4103 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4103 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4404 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4404] = 30
                    mem[_4404 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4642 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4642 + 68] = mem[idx + _4404 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4642 + 68] = mem[_4642 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4642 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2827] = 30
                    mem[_2827 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2860 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2860 + 68] = mem[idx + _2827 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2860 + 68] = mem[_2860 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2860 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2984] = 30
                    mem[_2984 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3039 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3039 + 68] = mem[idx + _2984 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3039 + 68] = mem[_3039 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3039 + -mem[64] + 100
                _2845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2845] = 26
                mem[_2845 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2845 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 200 * arg1 / 100 / 100:
                        _3196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3196] = 30
                        mem[_3196 + 32] = 'SafeMath: subtraction overflow'
                        _3440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3440] = 30
                        mem[_3440 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3940] = 30
                        mem[_3940 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _4109 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4109 + 68] = mem[idx + _3940 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4109 + 68] = mem[_4109 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4109 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4416 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4416] = 30
                        mem[_4416 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4651 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4651 + 68] = mem[idx + _4416 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4651 + 68] = mem[_4651 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4651 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3230] = 30
                    mem[_3230 + 32] = 'SafeMath: subtraction overflow'
                    _3521 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3521] = 30
                    mem[_3521 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                        _3657 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3657 + 68] = mem[idx + _3521 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3657 + 68] = mem[_3657 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3657 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4018] = 30
                    mem[_4018 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4204 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4204 + 68] = mem[idx + _4018 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4204 + 68] = mem[_4204 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4204 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4535] = 30
                    mem[_4535 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4779 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4779 + 68] = mem[idx + _4535 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4779 + 68] = mem[_4779 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4779 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    _3229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3229] = 30
                    mem[_3229 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3317 + 68] = mem[idx + _3229 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3317 + 68] = mem[_3317 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3317 + -mem[64] + 100
                    _3518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3518] = 30
                    mem[_3518 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4017] = 30
                    mem[_4017 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4201 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4201 + 68] = mem[idx + _4017 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4201 + 68] = mem[_4201 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4201 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4532] = 30
                    mem[_4532 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4776 + 68] = mem[idx + _4532 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4776 + 68] = mem[_4776 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4776 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3272] = 30
                mem[_3272 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _3371 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3371 + 68] = mem[idx + _3272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3371 + 68] = mem[_3371 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3371 + -mem[64] + 100
                _3580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3580] = 30
                mem[_3580 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3737 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3737 + 68] = mem[idx + _3580 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3737 + 68] = mem[_3737 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3737 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _4108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4108] = 30
                mem[_4108 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                    _4299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4299 + 68] = mem[idx + _4108 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4299 + 68] = mem[_4299 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4299 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                _4646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4646] = 30
                mem[_4646 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 <= stor7:
                    stor7 += -1 * stor7 / totalSupply * arg1
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4905 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4905 + 68] = mem[idx + _4646 + 32]
                    idx = idx + 32
                    continue 
                mem[_4905 + 68] = mem[_4905 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4905 + -mem[64] + 100
            _2748 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2748] = 26
            mem[_2748 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2881] = 26
                mem[_2881 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 200 * arg1 / 100 / 100:
                        if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 200 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * 200 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * t / s * arg1
                    if t / s * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * t / s * arg1
            else:
                _2882 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2882] = 26
                mem[_2882 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 200 * arg1 / 100 / 100:
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        if 0 > stor7 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > stor7 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    if stor7 / totalSupply * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * stor7 / totalSupply * arg1
    else:
        if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2806] = 26
                    mem[_2806 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2806 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            _3164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3164] = 30
                            mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                            _3304 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3304] = 30
                            mem[_3304 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3798 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3798] = 30
                            mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3920 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3920 + 68] = mem[idx + _3798 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3920 + 68] = mem[_3920 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3920 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4177 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4177] = 30
                            mem[_4177 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if arg1 + totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4382 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4382 + 68] = mem[idx + _4177 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4382 + 68] = mem[_4382 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4382 + -mem[64] + 100
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3177 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3177] = 30
                        mem[_3177 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _3217 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3217 + 68] = mem[idx + _3177 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3217 + 68] = mem[_3217 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3217 + -mem[64] + 100
                        _3358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3358] = 30
                        mem[_3358 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            _3497 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3497 + 68] = mem[idx + _3358 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3497 + 68] = mem[_3497 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3497 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3865] = 30
                        mem[_3865 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3994 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3994 + 68] = mem[idx + _3865 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3994 + 68] = mem[_3994 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3994 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4273] = 30
                        mem[_4273 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4501 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4501 + 68] = mem[idx + _4273 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4501 + 68] = mem[_4501 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4501 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3176] = 30
                        mem[_3176 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7 / totalSupply * arg1:
                            _3214 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3214 + 68] = mem[idx + _3176 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3214 + 68] = mem[_3214 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3214 + -mem[64] + 100
                        _3355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3355] = 30
                        mem[_3355 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3864] = 30
                        mem[_3864 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                            _3991 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3991 + 68] = mem[idx + _3864 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3991 + 68] = mem[_3991 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3991 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                        _4270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4270] = 30
                        mem[_4270 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 <= stor7:
                            stor7 += -1 * stor7 / totalSupply * arg1
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4498 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4498 + 68] = mem[idx + _4270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4498 + 68] = mem[_4498 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4498 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3191 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3191] = 30
                    mem[_3191 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3259 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3259 + 68] = mem[idx + _3191 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3259 + 68] = mem[_3259 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3259 + -mem[64] + 100
                    _3421 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3421] = 30
                    mem[_3421 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        _3565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3565 + 68] = mem[idx + _3421 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3565 + 68] = mem[_3565 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3565 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3919 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3919] = 30
                    mem[_3919 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4082 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4082 + 68] = mem[idx + _3919 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4082 + 68] = mem[_4082 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4082 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4377 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4377] = 30
                    mem[_4377 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4616 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4616 + 68] = mem[idx + _4377 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4616 + 68] = mem[_4616 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4616 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2824 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2824] = 30
                    mem[_2824 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2856 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2856 + 68] = mem[idx + _2824 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2856 + 68] = mem[_2856 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2856 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2977] = 30
                    mem[_2977 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3031 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3031 + 68] = mem[idx + _2977 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3031 + 68] = mem[_3031 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3031 + -mem[64] + 100
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
                    if not 500 * arg1 / 100 / 100:
                        _3192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3192] = 30
                        mem[_3192 + 32] = 'SafeMath: subtraction overflow'
                        _3428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3428] = 30
                        mem[_3428 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3928] = 30
                        mem[_3928 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _4088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4088 + 68] = mem[idx + _3928 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4088 + 68] = mem[_4088 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4088 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4389] = 30
                        mem[_4389 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4625 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4625 + 68] = mem[idx + _4389 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4625 + 68] = mem[_4625 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4625 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3221] = 30
                    mem[_3221 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _3308 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3308 + 68] = mem[idx + _3221 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3308 + 68] = mem[_3308 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3308 + -mem[64] + 100
                    _3504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3504] = 30
                    mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        _3642 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3642 + 68] = mem[idx + _3504 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3642 + 68] = mem[_3642 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3642 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4000] = 30
                    mem[_4000 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4183 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4183 + 68] = mem[idx + _4000 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4183 + 68] = mem[_4183 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4183 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4509 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4509] = 30
                    mem[_4509 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4750 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4750 + 68] = mem[idx + _4509 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4750 + 68] = mem[_4750 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4750 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3220] = 30
                    mem[_3220 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3305 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3305 + 68] = mem[idx + _3220 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3305 + 68] = mem[_3305 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3305 + -mem[64] + 100
                    _3501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3501] = 30
                    mem[_3501 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3999] = 30
                    mem[_3999 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4180 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4180 + 68] = mem[idx + _3999 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4180 + 68] = mem[_4180 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4180 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4506] = 30
                    mem[_4506 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4747 + 68] = mem[idx + _4506 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4747 + 68] = mem[_4747 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4747 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3262] = 30
                mem[_3262 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3361 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3361 + 68] = mem[idx + _3262 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3361 + 68] = mem[_3361 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3361 + -mem[64] + 100
                _3568 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3568] = 30
                mem[_3568 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    _3722 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3722 + 68] = mem[idx + _3568 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3722 + 68] = mem[_3722 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3722 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _4087 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4087] = 30
                mem[_4087 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                    _4277 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4277 + 68] = mem[idx + _4087 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4277 + 68] = mem[_4277 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4277 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                _4620 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4620] = 30
                mem[_4620 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 <= stor7:
                    stor7 += -1 * stor7 / totalSupply * arg1
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4877 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4877 + 68] = mem[idx + _4620 + 32]
                    idx = idx + 32
                    continue 
                mem[_4877 + 68] = mem[_4877 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4877 + -mem[64] + 100
            _2741 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2741] = 26
            mem[_2741 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2874 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2874] = 26
                mem[_2874 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 500 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * t / s * arg1
                    if t / s * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * t / s * arg1
            else:
                _2875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2875] = 26
                mem[_2875 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > stor7 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    if stor7 / totalSupply * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * stor7 / totalSupply * arg1
        else:
            if 200 * arg1 / arg1 != 200:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 200 * arg1 / 100 / 100 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2801 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2801] = 26
                    mem[_2801 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2801 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            if not 200 * arg1 / 100 / 100:
                                _3159 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3159] = 30
                                mem[_3159 + 32] = 'SafeMath: subtraction overflow'
                                _3290 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3290] = 30
                                mem[_3290 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _3779 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3779] = 30
                                mem[_3779 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _3901 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3901 + 68] = mem[idx + _3779 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3901 + 68] = mem[_3901 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3901 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                _4152 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4152] = 30
                                mem[_4152 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor7:
                                    if arg1 + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _4350 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4350 + 68] = mem[idx + _4152 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4350 + 68] = mem[_4350 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4350 + -mem[64] + 100
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3173 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3173] = 30
                            mem[_3173 + 32] = 'SafeMath: subtraction overflow'
                            _3342 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3342] = 30
                            mem[_3342 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                                _3477 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3477 + 68] = mem[idx + _3342 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3477 + 68] = mem[_3477 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3477 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3847 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3847] = 30
                            mem[_3847 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3969 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3969 + 68] = mem[idx + _3847 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3969 + 68] = mem[_3969 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3969 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4245 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4245] = 30
                            mem[_4245 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if arg1 + totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4468 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4468 + 68] = mem[idx + _4245 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4468 + 68] = mem[_4468 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4468 + -mem[64] + 100
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 200 * arg1 / 100 / 100:
                            _3172 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3172] = 30
                            mem[_3172 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                                _3206 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3206 + 68] = mem[idx + _3172 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3206 + 68] = mem[_3206 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3206 + -mem[64] + 100
                            _3339 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3339] = 30
                            mem[_3339 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                                _3474 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3474 + 68] = mem[idx + _3339 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3474 + 68] = mem[_3474 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3474 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3846 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3846] = 30
                            mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3966 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3966 + 68] = mem[idx + _3846 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3966 + 68] = mem[_3966 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3966 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4242 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4242] = 30
                            mem[_4242 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if arg1 + totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4465 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4465 + 68] = mem[idx + _4242 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4465 + 68] = mem[_4465 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4465 + -mem[64] + 100
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3185 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3185] = 30
                        mem[_3185 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _3251 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3251 + 68] = mem[idx + _3185 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3251 + 68] = mem[_3251 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3251 + -mem[64] + 100
                        _3399 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3399] = 30
                        mem[_3399 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            _3544 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3544 + 68] = mem[idx + _3399 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3544 + 68] = mem[_3544 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3544 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3900 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3900] = 30
                        mem[_3900 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _4057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4057 + 68] = mem[idx + _3900 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4057 + 68] = mem[_4057 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4057 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4345] = 30
                        mem[_4345 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4581 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4581 + 68] = mem[idx + _4345 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4581 + 68] = mem[_4581 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4581 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if not 200 * arg1 / 100 / 100:
                            _3171 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3171] = 30
                            mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor7 / totalSupply * arg1:
                                _3203 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3203 + 68] = mem[idx + _3171 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3203 + 68] = mem[_3203 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3203 + -mem[64] + 100
                            _3335 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3335] = 30
                            mem[_3335 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3843 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3843] = 30
                            mem[_3843 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                                _3963 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3963 + 68] = mem[idx + _3843 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3963 + 68] = mem[_3963 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3963 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                            _4237 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4237] = 30
                            mem[_4237 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * arg1 <= stor7:
                                stor7 += -1 * stor7 / totalSupply * arg1
                                if arg1 + totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4461 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4461 + 68] = mem[idx + _4237 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4461 + 68] = mem[_4461 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4461 + -mem[64] + 100
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3184 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3184] = 30
                        mem[_3184 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7 / totalSupply * arg1:
                            _3248 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3248 + 68] = mem[idx + _3184 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3248 + 68] = mem[_3248 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3248 + -mem[64] + 100
                        _3395 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3395] = 30
                        mem[_3395 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                            _3541 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3541 + 68] = mem[idx + _3395 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3541 + 68] = mem[_3541 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3541 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3899 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3899] = 30
                        mem[_3899 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                            _4054 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4054 + 68] = mem[idx + _3899 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4054 + 68] = mem[_4054 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4054 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                        _4341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4341] = 30
                        mem[_4341 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 <= stor7:
                            stor7 += -1 * stor7 / totalSupply * arg1
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4578 + 68] = mem[idx + _4341 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4578 + 68] = mem[_4578 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4578 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3183] = 30
                        mem[_3183 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                            _3245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3245 + 68] = mem[idx + _3183 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3245 + 68] = mem[_3245 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3245 + -mem[64] + 100
                        _3392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3392] = 30
                        mem[_3392 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                            _3538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3538 + 68] = mem[idx + _3392 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3538 + 68] = mem[_3538 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3538 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3898] = 30
                        mem[_3898 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                            _4051 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4051 + 68] = mem[idx + _3898 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4051 + 68] = mem[_4051 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4051 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                        _4338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4338] = 30
                        mem[_4338 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 <= stor7:
                            stor7 += -1 * stor7 / totalSupply * arg1
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4575 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4575 + 68] = mem[idx + _4338 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4575 + 68] = mem[_4575 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4575 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3202] = 30
                    mem[_3202 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3285 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3285 + 68] = mem[idx + _3202 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3285 + 68] = mem[_3285 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3285 + -mem[64] + 100
                    _3468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3468] = 30
                    mem[_3468 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        _3609 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3609 + 68] = mem[idx + _3468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3609 + 68] = mem[_3609 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3609 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3962] = 30
                    mem[_3962 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4143 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4143 + 68] = mem[idx + _3962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4143 + 68] = mem[_4143 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4143 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4456 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4456] = 30
                    mem[_4456 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4701 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4701 + 68] = mem[idx + _4456 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4701 + 68] = mem[_4701 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4701 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2821] = 30
                    mem[_2821 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2852 + 68] = mem[idx + _2821 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2852 + 68] = mem[_2852 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2852 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2970] = 30
                    mem[_2970 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3023 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3023 + 68] = mem[idx + _2970 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3023 + 68] = mem[_3023 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3023 + -mem[64] + 100
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
                    if not 500 * arg1 / 100 / 100:
                        if not 200 * arg1 / 100 / 100:
                            _3190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3190] = 30
                            mem[_3190 + 32] = 'SafeMath: subtraction overflow'
                            _3408 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3408] = 30
                            mem[_3408 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3916 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3916] = 30
                            mem[_3916 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _4067 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4067 + 68] = mem[idx + _3916 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4067 + 68] = mem[_4067 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4067 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4362 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4362] = 30
                            mem[_4362 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if arg1 + totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4599 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4599 + 68] = mem[idx + _4362 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4599 + 68] = mem[_4599 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4599 + -mem[64] + 100
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3213 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3213] = 30
                        mem[_3213 + 32] = 'SafeMath: subtraction overflow'
                        _3489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3489] = 30
                        mem[_3489 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                            _3623 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3623 + 68] = mem[idx + _3489 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3623 + 68] = mem[_3623 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3623 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3982 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3982] = 30
                        mem[_3982 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _4162 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4162 + 68] = mem[idx + _3982 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4162 + 68] = mem[_4162 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4162 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4483] = 30
                        mem[_4483 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4721 + 68] = mem[idx + _4483 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4721 + 68] = mem[_4721 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4721 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 200 * arg1 / 100 / 100:
                        _3212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3212] = 30
                        mem[_3212 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _3295 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3295 + 68] = mem[idx + _3212 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3295 + 68] = mem[_3295 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3295 + -mem[64] + 100
                        _3486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3486] = 30
                        mem[_3486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            _3620 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3620 + 68] = mem[idx + _3486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3620 + 68] = mem[_3620 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3620 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3981 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3981] = 30
                        mem[_3981 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _4159 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4159 + 68] = mem[idx + _3981 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4159 + 68] = mem[_4159 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4159 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4480 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4480] = 30
                        mem[_4480 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4718 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4718 + 68] = mem[idx + _4480 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4718 + 68] = mem[_4718 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4718 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3256 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3256] = 30
                    mem[_3256 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _3349 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3349 + 68] = mem[idx + _3256 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3349 + 68] = mem[_3349 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3349 + -mem[64] + 100
                    _3555 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3555] = 30
                    mem[_3555 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        _3705 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3705 + 68] = mem[idx + _3555 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3705 + 68] = mem[_3705 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3705 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4066 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4066] = 30
                    mem[_4066 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _4255 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4255 + 68] = mem[idx + _4066 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4255 + 68] = mem[_4255 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4255 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4594] = 30
                    mem[_4594 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4849 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4849 + 68] = mem[idx + _4594 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4849 + 68] = mem[_4849 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4849 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if not 200 * arg1 / 100 / 100:
                        _3211 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3211] = 30
                        mem[_3211 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7 / totalSupply * arg1:
                            _3292 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3292 + 68] = mem[idx + _3211 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3292 + 68] = mem[_3292 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3292 + -mem[64] + 100
                        _3482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3482] = 30
                        mem[_3482 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3978 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3978] = 30
                        mem[_3978 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                            _4156 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4156 + 68] = mem[idx + _3978 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4156 + 68] = mem[_4156 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4156 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                        _4475 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4475] = 30
                        mem[_4475 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * arg1 <= stor7:
                            stor7 += -1 * stor7 / totalSupply * arg1
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4714 + 68] = mem[idx + _4475 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4714 + 68] = mem[_4714 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4714 + -mem[64] + 100
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3255] = 30
                    mem[_3255 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3346 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3346 + 68] = mem[idx + _3255 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3346 + 68] = mem[_3346 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3346 + -mem[64] + 100
                    _3551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3551] = 30
                    mem[_3551 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3702 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3702 + 68] = mem[idx + _3551 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3702 + 68] = mem[_3702 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3702 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4065] = 30
                    mem[_4065 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4252 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4252 + 68] = mem[idx + _4065 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4252 + 68] = mem[_4252 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4252 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4590 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4590] = 30
                    mem[_4590 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4846 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4846 + 68] = mem[idx + _4590 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4846 + 68] = mem[_4846 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4846 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 200 * arg1 / 100 / 100:
                    _3254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3254] = 30
                    mem[_3254 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3343 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3343 + 68] = mem[idx + _3254 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3343 + 68] = mem[_3343 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3343 + -mem[64] + 100
                    _3548 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3548] = 30
                    mem[_3548 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        _3699 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3699 + 68] = mem[idx + _3548 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3699 + 68] = mem[_3699 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3699 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4064 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4064] = 30
                    mem[_4064 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        _4249 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4249 + 68] = mem[idx + _4064 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4249 + 68] = mem[_4249 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4249 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    _4587 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4587] = 30
                    mem[_4587 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 <= stor7:
                        stor7 += -1 * stor7 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4843 + 68] = mem[idx + _4587 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4843 + 68] = mem[_4843 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4843 + -mem[64] + 100
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3291] = 30
                mem[_3291 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3403 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3403 + 68] = mem[idx + _3291 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3403 + 68] = mem[_3403 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3403 + -mem[64] + 100
                _3614 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3614] = 30
                mem[_3614 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 200 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    _3780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3780 + 68] = mem[idx + _3614 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3780 + 68] = mem[_3780 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3780 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _4155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4155] = 30
                mem[_4155 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                    _4353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4353 + 68] = mem[idx + _4155 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4353 + 68] = mem[_4353 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4353 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                _4709 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4709] = 30
                mem[_4709 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * arg1 <= stor7:
                    stor7 += -1 * stor7 / totalSupply * arg1
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4969 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4969 + 68] = mem[idx + _4709 + 32]
                    idx = idx + 32
                    continue 
                mem[_4969 + 68] = mem[_4969 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4969 + -mem[64] + 100
            _2734 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2734] = 26
            mem[_2734 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2867 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2867] = 26
                mem[_2867 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        if 200 * arg1 / 100 / 100:
                            if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * 200 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 200 * arg1 / 100 / 100:
                            if t / s * 500 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * 500 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 200 * arg1 / 100 / 100 > -1 * t / s * 500 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if not 200 * arg1 / 100 / 100:
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 200 * arg1 / 100 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 200 * arg1 / 100 / 100:
                            if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 200 * arg1 / 100 / 100 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * t / s * arg1
                    if t / s * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * t / s * arg1
            else:
                _2868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2868] = 26
                mem[_2868 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        if 200 * arg1 / 100 / 100:
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 200 * arg1 / 100 / 100:
                            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if not 200 * arg1 / 100 / 100:
                            if 0 > stor7 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > stor7 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 200 * arg1 / 100 / 100:
                            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 / 200 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * 200 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * arg1 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * stor7 / totalSupply * arg1
                    if stor7 / totalSupply * arg1 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * stor7 / totalSupply * arg1
    if arg1 + totalFees < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
